.class public Lcom/getcapacitor/util/HostMask$Any;
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
    name = "Any"
.end annotation


# instance fields
.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/getcapacitor/util/HostMask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/getcapacitor/util/HostMask;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "masks":Ljava/util/List;, "Ljava/util/List<+Lcom/getcapacitor/util/HostMask;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/getcapacitor/util/HostMask$Any;->masks:Ljava/util/List;

    .line 71
    return-void
.end method

.method static varargs parse([Ljava/lang/String;)Lcom/getcapacitor/util/HostMask$Any;
    .locals 5
    .param p0, "rawMasks"    # [Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/getcapacitor/util/HostMask$Simple;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 86
    .local v3, "raw":Ljava/lang/String;
    invoke-static {v3}, Lcom/getcapacitor/util/HostMask$Simple;->parse(Ljava/lang/String;)Lcom/getcapacitor/util/HostMask$Simple;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3    # "raw":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_0
    new-instance v1, Lcom/getcapacitor/util/HostMask$Any;

    invoke-direct {v1, v0}, Lcom/getcapacitor/util/HostMask$Any;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/getcapacitor/util/HostMask$Any;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/util/HostMask;

    .line 76
    .local v1, "mask":Lcom/getcapacitor/util/HostMask;
    invoke-interface {v1, p1}, Lcom/getcapacitor/util/HostMask;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const/4 v0, 0x1

    return v0

    .line 79
    .end local v1    # "mask":Lcom/getcapacitor/util/HostMask;
    :cond_0
    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
