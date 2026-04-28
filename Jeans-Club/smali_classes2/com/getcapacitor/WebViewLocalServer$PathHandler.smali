.class public abstract Lcom/getcapacitor/WebViewLocalServer$PathHandler;
.super Ljava/lang/Object;
.source "WebViewLocalServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/WebViewLocalServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PathHandler"
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field protected mimeType:Ljava/lang/String;

.field private reasonPhrase:Ljava/lang/String;

.field private responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 91
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const-string v4, "OK"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "reasonPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p5, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->encoding:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->charset:Ljava/lang/String;

    .line 97
    iput p3, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->statusCode:I

    .line 98
    iput-object p4, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->reasonPhrase:Ljava/lang/String;

    .line 100
    if-nez p5, :cond_0

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "tempResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 103
    .end local v0    # "tempResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v0, p5

    .line 105
    .restart local v0    # "tempResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iput-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->responseHeaders:Ljava/util/Map;

    .line 107
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->statusCode:I

    return v0
.end method

.method public abstract handle(Landroid/net/Uri;)Ljava/io/InputStream;
.end method

.method public handle(Landroid/webkit/WebResourceRequest;)Ljava/io/InputStream;
    .locals 1
    .param p1, "request"    # Landroid/webkit/WebResourceRequest;

    .line 110
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->handle(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
