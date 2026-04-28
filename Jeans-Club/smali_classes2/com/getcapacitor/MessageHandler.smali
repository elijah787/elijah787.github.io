.class public Lcom/getcapacitor/MessageHandler;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# instance fields
.field private bridge:Lcom/getcapacitor/Bridge;

.field private cordovaPluginManager:Lorg/apache/cordova/PluginManager;

.field private javaScriptReplyProxy:Landroidx/webkit/JavaScriptReplyProxy;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$NhJ0d2egplsDIA6X_OJM4sa5L1w(Lcom/getcapacitor/MessageHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/getcapacitor/MessageHandler;->lambda$callCordovaPluginMethod$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b6hmE4Rac4043AR046V2PyojtWU(Lcom/getcapacitor/MessageHandler;Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/getcapacitor/MessageHandler;->lambda$new$0(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V

    return-void
.end method

.method public constructor <init>(Lcom/getcapacitor/Bridge;Landroid/webkit/WebView;Lorg/apache/cordova/PluginManager;)V
    .locals 3
    .param p1, "bridge"    # Lcom/getcapacitor/Bridge;
    .param p2, "webView"    # Landroid/webkit/WebView;
    .param p3, "cordovaPluginManager"    # Lorg/apache/cordova/PluginManager;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    .line 23
    iput-object p2, p0, Lcom/getcapacitor/MessageHandler;->webView:Landroid/webkit/WebView;

    .line 24
    iput-object p3, p0, Lcom/getcapacitor/MessageHandler;->cordovaPluginManager:Lorg/apache/cordova/PluginManager;

    .line 26
    const-string v0, "WEB_MESSAGE_LISTENER"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "androidBridge"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->isUsingLegacyBridge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/getcapacitor/MessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/getcapacitor/MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/getcapacitor/MessageHandler;)V

    .line 36
    .local v0, "capListener":Landroidx/webkit/WebViewCompat$WebMessageListener;
    :try_start_0
    invoke-virtual {p1}, Lcom/getcapacitor/Bridge;->getAllowedOriginRules()Ljava/util/Set;

    move-result-object v2

    invoke-static {p2, v1, v2, v0}, Landroidx/webkit/WebViewCompat;->addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {p2, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .end local v0    # "capListener":Landroidx/webkit/WebViewCompat$WebMessageListener;
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p2, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    :goto_1
    return-void
.end method

.method private callCordovaPluginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "actionArgs"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    new-instance v7, Lcom/getcapacitor/MessageHandler$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/getcapacitor/MessageHandler$$ExternalSyntheticLambda2;-><init>(Lcom/getcapacitor/MessageHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/getcapacitor/Bridge;->execute(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method private callPluginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/JSObject;)V
    .locals 7
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "methodData"    # Lcom/getcapacitor/JSObject;

    .line 148
    new-instance v6, Lcom/getcapacitor/PluginCall;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/getcapacitor/PluginCall;-><init>(Lcom/getcapacitor/MessageHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/JSObject;)V

    .line 149
    .local v0, "call":Lcom/getcapacitor/PluginCall;
    iget-object v1, p0, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v1, p2, p3, v0}, Lcom/getcapacitor/Bridge;->callPluginMethod(Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    .line 150
    return-void
.end method

.method private synthetic lambda$callCordovaPluginMethod$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "actionArgs"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/getcapacitor/MessageHandler;->cordovaPluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/cordova/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method static synthetic lambda$legacySendResponseMessage$1(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "runScript"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "message"    # Landroidx/webkit/WebMessageCompat;
    .param p3, "sourceOrigin"    # Landroid/net/Uri;
    .param p4, "isMainFrame"    # Z
    .param p5, "replyProxy"    # Landroidx/webkit/JavaScriptReplyProxy;

    .line 28
    if-eqz p4, :cond_0

    .line 29
    invoke-virtual {p2}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/getcapacitor/MessageHandler;->postMessage(Ljava/lang/String;)V

    .line 30
    iput-object p5, p0, Lcom/getcapacitor/MessageHandler;->javaScriptReplyProxy:Landroidx/webkit/JavaScriptReplyProxy;

    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "Plugin execution is allowed in Main Frame only"

    invoke-static {v0}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 34
    :goto_0
    return-void
.end method

.method private legacySendResponseMessage(Lcom/getcapacitor/PluginResult;)V
    .locals 3
    .param p1, "data"    # Lcom/getcapacitor/PluginResult;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.Capacitor.fromNative("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/getcapacitor/PluginResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "runScript":Ljava/lang/String;
    iget-object v1, p0, Lcom/getcapacitor/MessageHandler;->webView:Landroid/webkit/WebView;

    .line 144
    .local v1, "webView":Landroid/webkit/WebView;
    new-instance v2, Lcom/getcapacitor/MessageHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Lcom/getcapacitor/MessageHandler$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .locals 13
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 54
    :try_start_0
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0, p1}, Lcom/getcapacitor/JSObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "postData":Lcom/getcapacitor/JSObject;
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 59
    .local v4, "typeIsNotNull":Z
    :goto_0
    if-eqz v4, :cond_1

    const-string v5, "cordova"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 60
    .local v5, "isCordovaPlugin":Z
    :goto_1
    if-eqz v4, :cond_2

    const-string v6, "js.error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 62
    .local v6, "isJavaScriptError":Z
    :goto_2
    const-string v7, "callbackId"

    invoke-virtual {v0, v7}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v7, "callbackId":Ljava/lang/String;
    const-string v8, "Plugin"

    if-eqz v5, :cond_3

    .line 65
    :try_start_1
    const-string v9, "service"

    invoke-virtual {v0, v9}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, "service":Ljava/lang/String;
    const-string v10, "action"

    invoke-virtual {v0, v10}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, "action":Ljava/lang/String;
    const-string v11, "actionArgs"

    invoke-virtual {v0, v11}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, "actionArgs":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    aput-object v8, v2, v3

    .line 70
    invoke-static {v2}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To native (Cordova plugin): callbackId: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", service: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", action: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", actionArgs: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v2, v3}, Lcom/getcapacitor/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, v7, v9, v10, v11}, Lcom/getcapacitor/MessageHandler;->callCordovaPluginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v9    # "service":Ljava/lang/String;
    .end local v10    # "action":Ljava/lang/String;
    .end local v11    # "actionArgs":Ljava/lang/String;
    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JavaScript Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 85
    :cond_4
    const-string v9, "pluginId"

    invoke-virtual {v0, v9}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "pluginId":Ljava/lang/String;
    const-string v10, "methodName"

    invoke-virtual {v0, v10}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "methodName":Ljava/lang/String;
    const-string v11, "options"

    new-instance v12, Lcom/getcapacitor/JSObject;

    invoke-direct {v12}, Lcom/getcapacitor/JSObject;-><init>()V

    invoke-virtual {v0, v11, v12}, Lcom/getcapacitor/JSObject;->getJSObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;

    move-result-object v11

    .line 89
    .local v11, "methodData":Lcom/getcapacitor/JSObject;
    new-array v2, v2, [Ljava/lang/String;

    aput-object v8, v2, v3

    .line 90
    invoke-static {v2}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To native (Capacitor plugin): callbackId: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", pluginId: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", methodName: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v2, v3}, Lcom/getcapacitor/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, v7, v9, v10, v11}, Lcom/getcapacitor/MessageHandler;->callPluginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/JSObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .end local v0    # "postData":Lcom/getcapacitor/JSObject;
    .end local v1    # "type":Ljava/lang/String;
    .end local v4    # "typeIsNotNull":Z
    .end local v5    # "isCordovaPlugin":Z
    .end local v6    # "isJavaScriptError":Z
    .end local v7    # "callbackId":Ljava/lang/String;
    .end local v9    # "pluginId":Ljava/lang/String;
    .end local v10    # "methodName":Ljava/lang/String;
    .end local v11    # "methodData":Lcom/getcapacitor/JSObject;
    :goto_3
    goto :goto_4

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Post message error:"

    invoke-static {v1, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public sendResponseMessage(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/PluginResult;Lcom/getcapacitor/PluginResult;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "successResult"    # Lcom/getcapacitor/PluginResult;
    .param p3, "errorResult"    # Lcom/getcapacitor/PluginResult;

    .line 103
    :try_start_0
    new-instance v0, Lcom/getcapacitor/PluginResult;

    invoke-direct {v0}, Lcom/getcapacitor/PluginResult;-><init>()V

    .line 104
    .local v0, "data":Lcom/getcapacitor/PluginResult;
    const-string v1, "save"

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->isKeptAlive()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Z)Lcom/getcapacitor/PluginResult;

    .line 105
    const-string v1, "callbackId"

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    .line 106
    const-string v1, "pluginId"

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    .line 107
    const-string v1, "methodName"

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 110
    .local v3, "pluginResultInError":Z
    :goto_0
    const-string v4, "success"

    if-eqz v3, :cond_1

    .line 111
    :try_start_1
    invoke-virtual {v0, v4, v1}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Z)Lcom/getcapacitor/PluginResult;

    .line 112
    const-string v1, "error"

    invoke-virtual {v0, v1, p3}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Lcom/getcapacitor/PluginResult;)Lcom/getcapacitor/PluginResult;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending plugin error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/getcapacitor/PluginResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v0, v4, v2}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Z)Lcom/getcapacitor/PluginResult;

    .line 116
    if-eqz p2, :cond_2

    .line 117
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Lcom/getcapacitor/PluginResult;)Lcom/getcapacitor/PluginResult;

    .line 121
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "-1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 122
    .local v1, "isValidCallbackId":Z
    if-eqz v1, :cond_5

    .line 123
    iget-object v2, p0, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v2}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/getcapacitor/CapConfig;->isUsingLegacyBridge()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    invoke-direct {p0, v0}, Lcom/getcapacitor/MessageHandler;->legacySendResponseMessage(Lcom/getcapacitor/PluginResult;)V

    goto :goto_2

    .line 125
    :cond_3
    const-string v2, "WEB_MESSAGE_LISTENER"

    invoke-static {v2}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/getcapacitor/MessageHandler;->javaScriptReplyProxy:Landroidx/webkit/JavaScriptReplyProxy;

    if-eqz v2, :cond_4

    .line 126
    invoke-virtual {v0}, Lcom/getcapacitor/PluginResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/webkit/JavaScriptReplyProxy;->postMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 128
    :cond_4
    invoke-direct {p0, v0}, Lcom/getcapacitor/MessageHandler;->legacySendResponseMessage(Lcom/getcapacitor/PluginResult;)V

    goto :goto_2

    .line 131
    :cond_5
    iget-object v2, p0, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v2}, Lcom/getcapacitor/Bridge;->getApp()Lcom/getcapacitor/App;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/getcapacitor/App;->fireRestoredResult(Lcom/getcapacitor/PluginResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .end local v0    # "data":Lcom/getcapacitor/PluginResult;
    .end local v1    # "isValidCallbackId":Z
    .end local v3    # "pluginResultInError":Z
    :goto_2
    goto :goto_3

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponseMessage: error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 136
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->isKeptAlive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 137
    iget-object v0, p0, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->release(Lcom/getcapacitor/Bridge;)V

    .line 139
    :cond_6
    return-void
.end method
