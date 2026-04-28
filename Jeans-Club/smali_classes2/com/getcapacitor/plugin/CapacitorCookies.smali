.class public Lcom/getcapacitor/plugin/CapacitorCookies;
.super Lcom/getcapacitor/Plugin;
.source "CapacitorCookies.java"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
.end annotation


# instance fields
.field cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    return-void
.end method

.method static synthetic lambda$getCookies$0(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .locals 13
    .param p0, "call"    # Lcom/getcapacitor/PluginCall;
    .param p1, "value"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "cookies":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "cookieArray":[Ljava/lang/String;
    new-instance v3, Lcom/getcapacitor/JSObject;

    invoke-direct {v3}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 57
    .local v3, "cookieMap":Lcom/getcapacitor/JSObject;
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v2, v6

    .line 58
    .local v7, "cookie":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 59
    const-string v8, "="

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "keyValue":[Ljava/lang/String;
    array-length v10, v8

    if-ne v10, v9, :cond_0

    .line 62
    aget-object v9, v8, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, "key":Ljava/lang/String;
    aget-object v10, v8, v1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "val":Ljava/lang/String;
    :try_start_0
    aget-object v11, v8, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 66
    aget-object v11, v8, v1

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v11

    goto :goto_1

    .line 67
    :catch_0
    move-exception v11

    :goto_1
    nop

    .line 69
    invoke-virtual {v3, v9, v10}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 57
    .end local v7    # "cookie":Ljava/lang/String;
    .end local v8    # "keyValue":[Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0, v3}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 75
    return-void
.end method


# virtual methods
.method public clearAllCookies(Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    invoke-virtual {v0}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->removeAllCookies()V

    .line 120
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 121
    return-void
.end method

.method public clearCookies(Lcom/getcapacitor/PluginCall;)V
    .locals 8
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 109
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    invoke-virtual {v1, v0}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->getCookies(Ljava/lang/String;)[Ljava/net/HttpCookie;

    move-result-object v1

    .line 111
    .local v1, "cookies":[Ljava/net/HttpCookie;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 112
    .local v4, "cookie":Ljava/net/HttpCookie;
    iget-object v5, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=; Expires=Wed, 31 Dec 2000 23:59:59 GMT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v4    # "cookie":Ljava/net/HttpCookie;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 115
    return-void
.end method

.method public deleteCookie(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 98
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 100
    const-string v1, "Must provide key"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 102
    :cond_0
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=; Expires=Wed, 31 Dec 2000 23:59:59 GMT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 105
    return-void
.end method

.method public getCookies(Lcom/getcapacitor/PluginCall;)V
    .locals 3
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->bridge:Lcom/getcapacitor/Bridge;

    new-instance v1, Lcom/getcapacitor/plugin/CapacitorCookies$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/getcapacitor/plugin/CapacitorCookies$$ExternalSyntheticLambda0;-><init>(Lcom/getcapacitor/PluginCall;)V

    const-string v2, "document.cookie"

    invoke-virtual {v0, v2, v1}, Lcom/getcapacitor/Bridge;->eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 77
    return-void
.end method

.method protected handleOnDestroy()V
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->handleOnDestroy()V

    .line 33
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    invoke-virtual {v0}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->removeSessionCookies()V

    .line 34
    return-void
.end method

.method public isEnabled()Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/CapacitorCookies;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    move-result-object v0

    const-string v1, "CapacitorCookies"

    invoke-virtual {v0, v1}, Lcom/getcapacitor/CapConfig;->getPluginConfiguration(Ljava/lang/String;)Lcom/getcapacitor/PluginConfig;

    move-result-object v0

    .line 39
    .local v0, "pluginConfig":Lcom/getcapacitor/PluginConfig;
    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/PluginConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public load()V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "CapacitorCookiesAndroidInterface"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/getcapacitor/plugin/CapacitorCookieManager;

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    iget-object v2, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->bridge:Lcom/getcapacitor/Bridge;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/CapacitorCookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;Lcom/getcapacitor/Bridge;)V

    iput-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    .line 25
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->removeSessionCookies()V

    .line 26
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 27
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->load()V

    .line 28
    return-void
.end method

.method public setCookie(Lcom/getcapacitor/PluginCall;)V
    .locals 11
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 81
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 83
    const-string v1, "Must provide key"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 85
    :cond_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 87
    const-string v1, "Must provide value"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 89
    :cond_1
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "url":Ljava/lang/String;
    const-string v1, "expires"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "expires":Ljava/lang/String;
    const-string v1, "path"

    const-string v2, "/"

    invoke-virtual {p1, v1, v2}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 92
    .local v10, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    move-object v2, v8

    move-object v3, v0

    move-object v4, v7

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 94
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    invoke-virtual {v0, p1, p2}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
