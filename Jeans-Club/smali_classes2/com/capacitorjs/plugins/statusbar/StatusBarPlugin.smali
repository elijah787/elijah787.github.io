.class public Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;
.super Lcom/getcapacitor/Plugin;
.source "StatusBarPlugin.java"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
    name = "StatusBar"
.end annotation


# instance fields
.field private implementation:Lcom/capacitorjs/plugins/statusbar/StatusBar;


# direct methods
.method public static synthetic $r8$lambda$MTTra7gDMhMi1iFQFvEyI1gsSRs(Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;Ljava/lang/Boolean;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->lambda$setOverlaysWebView$4(Ljava/lang/Boolean;Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a2MdC3orpK3J5fTV958K4OfK-GY(Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->lambda$hide$2(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ppj5xu1JGly89h8pUR4RAHA0bvw(Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->lambda$setStyle$0(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tHQPGfYR1VFm1Kl2P_TawKGDpX4(Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->lambda$setBackgroundColor$1(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vO3zbMecbVUzgQGcRGDQvh65yj8(Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->lambda$show$3(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    return-void
.end method

.method private synthetic lambda$hide$2(Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 66
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->implementation:Lcom/capacitorjs/plugins/statusbar/StatusBar;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/statusbar/StatusBar;->hide()V

    .line 67
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 68
    return-void
.end method

.method private synthetic lambda$setBackgroundColor$1(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/getcapacitor/PluginCall;

    .line 50
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/util/WebColor;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "parsedColor":I
    iget-object v1, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->implementation:Lcom/capacitorjs/plugins/statusbar/StatusBar;

    invoke-virtual {v1, v0}, Lcom/capacitorjs/plugins/statusbar/StatusBar;->setBackgroundColor(I)V

    .line 52
    invoke-virtual {p2}, Lcom/getcapacitor/PluginCall;->resolve()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "parsedColor":I
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "Invalid color provided. Must be a hex string (ex: #ff0000"

    invoke-virtual {p2, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 56
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method private synthetic lambda$setOverlaysWebView$4(Ljava/lang/Boolean;Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "overlays"    # Ljava/lang/Boolean;
    .param p2, "call"    # Lcom/getcapacitor/PluginCall;

    .line 102
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->implementation:Lcom/capacitorjs/plugins/statusbar/StatusBar;

    invoke-virtual {v0, p1}, Lcom/capacitorjs/plugins/statusbar/StatusBar;->setOverlaysWebView(Ljava/lang/Boolean;)V

    .line 103
    invoke-virtual {p2}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 104
    return-void
.end method

.method private synthetic lambda$setStyle$0(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/getcapacitor/PluginCall;

    .line 32
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->implementation:Lcom/capacitorjs/plugins/statusbar/StatusBar;

    invoke-virtual {v0, p1}, Lcom/capacitorjs/plugins/statusbar/StatusBar;->setStyle(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 34
    return-void
.end method

.method private synthetic lambda$show$3(Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 78
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->implementation:Lcom/capacitorjs/plugins/statusbar/StatusBar;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/statusbar/StatusBar;->show()V

    .line 79
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 80
    return-void
.end method


# virtual methods
.method public getInfo(Lcom/getcapacitor/PluginCall;)V
    .locals 4
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->implementation:Lcom/capacitorjs/plugins/statusbar/StatusBar;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/statusbar/StatusBar;->getInfo()Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;

    move-result-object v0

    .line 88
    .local v0, "info":Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;
    new-instance v1, Lcom/getcapacitor/JSObject;

    invoke-direct {v1}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 89
    .local v1, "data":Lcom/getcapacitor/JSObject;
    const-string v2, "visible"

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->isVisible()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Z)Lcom/getcapacitor/JSObject;

    .line 90
    const-string v2, "style"

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 91
    const-string v2, "color"

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->getColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 92
    const-string v2, "overlays"

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->isOverlays()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Z)Lcom/getcapacitor/JSObject;

    .line 93
    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 94
    return-void
.end method

.method public hide(Lcom/getcapacitor/PluginCall;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    new-instance v1, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin$$ExternalSyntheticLambda1;-><init>(Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;Lcom/getcapacitor/PluginCall;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public load()V
    .locals 2

    .line 18
    new-instance v0, Lcom/capacitorjs/plugins/statusbar/StatusBar;

    invoke-virtual {p0}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/capacitorjs/plugins/statusbar/StatusBar;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->implementation:Lcom/capacitorjs/plugins/statusbar/StatusBar;

    .line 19
    return-void
.end method

.method public setBackgroundColor(Lcom/getcapacitor/PluginCall;)V
    .locals 3
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 40
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "color":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 42
    const-string v1, "Color must be provided"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 43
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v1

    new-instance v2, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin$$ExternalSyntheticLambda0;-><init>(Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    .line 47
    invoke-virtual {v1, v2}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public setOverlaysWebView(Lcom/getcapacitor/PluginCall;)V
    .locals 3
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "overlay"

    invoke-virtual {p1, v1, v0}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 99
    .local v0, "overlays":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v1

    new-instance v2, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin$$ExternalSyntheticLambda3;-><init>(Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;Ljava/lang/Boolean;Lcom/getcapacitor/PluginCall;)V

    .line 100
    invoke-virtual {v1, v2}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public setStyle(Lcom/getcapacitor/PluginCall;)V
    .locals 3
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 23
    const-string v0, "style"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "style":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 25
    const-string v1, "Style must be provided"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 26
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v1

    new-instance v2, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin$$ExternalSyntheticLambda4;-><init>(Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    .line 30
    invoke-virtual {v1, v2}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public show(Lcom/getcapacitor/PluginCall;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    new-instance v1, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin$$ExternalSyntheticLambda2;-><init>(Lcom/capacitorjs/plugins/statusbar/StatusBarPlugin;Lcom/getcapacitor/PluginCall;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method
