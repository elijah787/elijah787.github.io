.class public Lcom/getcapacitor/util/HostMask$Simple;
.super Ljava/lang/Object;
.source "HostMask.java"

# interfaces
.implements Lcom/getcapacitor/util/HostMask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/util/HostMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation


# instance fields
.field private final maskParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "maskParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lcom/getcapacitor/util/HostMask$Simple;->maskParts:Ljava/util/List;

    .line 33
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mask parts can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parse(Ljava/lang/String;)Lcom/getcapacitor/util/HostMask$Simple;
    .locals 2
    .param p0, "mask"    # Ljava/lang/String;

    .line 36
    invoke-static {p0}, Lcom/getcapacitor/util/HostMask$Util;->splitAndReverse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/getcapacitor/util/HostMask$Simple;

    invoke-direct {v1, v0}, Lcom/getcapacitor/util/HostMask$Simple;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 10
    .param p1, "host"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 43
    return v0

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/getcapacitor/util/HostMask$Util;->splitAndReverse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 46
    .local v1, "hostParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 47
    .local v2, "hostSize":I
    iget-object v3, p0, Lcom/getcapacitor/util/HostMask$Simple;->maskParts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 48
    .local v3, "maskSize":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    if-eq v2, v3, :cond_1

    .line 49
    return v0

    .line 52
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 54
    .local v5, "minSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 55
    iget-object v7, p0, Lcom/getcapacitor/util/HostMask$Simple;->maskParts:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 56
    .local v7, "maskPart":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 57
    .local v8, "hostPart":Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/getcapacitor/util/HostMask$Util;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 58
    return v0

    .line 54
    .end local v7    # "maskPart":Ljava/lang/String;
    .end local v8    # "hostPart":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 61
    .end local v6    # "i":I
    :cond_3
    return v4
.end method
