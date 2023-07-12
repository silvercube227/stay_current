import requests
from datetime import datetime, timedelta
from flask import Flask, request, jsonify
from transformers import pipeline, AutoTokenizer, AutoModelForSeq2SeqLM
import nltk
from nltk import word_tokenize, pos_tag, WordNetLemmatizer
from nltk.tokenize import sent_tokenize

app = Flask(__name__)

@app.route('/get_summaries', methods=['GET'])
def get_summaries():
    api_key = 'c56b0bc2ce864962a1be20575552211e'
    user_tags = request.args.get('tags')  # Get tags from query parameters
    today = datetime.today()
    to_date = datetime.now().strftime('%Y-%m-%d')
    from_date = (datetime.now() - timedelta(days=1)).strftime('%Y-%m-%d')
    article_limit = 1
    articles = get_news_articles(api_key, user_tags, from_date, to_date, article_limit)
    summaries = summarize_articles(articles)

    return jsonify(summaries)

def get_news_articles(api_key, tags, from_date, to_date, article_limit):
    endpoint = 'https://newsapi.org/v2/everything'
    params = {
        'q': tags,
        'apiKey': api_key,
        'from' : from_date,
        'to' : to_date,
        'pageSize' : article_limit,
        'sortBy' : 'relevancy'
    }
    response = requests.get(endpoint, params=params)
    data = response.json()

    if response.status_code == 200:
        articles = data['articles']
        relevant_articles = []

        for article in articles:
            title = article['title']
            url = article['url']
            content = article['content']

            # You can perform additional filtering or processing here based on your requirements

            relevant_articles.append({'title': title, 'url': url, 'content': content})

        return relevant_articles
    else:
        print('Failed to fetch news articles.')
        return []

def summarize_articles(articles):
    tokenizer = AutoTokenizer.from_pretrained("t5-base")
    model = AutoModelForSeq2SeqLM.from_pretrained("t5-base")
    summarize = pipeline('summarization', model=model, tokenizer=tokenizer)
    lemmatizer = WordNetLemmatizer()

    for article in articles:
        content = article['content']
        summary = summarize(content, max_length=500, min_length=100, do_sample=False)
        summarized_text = summary[0]['summary_text']

        # Perform grammar checking on the summarized text
        sentences = sent_tokenize(summarized_text)
        corrected_sentences = []
        for sentence in sentences:
            words = word_tokenize(sentence)
            tagged_words = pos_tag(words)
            corrected_words = []
            for word, tag in tagged_words:
                # Apply grammar correction based on the part-of-speech tag
                # You can customize this part based on your requirements
                if tag.startswith('VB') and word.lower() not in ['is', 'are', 'was', 'were']:
                    corrected_words.append(lemmatizer.lemmatize(word, 'v'))
                else:
                    corrected_words.append(word)
            corrected_sentence = ' '.join(corrected_words)
            corrected_sentences.append(corrected_sentence)

        # Join the corrected sentences back to form the final summary
        article['summary'] = ' '.join(corrected_sentences)

    return articles

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5001)
