.class public Lcom/getcapacitor/util/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/getcapacitor/util/JSONUtils;->getDeepestKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "k":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/getcapacitor/util/JSONUtils;->getDeepestObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 111
    .local v1, "o":Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 112
    .local v2, "a":Lorg/json/JSONArray;
    if-nez v2, :cond_0

    .line 113
    return-object p2

    .line 116
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 117
    .local v3, "l":I
    new-array v4, v3, [Ljava/lang/String;

    .line 119
    .local v4, "value":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 120
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    .end local v5    # "i":I
    :cond_1
    return-object v4

    .line 124
    .end local v1    # "o":Lorg/json/JSONObject;
    .end local v2    # "a":Lorg/json/JSONArray;
    .end local v3    # "l":I
    .end local v4    # "value":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 128
    return-object p2
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 46
    invoke-static {p1}, Lcom/getcapacitor/util/JSONUtils;->getDeepestKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "k":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/getcapacitor/util/JSONUtils;->getDeepestObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 50
    .local v1, "o":Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 51
    .end local v1    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 55
    return p2
.end method

.method private static getDeepestKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 138
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 140
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1

    .line 143
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getDeepestObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 155
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "parts":[Ljava/lang/String;
    move-object v1, p0

    .line 159
    .local v1, "o":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 160
    aget-object v3, v0, v2

    .line 161
    .local v3, "k":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 159
    .end local v3    # "k":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 67
    invoke-static {p1}, Lcom/getcapacitor/util/JSONUtils;->getDeepestKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "k":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/getcapacitor/util/JSONUtils;->getDeepestObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    .local v1, "o":Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 71
    .end local v1    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 75
    return p2
.end method

.method public static getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/getcapacitor/util/JSONUtils;->getDeepestKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "k":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/getcapacitor/util/JSONUtils;->getDeepestObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 90
    .local v1, "o":Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 91
    .end local v1    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 95
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/getcapacitor/util/JSONUtils;->getDeepestKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "k":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/getcapacitor/util/JSONUtils;->getDeepestObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 25
    .local v1, "o":Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 27
    return-object p2

    .line 29
    :cond_0
    return-object v2

    .line 30
    .end local v1    # "o":Lorg/json/JSONObject;
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 34
    return-object p2
.end method
