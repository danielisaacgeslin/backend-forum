services:
    -GET
    - ping -> IN: N/A
    - getArticle -> IN: article_id(int)
    - getArticleList -> IN: N/A
    - getArticleTagList -> IN: article_id(int)
    - getComments -> IN: article_id(int)
    - getTags -> IN: N/A

    -POST
    - saveArticle -> IN: title(string), description(string), body(string)
    - addTag -> IN: article_id(int), tag_id(int)
    - saveComment -> IN: comment(string), article_id(int)
    - saveTag -> IN: tag(string)