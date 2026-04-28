.class public Lcom/capacitorjs/plugins/statusbar/StatusBar;
.super Ljava/lang/Object;
.source "StatusBar.java"


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private currentStatusBarColor:I

.field private final defaultStyle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 22
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    iput v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->currentStatusBarColor:I

    .line 23
    invoke-direct {p0}, Lcom/capacitorjs/plugins/statusbar/StatusBar;->getStyle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->defaultStyle:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private getIsOverlaid()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 82
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0
.end method

.method private getStyle()Ljava/lang/String;
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "decorView":Landroid/view/View;
    const-string v1, "DARK"

    .line 102
    .local v1, "style":Ljava/lang/String;
    iget-object v2, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    .line 103
    .local v2, "windowInsetsControllerCompat":Landroidx/core/view/WindowInsetsControllerCompat;
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsControllerCompat;->isAppearanceLightStatusBars()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const-string v1, "LIGHT"

    .line 106
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getInfo()Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;
    .locals 8

    .line 88
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 89
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    .line 90
    .local v1, "windowInsetsCompat":Landroidx/core/view/WindowInsetsCompat;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 91
    .local v4, "isVisible":Z
    :goto_0
    new-instance v5, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;

    invoke-direct {v5}, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;-><init>()V

    .line 92
    .local v5, "info":Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;
    invoke-direct {p0}, Lcom/capacitorjs/plugins/statusbar/StatusBar;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->setStyle(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/capacitorjs/plugins/statusbar/StatusBar;->getIsOverlaid()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->setOverlays(Z)V

    .line 94
    invoke-virtual {v5, v4}, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->setVisible(Z)V

    .line 95
    new-array v2, v2, [Ljava/lang/Object;

    const v6, 0xffffff

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v7

    and-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v3, "#%06X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->setColor(Ljava/lang/String;)V

    .line 96
    return-object v5
.end method

.method public hide()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "decorView":Landroid/view/View;
    iget-object v1, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    .line 51
    .local v1, "windowInsetsControllerCompat":Landroidx/core/view/WindowInsetsControllerCompat;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 52
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 40
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 41
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 42
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 43
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 45
    iput p1, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->currentStatusBarColor:I

    .line 46
    return-void
.end method

.method public setOverlaysWebView(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "overlays"    # Ljava/lang/Boolean;

    .line 62
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 64
    .local v1, "uiOptions":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    or-int/lit16 v2, v1, 0x100

    or-int/lit16 v1, v2, 0x400

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 68
    iget-object v2, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getStatusBarColor()I

    move-result v2

    iput v2, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->currentStatusBarColor:I

    .line 69
    iget-object v2, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 72
    :cond_0
    and-int/lit16 v2, v1, -0x101

    and-int/lit16 v1, v2, -0x401

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 75
    iget-object v2, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->currentStatusBarColor:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 77
    :goto_0
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 4
    .param p1, "style"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 28
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "decorView":Landroid/view/View;
    const-string v2, "DEFAULT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    iget-object p1, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->defaultStyle:Ljava/lang/String;

    .line 34
    :cond_0
    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    .line 35
    .local v2, "windowInsetsControllerCompat":Landroidx/core/view/WindowInsetsControllerCompat;
    const-string v3, "DARK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 36
    return-void
.end method

.method public show()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "decorView":Landroid/view/View;
    iget-object v1, p0, Lcom/capacitorjs/plugins/statusbar/StatusBar;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    .line 57
    .local v1, "windowInsetsControllerCompat":Landroidx/core/view/WindowInsetsControllerCompat;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    .line 58
    return-void
.end method
