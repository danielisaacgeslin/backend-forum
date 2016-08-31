services:
    - ping | GET | IN: N/A

    - getArticle | GET | IN: article_id(int)
    - saveArticle | POST | IN: title(string), description(string), body(string)
    - getArticleList | GET | IN: N/A
    - addTag | POST | IN: article_id(int), tag_id(int)
    - getArticleTagList | GET | IN: article_id(int)

    - saveComment | POST | IN: comment(string), article_id(int)
    - getComments | GET | IN: article_id(int)
    
    - saveTag | POST | IN: tag(string)
    - getTags | GET | IN: N/A