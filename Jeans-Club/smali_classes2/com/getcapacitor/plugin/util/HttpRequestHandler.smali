.class public Lcom/getcapacitor/plugin/util/HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;,
        Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;,
        Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResponse(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;)Lcom/getcapacitor/JSObject;
    .locals 1
    .param p0, "connection"    # Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->DEFAULT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    invoke-static {p0, v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->buildResponse(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;)Lcom/getcapacitor/JSObject;

    move-result-object v0

    return-object v0
.end method

.method public static buildResponse(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;)Lcom/getcapacitor/JSObject;
    .locals 5
    .param p0, "connection"    # Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    .param p1, "responseType"    # Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getResponseCode()I

    move-result v0

    .line 218
    .local v0, "statusCode":I
    new-instance v1, Lcom/getcapacitor/JSObject;

    invoke-direct {v1}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 219
    .local v1, "output":Lcom/getcapacitor/JSObject;
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;I)Lcom/getcapacitor/JSObject;

    .line 220
    const-string v2, "headers"

    invoke-static {p0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->buildResponseHeaders(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;)Lcom/getcapacitor/JSObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 221
    const-string v2, "url"

    invoke-virtual {p0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 222
    const-string v2, "data"

    invoke-static {p0, p1}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readData(Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 224
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 225
    .local v2, "errorStream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 226
    const-string v3, "error"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Z)Lcom/getcapacitor/JSObject;

    .line 229
    :cond_0
    return-object v1
.end method

.method public static buildResponseHeaders(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;)Lcom/getcapacitor/JSObject;
    .locals 5
    .param p0, "connection"    # Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 292
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 294
    .local v0, "output":Lcom/getcapacitor/JSObject;
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 295
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const-string v4, ", "

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "valuesString":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 297
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "valuesString":Ljava/lang/String;
    goto :goto_0

    .line 299
    :cond_0
    return-object v0
.end method

.method public static isDomainExcludedFromSSL(Lcom/getcapacitor/Bridge;Ljava/net/URL;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "bridge"    # Lcom/getcapacitor/Bridge;
    .param p1, "url"    # Ljava/net/URL;

    .line 440
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "io.ionic.sslpinning.SSLPinning"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 441
    .local v1, "sslPinningImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "isDomainExcluded"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/getcapacitor/Bridge;

    aput-object v5, v4, v0

    const-class v5, Ljava/net/URL;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 442
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object p1, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 443
    .end local v1    # "sslPinningImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 444
    .local v1, "ignored":Ljava/lang/Exception;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static varargs isOneOf(Ljava/lang/String;[Lcom/getcapacitor/plugin/util/MimeType;)Z
    .locals 5
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "mimeTypes"    # [Lcom/getcapacitor/plugin/util/MimeType;

    .line 276
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 277
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 278
    .local v3, "mimeType":Lcom/getcapacitor/plugin/util/MimeType;
    invoke-virtual {v3}, Lcom/getcapacitor/plugin/util/MimeType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    const/4 v0, 0x1

    return v0

    .line 277
    .end local v3    # "mimeType":Lcom/getcapacitor/plugin/util/MimeType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_1
    return v0
.end method

.method public static parseJSON(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 309
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "null"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object v1

    .line 313
    :cond_0
    const-string v1, "true"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 314
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 315
    :cond_1
    const-string v1, "false"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 317
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 318
    const-string v1, ""

    return-object v1

    .line 319
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "^\".*\"$"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 322
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^-?\\d+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 324
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^-?\\d+(\\.\\d+)?$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 328
    :cond_6
    :try_start_1
    new-instance v1, Lcom/getcapacitor/JSObject;

    invoke-direct {v1, p0}, Lcom/getcapacitor/JSObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v2, Lcom/getcapacitor/JSArray;

    invoke-direct {v2, p0}, Lcom/getcapacitor/JSArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    .line 333
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 334
    .restart local v1    # "e":Lorg/json/JSONException;
    return-object p0
.end method

.method public static readData(Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;)Ljava/lang/Object;
    .locals 5
    .param p0, "connection"    # Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;
    .param p1, "responseType"    # Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 241
    invoke-interface {p0}, Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 242
    .local v0, "errorStream":Ljava/io/InputStream;
    const-string v1, "Content-Type"

    invoke-interface {p0, v1}, Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 245
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/getcapacitor/plugin/util/MimeType;

    const/4 v3, 0x0

    sget-object v4, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_VND_API_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->isOneOf(Ljava/lang/String;[Lcom/getcapacitor/plugin/util/MimeType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-static {v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->parseJSON(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 248
    :cond_0
    invoke-static {v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 250
    :cond_1
    if-eqz v1, :cond_2

    sget-object v2, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    invoke-virtual {v2}, Lcom/getcapacitor/plugin/util/MimeType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    invoke-interface {p0}, Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->parseJSON(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 254
    :cond_2
    invoke-interface {p0}, Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 255
    .local v2, "stream":Ljava/io/InputStream;
    sget-object v3, Lcom/getcapacitor/plugin/util/HttpRequestHandler$1;->$SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType:[I

    invoke-virtual {p1}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 264
    invoke-static {v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 260
    :pswitch_0
    invoke-static {v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->parseJSON(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 258
    :pswitch_1
    invoke-static {v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsBase64(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readStreamAsBase64(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 346
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    .line 348
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "readBytes":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_0

    .line 349
    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 352
    .local v2, "result":[B
    array-length v4, v2

    invoke-static {v2, v5, v4, v5}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 352
    return-object v4

    .line 345
    .end local v1    # "buffer":[B
    .end local v2    # "result":[B
    .end local v3    # "readBytes":I
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public static readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 364
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 369
    if-eqz v2, :cond_0

    .line 370
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 373
    return-object v3

    .line 363
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public static request(Lcom/getcapacitor/PluginCall;Ljava/lang/String;Lcom/getcapacitor/Bridge;)Lcom/getcapacitor/JSObject;
    .locals 17
    .param p0, "call"    # Lcom/getcapacitor/PluginCall;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "bridge"    # Lcom/getcapacitor/Bridge;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "url"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "urlString":Ljava/lang/String;
    new-instance v4, Lcom/getcapacitor/JSObject;

    invoke-direct {v4}, Lcom/getcapacitor/JSObject;-><init>()V

    const-string v5, "headers"

    invoke-virtual {v0, v5, v4}, Lcom/getcapacitor/PluginCall;->getObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;

    move-result-object v4

    .line 389
    .local v4, "headers":Lcom/getcapacitor/JSObject;
    new-instance v5, Lcom/getcapacitor/JSObject;

    invoke-direct {v5}, Lcom/getcapacitor/JSObject;-><init>()V

    const-string v6, "params"

    invoke-virtual {v0, v6, v5}, Lcom/getcapacitor/PluginCall;->getObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;

    move-result-object v5

    .line 390
    .local v5, "params":Lcom/getcapacitor/JSObject;
    const-string v6, "connectTimeout"

    invoke-virtual {v0, v6}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 391
    .local v6, "connectTimeout":Ljava/lang/Integer;
    const-string v7, "readTimeout"

    invoke-virtual {v0, v7}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 392
    .local v7, "readTimeout":Ljava/lang/Integer;
    const-string v8, "disableRedirects"

    invoke-virtual {v0, v8}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 393
    .local v8, "disableRedirects":Ljava/lang/Boolean;
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "shouldEncodeUrlParams"

    invoke-virtual {v0, v11, v10}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    .line 394
    .local v10, "shouldEncode":Ljava/lang/Boolean;
    const-string v11, "responseType"

    invoke-virtual {v0, v11}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->parse(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    move-result-object v11

    .line 395
    .local v11, "responseType":Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;
    const-string v12, "dataType"

    invoke-virtual {v0, v12}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 397
    .local v12, "dataType":Ljava/lang/String;
    if-eqz v1, :cond_0

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_0
    const-string v13, "method"

    const-string v14, "GET"

    invoke-virtual {v0, v13, v14}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 399
    .local v13, "method":Ljava/lang/String;
    :goto_0
    const-string v14, "DELETE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "PATCH"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "POST"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "PUT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v14, 0x1

    .line 401
    .local v14, "isHttpMutate":Z
    :goto_2
    new-instance v15, Ljava/net/URL;

    invoke-direct {v15, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 402
    .local v15, "url":Ljava/net/URL;
    new-instance v9, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    invoke-direct {v9}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;-><init>()V

    .line 403
    invoke-virtual {v9, v15}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setUrl(Ljava/net/URL;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v9

    .line 404
    invoke-virtual {v9, v13}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setMethod(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v9

    .line 405
    invoke-virtual {v9, v4}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setHeaders(Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v9

    .line 406
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v9, v5, v1}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setUrlParams(Lcom/getcapacitor/JSObject;Z)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v1

    .line 407
    invoke-virtual {v1, v6}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setConnectTimeout(Ljava/lang/Integer;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v1

    .line 408
    invoke-virtual {v1, v7}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setReadTimeout(Ljava/lang/Integer;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v1

    .line 409
    invoke-virtual {v1, v8}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setDisableRedirects(Ljava/lang/Boolean;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->openConnection()Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v1

    .line 412
    .local v1, "connectionBuilder":Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    invoke-virtual {v1}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->build()Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    move-result-object v9

    .line 414
    .local v9, "connection":Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    if-eqz v2, :cond_3

    invoke-static {v2, v15}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->isDomainExcludedFromSSL(Lcom/getcapacitor/Bridge;Ljava/net/URL;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_3

    .line 415
    invoke-virtual {v9, v2}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setSSLSocketFactory(Lcom/getcapacitor/Bridge;)V

    .line 419
    :cond_3
    if-eqz v14, :cond_4

    .line 420
    move-object/from16 v16, v1

    .end local v1    # "connectionBuilder":Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .local v16, "connectionBuilder":Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    new-instance v1, Lcom/getcapacitor/JSValue;

    const-string v2, "data"

    invoke-direct {v1, v0, v2}, Lcom/getcapacitor/JSValue;-><init>(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 421
    .local v1, "data":Lcom/getcapacitor/JSValue;
    invoke-virtual {v1}, Lcom/getcapacitor/JSValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 422
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setDoOutput(Z)V

    .line 423
    invoke-virtual {v9, v0, v1, v12}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setRequestBody(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSValue;Ljava/lang/String;)V

    goto :goto_3

    .line 419
    .end local v16    # "connectionBuilder":Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .local v1, "connectionBuilder":Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    :cond_4
    move-object/from16 v16, v1

    .line 427
    .end local v1    # "connectionBuilder":Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .restart local v16    # "connectionBuilder":Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    move-result-object v1

    const-string v2, "activeCapacitorHttpUrlConnection"

    invoke-virtual {v1, v2, v9}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 428
    invoke-virtual {v9}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connect()V

    .line 430
    invoke-static {v9, v11}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->buildResponse(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;)Lcom/getcapacitor/JSObject;

    move-result-object v1

    .line 432
    .local v1, "response":Lcom/getcapacitor/JSObject;
    invoke-virtual {v9}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->disconnect()V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/getcapacitor/JSObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 435
    return-object v1
.end method
