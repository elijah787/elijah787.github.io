.class public Lcom/getcapacitor/PluginConfig;
.super Ljava/lang/Object;
.source "PluginConfig.java"


# instance fields
.field private final config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "config"    # Lorg/json/JSONObject;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/getcapacitor/PluginConfig;->config:Lorg/json/JSONObject;

    .line 23
    return-void
.end method


# virtual methods
.method public getArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/PluginConfig;->getArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/getcapacitor/PluginConfig;->config:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 54
    iget-object v0, p0, Lcom/getcapacitor/PluginConfig;->config:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getConfigJSON()Lorg/json/JSONObject;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/getcapacitor/PluginConfig;->config:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 65
    iget-object v0, p0, Lcom/getcapacitor/PluginConfig;->config:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/getcapacitor/PluginConfig;->config:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/getcapacitor/util/JSONUtils;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/PluginConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/getcapacitor/PluginConfig;->config:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/getcapacitor/PluginConfig;->config:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
