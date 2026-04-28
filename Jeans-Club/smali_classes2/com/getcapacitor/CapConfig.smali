.class public Lcom/getcapacitor/CapConfig;
.super Ljava/lang/Object;
.source "CapConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/CapConfig$Builder;
    }
.end annotation


# static fields
.field private static final LOG_BEHAVIOR_DEBUG:Ljava/lang/String; = "debug"

.field private static final LOG_BEHAVIOR_NONE:Ljava/lang/String; = "none"

.field private static final LOG_BEHAVIOR_PRODUCTION:Ljava/lang/String; = "production"


# instance fields
.field private allowMixedContent:Z

.field private allowNavigation:[Ljava/lang/String;

.field private androidScheme:Ljava/lang/String;

.field private appendedUserAgentString:Ljava/lang/String;

.field private backgroundColor:Ljava/lang/String;

.field private captureInput:Z

.field private configJSON:Lorg/json/JSONObject;

.field private errorPath:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private html5mode:Z

.field private initialFocus:Z

.field private loggingEnabled:Z

.field private minHuaweiWebViewVersion:I

.field private minWebViewVersion:I

.field private overriddenUserAgentString:Ljava/lang/String;

.field private pluginsConfiguration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PluginConfig;",
            ">;"
        }
    .end annotation
.end field

.field private serverUrl:Ljava/lang/String;

.field private startPath:Ljava/lang/String;

.field private useLegacyBridge:Z

.field private webContentsDebuggingEnabled:Z

.field private zoomableWebView:Z


# direct methods
.method static bridge synthetic -$$Nest$smdeserializePluginsConfig(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/getcapacitor/CapConfig;->deserializePluginsConfig(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 38
    const-string v1, "localhost"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 39
    const-string v1, "https"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 47
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 48
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    .line 49
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 50
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 51
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    .line 52
    const/16 v0, 0x3c

    iput v0, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    .line 55
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "config"    # Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 38
    const-string v1, "localhost"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 39
    const-string v1, "https"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 47
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 48
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    .line 49
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 50
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 51
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    .line 52
    const/16 v0, 0x3c

    iput v0, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    .line 55
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 82
    if-eqz p2, :cond_0

    .line 83
    iput-object p2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/getcapacitor/CapConfig;->loadConfigFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 89
    :goto_0
    invoke-direct {p0, v0}, Lcom/getcapacitor/CapConfig;->deserializeConfig(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method private constructor <init>(Lcom/getcapacitor/CapConfig$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/getcapacitor/CapConfig$Builder;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 38
    const-string v1, "localhost"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 39
    const-string v1, "https"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 47
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 48
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    .line 49
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 50
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 51
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    .line 52
    const/16 v0, 0x3c

    iput v0, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    .line 55
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 158
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgethtml5mode(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 159
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetserverUrl(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->serverUrl:Ljava/lang/String;

    .line 160
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgethostname(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 162
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetandroidScheme(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/getcapacitor/CapConfig;->validateScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetandroidScheme(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    .line 166
    :cond_0
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetallowNavigation(Lcom/getcapacitor/CapConfig$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->allowNavigation:[Ljava/lang/String;

    .line 169
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetoverriddenUserAgentString(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->overriddenUserAgentString:Ljava/lang/String;

    .line 170
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetappendedUserAgentString(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->appendedUserAgentString:Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetbackgroundColor(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->backgroundColor:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetallowMixedContent(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 173
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetcaptureInput(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 174
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetwebContentsDebuggingEnabled(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    .line 175
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetloggingEnabled(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 176
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetinitialFocus(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 177
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetuseLegacyBridge(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    .line 178
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetminWebViewVersion(Lcom/getcapacitor/CapConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    .line 179
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetminHuaweiWebViewVersion(Lcom/getcapacitor/CapConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    .line 180
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgeterrorPath(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->errorPath:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetzoomableWebView(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    .line 184
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetstartPath(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->startPath:Ljava/lang/String;

    .line 187
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->-$$Nest$fgetpluginsConfiguration(Lcom/getcapacitor/CapConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lcom/getcapacitor/CapConfig$Builder;Lcom/getcapacitor/CapConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/getcapacitor/CapConfig;-><init>(Lcom/getcapacitor/CapConfig$Builder;)V

    return-void
.end method

.method private deserializeConfig(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 243
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 246
    .local v2, "isDebug":Z
    :goto_0
    iget-object v3, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v4, "server.html5mode"

    iget-boolean v5, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    invoke-static {v3, v4, v5}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 247
    iget-object v3, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v4, "server.url"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/getcapacitor/CapConfig;->serverUrl:Ljava/lang/String;

    .line 248
    iget-object v3, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v4, "server.hostname"

    iget-object v6, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    invoke-static {v3, v4, v6}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 249
    iget-object v3, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v4, "server.errorPath"

    invoke-static {v3, v4, v5}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/getcapacitor/CapConfig;->errorPath:Ljava/lang/String;

    .line 251
    iget-object v3, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v4, "server.androidScheme"

    iget-object v6, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    invoke-static {v3, v4, v6}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "configSchema":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/getcapacitor/CapConfig;->validateScheme(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    iput-object v3, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    .line 256
    :cond_1
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v6, "server.allowNavigation"

    invoke-static {v4, v6, v5}, Lcom/getcapacitor/util/JSONUtils;->getArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/getcapacitor/CapConfig;->allowNavigation:[Ljava/lang/String;

    .line 259
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 260
    const-string v6, "overrideUserAgent"

    invoke-static {v4, v6, v5}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.overrideUserAgent"

    invoke-static {v4, v7, v6}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/getcapacitor/CapConfig;->overriddenUserAgentString:Ljava/lang/String;

    .line 261
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 262
    const-string v6, "appendUserAgent"

    invoke-static {v4, v6, v5}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.appendUserAgent"

    invoke-static {v4, v7, v6}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/getcapacitor/CapConfig;->appendedUserAgentString:Ljava/lang/String;

    .line 263
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 264
    const-string v6, "backgroundColor"

    invoke-static {v4, v6, v5}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.backgroundColor"

    invoke-static {v4, v6, v5}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/getcapacitor/CapConfig;->backgroundColor:Ljava/lang/String;

    .line 265
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    iget-boolean v5, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 269
    const-string v6, "allowMixedContent"

    invoke-static {v4, v6, v5}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    .line 266
    const-string v6, "android.allowMixedContent"

    invoke-static {v4, v6, v5}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 271
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v5, "android.minWebViewVersion"

    const/16 v6, 0x3c

    invoke-static {v4, v5, v6}, Lcom/getcapacitor/util/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    .line 272
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v5, "android.minHuaweiWebViewVersion"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Lcom/getcapacitor/util/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    .line 273
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v5, "android.captureInput"

    iget-boolean v6, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    invoke-static {v4, v5, v6}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 274
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v5, "android.useLegacyBridge"

    iget-boolean v6, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    invoke-static {v4, v5, v6}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    .line 275
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v5, "android.webContentsDebuggingEnabled"

    invoke-static {v4, v5, v2}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    .line 276
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v5, "zoomEnabled"

    invoke-static {v4, v5, v1}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "android.zoomEnabled"

    invoke-static {v4, v6, v5}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    .line 278
    iget-object v4, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 281
    const-string v5, "loggingBehavior"

    const-string v6, "debug"

    invoke-static {v4, v5, v6}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 278
    const-string v6, "android.loggingBehavior"

    invoke-static {v4, v6, v5}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "logBehavior":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v6, "production"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 291
    iput-boolean v2, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    goto :goto_3

    .line 288
    :pswitch_0
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 289
    goto :goto_3

    .line 285
    :pswitch_1
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 286
    nop

    .line 294
    :goto_3
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v1, "android.initialFocus"

    iget-boolean v5, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    invoke-static {v0, v1, v5}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 297
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const-string v1, "plugins"

    invoke-static {v0, v1}, Lcom/getcapacitor/util/JSONUtils;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/CapConfig;->deserializePluginsConfig(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    .line 298
    return-void

    :sswitch_data_0
    .sparse-switch
        0x33af38 -> :sswitch_1
        0x687cf0b9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static deserializePluginsConfig(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p0, "pluginsConfig"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PluginConfig;",
            ">;"
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v0, "pluginsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/getcapacitor/PluginConfig;>;"
    if-nez p0, :cond_0

    .line 515
    return-object v0

    .line 518
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 520
    .local v1, "pluginIds":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 522
    .local v2, "pluginId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 525
    .local v3, "value":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v3, v4

    .line 526
    new-instance v4, Lcom/getcapacitor/PluginConfig;

    invoke-direct {v4, v3}, Lcom/getcapacitor/PluginConfig;-><init>(Lorg/json/JSONObject;)V

    .line 527
    .local v4, "pluginConfig":Lcom/getcapacitor/PluginConfig;
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    nop

    .end local v4    # "pluginConfig":Lcom/getcapacitor/PluginConfig;
    goto :goto_1

    .line 528
    :catch_0
    move-exception v4

    .line 529
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 531
    .end local v2    # "pluginId":Ljava/lang/String;
    .end local v3    # "value":Lorg/json/JSONObject;
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 533
    :cond_1
    return-object v0
.end method

.method private loadConfigFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 195
    if-nez p2, :cond_0

    .line 196
    const-string p2, ""

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 205
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "capacitor.config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/getcapacitor/FileUtils;->readFileFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "jsonString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "jsonString":Ljava/lang/String;
    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "ex":Lorg/json/JSONException;
    const-string v1, "Unable to parse capacitor.config.json. Make sure it\'s valid json"

    invoke-static {v1, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 207
    .end local v0    # "ex":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Unable to load capacitor.config.json. Run npx cap copy first"

    invoke-static {v1, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1
    nop

    .line 212
    :goto_2
    return-void
.end method

.method private loadConfigFromFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 219
    if-nez p1, :cond_0

    .line 220
    const-string p1, ""

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "capacitor.config.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "configFile":Ljava/io/File;
    invoke-static {v0}, Lcom/getcapacitor/FileUtils;->readFileFromDisk(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "jsonString":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "configFile":Ljava/io/File;
    .end local v1    # "jsonString":Ljava/lang/String;
    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Unable to load capacitor.config.json."

    invoke-static {v1, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 232
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 233
    .local v0, "ex":Lorg/json/JSONException;
    const-string v1, "Unable to parse capacitor.config.json. Make sure it\'s valid json"

    invoke-static {v1, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .end local v0    # "ex":Lorg/json/JSONException;
    :goto_1
    nop

    .line 237
    :goto_2
    return-void
.end method

.method public static loadDefault(Landroid/content/Context;)Lcom/getcapacitor/CapConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/getcapacitor/CapConfig;

    invoke-direct {v0}, Lcom/getcapacitor/CapConfig;-><init>()V

    .line 101
    .local v0, "config":Lcom/getcapacitor/CapConfig;
    if-nez p0, :cond_0

    .line 102
    const-string v1, "Capacitor Config could not be created from file. Context must not be null."

    invoke-static {v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 103
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/getcapacitor/CapConfig;->loadConfigFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 107
    invoke-direct {v0, p0}, Lcom/getcapacitor/CapConfig;->deserializeConfig(Landroid/content/Context;)V

    .line 108
    return-object v0
.end method

.method public static loadFromAssets(Landroid/content/Context;Ljava/lang/String;)Lcom/getcapacitor/CapConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/getcapacitor/CapConfig;

    invoke-direct {v0}, Lcom/getcapacitor/CapConfig;-><init>()V

    .line 121
    .local v0, "config":Lcom/getcapacitor/CapConfig;
    if-nez p0, :cond_0

    .line 122
    const-string v1, "Capacitor Config could not be created from file. Context must not be null."

    invoke-static {v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 123
    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/getcapacitor/CapConfig;->loadConfigFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 127
    invoke-direct {v0, p0}, Lcom/getcapacitor/CapConfig;->deserializeConfig(Landroid/content/Context;)V

    .line 128
    return-object v0
.end method

.method public static loadFromFile(Landroid/content/Context;Ljava/lang/String;)Lcom/getcapacitor/CapConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/getcapacitor/CapConfig;

    invoke-direct {v0}, Lcom/getcapacitor/CapConfig;-><init>()V

    .line 141
    .local v0, "config":Lcom/getcapacitor/CapConfig;
    if-nez p0, :cond_0

    .line 142
    const-string v1, "Capacitor Config could not be created from file. Context must not be null."

    invoke-static {v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 143
    return-object v0

    .line 146
    :cond_0
    invoke-direct {v0, p1}, Lcom/getcapacitor/CapConfig;->loadConfigFromFile(Ljava/lang/String;)V

    .line 147
    invoke-direct {v0, p0}, Lcom/getcapacitor/CapConfig;->deserializeConfig(Landroid/content/Context;)V

    .line 148
    return-object v0
.end method

.method private validateScheme(Ljava/lang/String;)Z
    .locals 8
    .param p1, "scheme"    # Ljava/lang/String;

    .line 301
    const-string v0, "file"

    const-string v1, "ftp"

    const-string v2, "ftps"

    const-string v3, "ws"

    const-string v4, "wss"

    const-string v5, "about"

    const-string v6, "blob"

    const-string v7, "data"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 302
    .local v0, "invalidSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an allowed scheme.  Defaulting to https."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 304
    const/4 v1, 0x0

    return v1

    .line 308
    :cond_0
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using a non-standard scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for Android. This is known to cause issues as of Android Webview 117."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 314
    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getAllowNavigation()[Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->allowNavigation:[Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidScheme()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getAppendedUserAgentString()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->appendedUserAgentString:Ljava/lang/String;

    return-object v0
.end method

.method public getArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/getcapacitor/util/JSONUtils;->getArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getErrorPath()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->errorPath:Ljava/lang/String;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinHuaweiWebViewVersion()I
    .locals 2

    .line 395
    iget v0, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 396
    const-string v0, "Specified minimum Huawei webview version is too low, defaulting to 10"

    invoke-static {v0}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 397
    return v1

    .line 400
    :cond_0
    return v0
.end method

.method public getMinWebViewVersion()I
    .locals 2

    .line 386
    iget v0, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    const/16 v1, 0x37

    if-ge v0, v1, :cond_0

    .line 387
    const-string v0, "Specified minimum webview version is too low, defaulting to 55"

    invoke-static {v0}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 388
    return v1

    .line 391
    :cond_0
    return v0
.end method

.method public getObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverriddenUserAgentString()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->overriddenUserAgentString:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginConfiguration(Ljava/lang/String;)Lcom/getcapacitor/PluginConfig;
    .locals 3
    .param p1, "pluginId"    # Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/getcapacitor/PluginConfig;

    .line 405
    .local v0, "pluginConfig":Lcom/getcapacitor/PluginConfig;
    if-nez v0, :cond_0

    .line 406
    new-instance v1, Lcom/getcapacitor/PluginConfig;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v1, v2}, Lcom/getcapacitor/PluginConfig;-><init>(Lorg/json/JSONObject;)V

    move-object v0, v1

    .line 409
    :cond_0
    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPath()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->startPath:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHTML5Mode()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    return v0
.end method

.method public isInitialFocus()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    return v0
.end method

.method public isInputCaptured()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    return v0
.end method

.method public isMixedContentAllowed()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    return v0
.end method

.method public isUsingLegacyBridge()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    return v0
.end method

.method public isWebContentsDebuggingEnabled()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    return v0
.end method

.method public isZoomableWebView()Z
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    return v0
.end method
