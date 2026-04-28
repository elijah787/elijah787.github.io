.class public Lcom/getcapacitor/BridgeFragment;
.super Landroidx/fragment/app/Fragment;
.source "BridgeFragment.java"


# static fields
.field private static final ARG_START_DIR:Ljava/lang/String; = "startDir"


# instance fields
.field protected bridge:Lcom/getcapacitor/Bridge;

.field private config:Lcom/getcapacitor/CapConfig;

.field private final initialPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;"
        }
    .end annotation
.end field

.field protected keepRunning:Z

.field private final webViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/getcapacitor/WebViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/getcapacitor/BridgeFragment;->keepRunning:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/BridgeFragment;->initialPlugins:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getcapacitor/BridgeFragment;->config:Lcom/getcapacitor/CapConfig;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/BridgeFragment;->webViewListeners:Ljava/util/List;

    .line 34
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/getcapacitor/BridgeFragment;
    .locals 3
    .param p0, "startDir"    # Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/getcapacitor/BridgeFragment;

    invoke-direct {v0}, Lcom/getcapacitor/BridgeFragment;-><init>()V

    .line 45
    .local v0, "fragment":Lcom/getcapacitor/BridgeFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "startDir"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/getcapacitor/BridgeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public addPlugin(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "plugin":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/getcapacitor/Plugin;>;"
    iget-object v0, p0, Lcom/getcapacitor/BridgeFragment;->initialPlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public addWebViewListener(Lcom/getcapacitor/WebViewListener;)V
    .locals 1
    .param p1, "webViewListener"    # Lcom/getcapacitor/WebViewListener;

    .line 64
    iget-object v0, p0, Lcom/getcapacitor/BridgeFragment;->webViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public getBridge()Lcom/getcapacitor/Bridge;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/getcapacitor/BridgeFragment;->bridge:Lcom/getcapacitor/Bridge;

    return-object v0
.end method

.method protected load(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 71
    const-string v0, "Loading Bridge with BridgeFragment"

    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/getcapacitor/BridgeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "args":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 76
    .local v1, "startDir":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/getcapacitor/BridgeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "startDir"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    :cond_0
    new-instance v2, Lcom/getcapacitor/Bridge$Builder;

    invoke-direct {v2, p0}, Lcom/getcapacitor/Bridge$Builder;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 82
    invoke-virtual {v2, p1}, Lcom/getcapacitor/Bridge$Builder;->setInstanceState(Landroid/os/Bundle;)Lcom/getcapacitor/Bridge$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/getcapacitor/BridgeFragment;->initialPlugins:Ljava/util/List;

    .line 83
    invoke-virtual {v2, v3}, Lcom/getcapacitor/Bridge$Builder;->setPlugins(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/getcapacitor/BridgeFragment;->config:Lcom/getcapacitor/CapConfig;

    .line 84
    invoke-virtual {v2, v3}, Lcom/getcapacitor/Bridge$Builder;->setConfig(Lcom/getcapacitor/CapConfig;)Lcom/getcapacitor/Bridge$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/getcapacitor/BridgeFragment;->webViewListeners:Ljava/util/List;

    .line 85
    invoke-virtual {v2, v3}, Lcom/getcapacitor/Bridge$Builder;->addWebViewListeners(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/getcapacitor/Bridge$Builder;->create()Lcom/getcapacitor/Bridge;

    move-result-object v2

    iput-object v2, p0, Lcom/getcapacitor/BridgeFragment;->bridge:Lcom/getcapacitor/Bridge;

    .line 88
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v2, v1}, Lcom/getcapacitor/Bridge;->setServerAssetPath(Ljava/lang/String;)V

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/getcapacitor/BridgeFragment;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v2}, Lcom/getcapacitor/Bridge;->shouldKeepRunning()Z

    move-result v2

    iput-boolean v2, p0, Lcom/getcapacitor/BridgeFragment;->keepRunning:Z

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 118
    sget v0, Lcom/getcapacitor/android/R$layout;->fragment_bridge:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/getcapacitor/BridgeFragment;->bridge:Lcom/getcapacitor/Bridge;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->onDestroy()V

    .line 133
    :cond_0
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 99
    sget-object v0, Lcom/getcapacitor/android/R$styleable;->bridge_fragment:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/getcapacitor/android/R$styleable;->bridge_fragment_start_dir:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "c":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "startDir":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v3, "args":Landroid/os/Bundle;
    const-string v4, "startDir"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v3}, Lcom/getcapacitor/BridgeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    .end local v2    # "startDir":Ljava/lang/String;
    .end local v3    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 123
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/getcapacitor/BridgeFragment;->load(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public setConfig(Lcom/getcapacitor/CapConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/getcapacitor/CapConfig;

    .line 56
    iput-object p1, p0, Lcom/getcapacitor/BridgeFragment;->config:Lcom/getcapacitor/CapConfig;

    .line 57
    return-void
.end method
