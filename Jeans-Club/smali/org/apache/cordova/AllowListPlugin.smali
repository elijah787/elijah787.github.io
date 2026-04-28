.class public Lorg/apache/cordova/AllowListPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "AllowListPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/AllowListPlugin$CustomConfigXmlParser;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "CordovaAllowListPlugin"

.field public static final PLUGIN_NAME:Ljava/lang/String; = "CordovaAllowListPlugin"


# instance fields
.field private allowedIntents:Lorg/apache/cordova/AllowList;

.field private allowedNavigations:Lorg/apache/cordova/AllowList;

.field private allowedRequests:Lorg/apache/cordova/AllowList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/apache/cordova/AllowList;

    invoke-direct {v0}, Lorg/apache/cordova/AllowList;-><init>()V

    new-instance v1, Lorg/apache/cordova/AllowList;

    invoke-direct {v1}, Lorg/apache/cordova/AllowList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/cordova/AllowListPlugin;-><init>(Lorg/apache/cordova/AllowList;Lorg/apache/cordova/AllowList;Lorg/apache/cordova/AllowList;)V

    .line 45
    new-instance v0, Lorg/apache/cordova/AllowListPlugin$CustomConfigXmlParser;

    invoke-direct {v0, p0, v2}, Lorg/apache/cordova/AllowListPlugin$CustomConfigXmlParser;-><init>(Lorg/apache/cordova/AllowListPlugin;Lorg/apache/cordova/AllowListPlugin$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/cordova/AllowListPlugin$CustomConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/AllowList;Lorg/apache/cordova/AllowList;Lorg/apache/cordova/AllowList;)V
    .locals 2
    .param p1, "allowedNavigations"    # Lorg/apache/cordova/AllowList;
    .param p2, "allowedIntents"    # Lorg/apache/cordova/AllowList;
    .param p3, "allowedRequests"    # Lorg/apache/cordova/AllowList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "allowedNavigations",
            "allowedIntents",
            "allowedRequests"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 54
    if-nez p3, :cond_0

    .line 55
    new-instance v0, Lorg/apache/cordova/AllowList;

    invoke-direct {v0}, Lorg/apache/cordova/AllowList;-><init>()V

    move-object p3, v0

    .line 56
    const-string v0, "file:///*"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/apache/cordova/AllowList;->addAllowListEntry(Ljava/lang/String;Z)V

    .line 57
    const-string v0, "data:*"

    invoke-virtual {p3, v0, v1}, Lorg/apache/cordova/AllowList;->addAllowListEntry(Ljava/lang/String;Z)V

    .line 60
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/AllowListPlugin;->allowedNavigations:Lorg/apache/cordova/AllowList;

    .line 61
    iput-object p2, p0, Lorg/apache/cordova/AllowListPlugin;->allowedIntents:Lorg/apache/cordova/AllowList;

    .line 62
    iput-object p3, p0, Lorg/apache/cordova/AllowListPlugin;->allowedRequests:Lorg/apache/cordova/AllowList;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xmlParser"
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/apache/cordova/AllowList;

    invoke-direct {v0}, Lorg/apache/cordova/AllowList;-><init>()V

    new-instance v1, Lorg/apache/cordova/AllowList;

    invoke-direct {v1}, Lorg/apache/cordova/AllowList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/cordova/AllowListPlugin;-><init>(Lorg/apache/cordova/AllowList;Lorg/apache/cordova/AllowList;Lorg/apache/cordova/AllowList;)V

    .line 50
    new-instance v0, Lorg/apache/cordova/AllowListPlugin$CustomConfigXmlParser;

    invoke-direct {v0, p0, v2}, Lorg/apache/cordova/AllowListPlugin$CustomConfigXmlParser;-><init>(Lorg/apache/cordova/AllowListPlugin;Lorg/apache/cordova/AllowListPlugin$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/cordova/AllowListPlugin$CustomConfigXmlParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 51
    return-void
.end method

.method static synthetic access$100(Lorg/apache/cordova/AllowListPlugin;)Lorg/apache/cordova/AllowList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/AllowListPlugin;

    .line 31
    iget-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedNavigations:Lorg/apache/cordova/AllowList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/cordova/AllowListPlugin;)Lorg/apache/cordova/AllowList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/AllowListPlugin;

    .line 31
    iget-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedIntents:Lorg/apache/cordova/AllowList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/cordova/AllowListPlugin;)Lorg/apache/cordova/AllowList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/AllowListPlugin;

    .line 31
    iget-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedRequests:Lorg/apache/cordova/AllowList;

    return-object v0
.end method


# virtual methods
.method public getAllowedIntents()Lorg/apache/cordova/AllowList;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedIntents:Lorg/apache/cordova/AllowList;

    return-object v0
.end method

.method public getAllowedNavigations()Lorg/apache/cordova/AllowList;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedNavigations:Lorg/apache/cordova/AllowList;

    return-object v0
.end method

.method public getAllowedRequests()Lorg/apache/cordova/AllowList;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedRequests:Lorg/apache/cordova/AllowList;

    return-object v0
.end method

.method public pluginInitialize()V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedNavigations:Lorg/apache/cordova/AllowList;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lorg/apache/cordova/AllowList;

    invoke-direct {v0}, Lorg/apache/cordova/AllowList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedNavigations:Lorg/apache/cordova/AllowList;

    .line 69
    new-instance v0, Lorg/apache/cordova/AllowList;

    invoke-direct {v0}, Lorg/apache/cordova/AllowList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedIntents:Lorg/apache/cordova/AllowList;

    .line 70
    new-instance v0, Lorg/apache/cordova/AllowList;

    invoke-direct {v0}, Lorg/apache/cordova/AllowList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedRequests:Lorg/apache/cordova/AllowList;

    .line 72
    new-instance v0, Lorg/apache/cordova/AllowListPlugin$CustomConfigXmlParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/cordova/AllowListPlugin$CustomConfigXmlParser;-><init>(Lorg/apache/cordova/AllowListPlugin;Lorg/apache/cordova/AllowListPlugin$1;)V

    iget-object v1, p0, Lorg/apache/cordova/AllowListPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/AllowListPlugin$CustomConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 74
    :cond_0
    return-void
.end method

.method public setAllowedIntents(Lorg/apache/cordova/AllowList;)V
    .locals 0
    .param p1, "allowedIntents"    # Lorg/apache/cordova/AllowList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowedIntents"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lorg/apache/cordova/AllowListPlugin;->allowedIntents:Lorg/apache/cordova/AllowList;

    .line 151
    return-void
.end method

.method public setAllowedNavigations(Lorg/apache/cordova/AllowList;)V
    .locals 0
    .param p1, "allowedNavigations"    # Lorg/apache/cordova/AllowList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowedNavigations"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lorg/apache/cordova/AllowListPlugin;->allowedNavigations:Lorg/apache/cordova/AllowList;

    .line 143
    return-void
.end method

.method public setAllowedRequests(Lorg/apache/cordova/AllowList;)V
    .locals 0
    .param p1, "allowedRequests"    # Lorg/apache/cordova/AllowList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowedRequests"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lorg/apache/cordova/AllowListPlugin;->allowedRequests:Lorg/apache/cordova/AllowList;

    .line 159
    return-void
.end method

.method public shouldAllowNavigation(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedNavigations:Lorg/apache/cordova/AllowList;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/AllowList;->isUrlAllowListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0
.end method

.method public shouldAllowRequest(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 125
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/AllowListPlugin;->shouldAllowNavigation(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedRequests:Lorg/apache/cordova/AllowList;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/AllowList;->isUrlAllowListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 125
    :goto_1
    return-object v0
.end method

.method public shouldOpenExternalUrl(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/cordova/AllowListPlugin;->allowedIntents:Lorg/apache/cordova/AllowList;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/AllowList;->isUrlAllowListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0
.end method
