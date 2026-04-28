.class public Lorg/apache/cordova/ResumeCallback;
.super Lorg/apache/cordova/CallbackContext;
.source "ResumeCallback.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private pluginManager:Lorg/apache/cordova/PluginManager;

.field private serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/cordova/PluginManager;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "pluginManager"    # Lorg/apache/cordova/PluginManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serviceName",
            "pluginManager"
        }
    .end annotation

    .line 34
    const-string v0, "resumecallback"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/cordova/CallbackContext;-><init>(Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 29
    const-string v0, "CordovaResumeCallback"

    iput-object v0, p0, Lorg/apache/cordova/ResumeCallback;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/apache/cordova/ResumeCallback;->serviceName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/apache/cordova/ResumeCallback;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 37
    return-void
.end method


# virtual methods
.method public sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    .locals 7
    .param p1, "pluginResult"    # Lorg/apache/cordova/PluginResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pluginResult"
        }
    .end annotation

    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/cordova/ResumeCallback;->finished:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "CordovaResumeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/cordova/ResumeCallback;->serviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attempted to send a second callback to ResumeCallback\nResult was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/ResumeCallback;->finished:Z

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v0, "event":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v1, "pluginResultObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "pluginServiceName"

    iget-object v3, p0, Lorg/apache/cordova/ResumeCallback;->serviceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v2, "pluginStatus"

    sget-object v3, Lorg/apache/cordova/PluginResult;->StatusMessages:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "action"

    const-string v3, "resume"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v2, "pendingResult"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "CordovaResumeCallback"

    const-string v4, "Unable to create resume object for Activity Result"

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v3, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 69
    .local v2, "eventResult":Lorg/apache/cordova/PluginResult;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/cordova/PluginResult;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v4, p0, Lorg/apache/cordova/ResumeCallback;->pluginManager:Lorg/apache/cordova/PluginManager;

    const-string v5, "CoreAndroid"

    invoke-virtual {v4, v5}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v4

    check-cast v4, Lorg/apache/cordova/CoreAndroid;

    .line 74
    .local v4, "appPlugin":Lorg/apache/cordova/CoreAndroid;
    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v5, v6, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CoreAndroid;->sendResumeEvent(Lorg/apache/cordova/PluginResult;)V

    .line 75
    return-void

    .line 48
    .end local v0    # "event":Lorg/json/JSONObject;
    .end local v1    # "pluginResultObject":Lorg/json/JSONObject;
    .end local v2    # "eventResult":Lorg/apache/cordova/PluginResult;
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/cordova/PluginResult;>;"
    .end local v4    # "appPlugin":Lorg/apache/cordova/CoreAndroid;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
