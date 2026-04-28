.class public Lorg/apache/cordova/AllowList;
.super Ljava/lang/Object;
.source "AllowList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/AllowList$URLPattern;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CordovaAllowList"


# instance fields
.field private allowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/cordova/AllowList$URLPattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AllowList;->allowList:Ljava/util/ArrayList;

    .line 101
    return-void
.end method


# virtual methods
.method public addAllowListEntry(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "subdomains"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "origin",
            "subdomains"
        }
    .end annotation

    .line 115
    const-string v0, "CordovaAllowList"

    const-string v1, "*"

    iget-object v2, p0, Lorg/apache/cordova/AllowList;->allowList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 118
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const-string v1, "Unlimited access to network resources"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/AllowList;->allowList:Ljava/util/ArrayList;

    goto :goto_0

    .line 123
    :cond_0
    const-string v2, "^((\\*|[A-Za-z-]+):(//)?)?(\\*|((\\*\\.)?[^*/:]+))?(:(\\d+))?(/.*)?"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 124
    .local v2, "parts":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 125
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 126
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "scheme":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "host":Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "content"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    if-nez v5, :cond_2

    move-object v5, v1

    .line 130
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "port":Ljava/lang/String;
    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "path":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 134
    iget-object v7, p0, Lorg/apache/cordova/AllowList;->allowList:Ljava/util/ArrayList;

    new-instance v8, Lorg/apache/cordova/AllowList$URLPattern;

    const-string v9, "http"

    invoke-direct {v8, v9, v5, v1, v6}, Lorg/apache/cordova/AllowList$URLPattern;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v7, p0, Lorg/apache/cordova/AllowList;->allowList:Ljava/util/ArrayList;

    new-instance v8, Lorg/apache/cordova/AllowList$URLPattern;

    const-string v9, "https"

    invoke-direct {v8, v9, v5, v1, v6}, Lorg/apache/cordova/AllowList$URLPattern;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_3
    iget-object v7, p0, Lorg/apache/cordova/AllowList;->allowList:Ljava/util/ArrayList;

    new-instance v8, Lorg/apache/cordova/AllowList$URLPattern;

    invoke-direct {v8, v4, v5, v1, v6}, Lorg/apache/cordova/AllowList$URLPattern;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "port":Ljava/lang/String;
    .end local v2    # "parts":Ljava/util/regex/Pattern;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "host":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :cond_4
    :goto_0
    goto :goto_1

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Failed to add origin %s"

    invoke-static {v0, v3, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    return-void
.end method

.method public isUrlAllowListed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/apache/cordova/AllowList;->allowList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 158
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 160
    .local v0, "parsedUri":Landroid/net/Uri;
    iget-object v2, p0, Lorg/apache/cordova/AllowList;->allowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 161
    .local v2, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/cordova/AllowList$URLPattern;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/cordova/AllowList$URLPattern;

    .line 163
    .local v3, "p":Lorg/apache/cordova/AllowList$URLPattern;
    invoke-virtual {v3, v0}, Lorg/apache/cordova/AllowList$URLPattern;->matches(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    return v1

    .line 166
    .end local v3    # "p":Lorg/apache/cordova/AllowList$URLPattern;
    :cond_1
    goto :goto_0

    .line 167
    :cond_2
    const/4 v1, 0x0

    return v1
.end method
