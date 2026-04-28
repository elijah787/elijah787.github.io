.class public Lcom/getcapacitor/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final LOG_TAG_CORE:Ljava/lang/String; = "Capacitor"

.field public static config:Lcom/getcapacitor/CapConfig;

.field private static instance:Lcom/getcapacitor/Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 49
    const-string v0, "Capacitor"

    invoke-static {v0, p0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 85
    const-string v0, "Capacitor"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 93
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 89
    const-string v0, "Capacitor"

    invoke-static {v0, p0, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method private static getInstance()Lcom/getcapacitor/Logger;
    .locals 1

    .line 14
    sget-object v0, Lcom/getcapacitor/Logger;->instance:Lcom/getcapacitor/Logger;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/getcapacitor/Logger;

    invoke-direct {v0}, Lcom/getcapacitor/Logger;-><init>()V

    sput-object v0, Lcom/getcapacitor/Logger;->instance:Lcom/getcapacitor/Logger;

    .line 17
    :cond_0
    sget-object v0, Lcom/getcapacitor/Logger;->instance:Lcom/getcapacitor/Logger;

    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 61
    const-string v0, "Capacitor"

    invoke-static {v0, p0}, Lcom/getcapacitor/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 69
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public static init(Lcom/getcapacitor/CapConfig;)V
    .locals 1
    .param p0, "config"    # Lcom/getcapacitor/CapConfig;

    .line 21
    invoke-static {}, Lcom/getcapacitor/Logger;->getInstance()Lcom/getcapacitor/Logger;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/getcapacitor/Logger;->loadConfig(Lcom/getcapacitor/CapConfig;)V

    .line 22
    return-void
.end method

.method private loadConfig(Lcom/getcapacitor/CapConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/getcapacitor/CapConfig;

    .line 25
    sput-object p1, Lcom/getcapacitor/Logger;->config:Lcom/getcapacitor/CapConfig;

    .line 26
    return-void
.end method

.method public static shouldLog()Z
    .locals 1

    .line 101
    sget-object v0, Lcom/getcapacitor/Logger;->config:Lcom/getcapacitor/CapConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static varargs tags([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "subtags"    # [Ljava/lang/String;

    .line 29
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capacitor/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "Capacitor"

    return-object v0
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 37
    const-string v0, "Capacitor"

    invoke-static {v0, p0}, Lcom/getcapacitor/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 73
    const-string v0, "Capacitor"

    invoke-static {v0, p0}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
