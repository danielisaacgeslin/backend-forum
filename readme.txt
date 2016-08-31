example: <url>?route=getArticle&article_id=1

routes (always as GET parameter "route"):
    - GET
    - ping -> N/A
    - getArticle -> article_id(int)
    - getArticleList -> N/A
    - getArticleTagList -> article_id(int)
    - getComments -> article_id(int)
    - getTags -> N/A

    - POST
    - saveArticle -> title(string), description(string), body(string)
    - addTag -> article_id(int), tag_id(int)
    - saveComment -> comment(string), article_id(int)
    - saveTag -> tag(string)