.class public Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/plugin/util/HttpRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpURLConnectionBuilder"
.end annotation


# instance fields
.field public connectTimeout:Ljava/lang/Integer;

.field public connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

.field public disableRedirects:Ljava/lang/Boolean;

.field public headers:Lcom/getcapacitor/JSObject;

.field public method:Ljava/lang/String;

.field public readTimeout:Ljava/lang/Integer;

.field public url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addUrlParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "shouldEncode"    # Z

    .line 179
    const-string v0, "UTF-8"

    if-eqz p3, :cond_0

    .line 181
    :try_start_0
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 182
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 187
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    return-void
.end method


# virtual methods
.method public build()Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    return-object v0
.end method

.method public openConnection()Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;-><init>(Ljava/net/HttpURLConnection;)V

    iput-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setAllowUserInteraction(Z)V

    .line 110
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connectTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setConnectTimeout(I)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->readTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setReadTimeout(I)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->disableRedirects:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setDisableRedirects(Z)V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->headers:Lcom/getcapacitor/JSObject;

    invoke-virtual {v0, v1}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setRequestHeaders(Lcom/getcapacitor/JSObject;)V

    .line 117
    return-object p0
.end method

.method public setConnectTimeout(Ljava/lang/Integer;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .locals 0
    .param p1, "connectTimeout"    # Ljava/lang/Integer;

    .line 77
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connectTimeout:Ljava/lang/Integer;

    .line 78
    return-object p0
.end method

.method public setDisableRedirects(Ljava/lang/Boolean;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .locals 0
    .param p1, "disableRedirects"    # Ljava/lang/Boolean;

    .line 87
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->disableRedirects:Ljava/lang/Boolean;

    .line 88
    return-object p0
.end method

.method public setHeaders(Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .locals 0
    .param p1, "headers"    # Lcom/getcapacitor/JSObject;

    .line 92
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->headers:Lcom/getcapacitor/JSObject;

    .line 93
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->method:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public setReadTimeout(Ljava/lang/Integer;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .locals 0
    .param p1, "readTimeout"    # Ljava/lang/Integer;

    .line 82
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->readTimeout:Ljava/lang/Integer;

    .line 83
    return-object p0
.end method

.method public setUrl(Ljava/net/URL;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .line 102
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->url:Ljava/net/URL;

    .line 103
    return-object p0
.end method

.method public setUrlParams(Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .locals 1
    .param p1, "params"    # Lcom/getcapacitor/JSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setUrlParams(Lcom/getcapacitor/JSObject;Z)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setUrlParams(Lcom/getcapacitor/JSObject;Z)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .locals 11
    .param p1, "params"    # Lcom/getcapacitor/JSObject;
    .param p2, "shouldEncode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 126
    const-string v0, "&"

    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "initialQuery":Ljava/lang/String;
    const-string v2, ""

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 129
    .local v3, "initialQueryBuilderStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/getcapacitor/JSObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 131
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 132
    return-object p0

    .line 135
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .local v5, "urlQueryBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 139
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 143
    .local v6, "key":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v7, "value":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v6}, Lcom/getcapacitor/JSObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 145
    .local v8, "arr":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 146
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v6, v10, p2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->addUrlParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v9, v10, :cond_2

    .line 148
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 151
    .end local v9    # "x":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 152
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    nop

    .end local v7    # "value":Ljava/lang/StringBuilder;
    .end local v8    # "arr":Lorg/json/JSONArray;
    goto :goto_3

    .line 155
    :catch_0
    move-exception v7

    .line 156
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 157
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_5
    invoke-virtual {p1, v6}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8, p2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->addUrlParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_3
    goto :goto_1

    .line 163
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "urlQuery":Ljava/lang/String;
    iget-object v6, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v6

    .line 166
    .local v6, "uri":Ljava/net/URI;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {v6}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 169
    invoke-virtual {v6}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 170
    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_7
    move-object v8, v2

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 172
    invoke-virtual {v6}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "unEncodedUrlString":Ljava/lang/String;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->url:Ljava/net/URL;

    .line 175
    return-object p0
.end method
