.class public Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;
.super Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;
.source "MockCordovaWebViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapacitorEvalBridgeMode"
.end annotation


# instance fields
.field private final cordova:Lorg/apache/cordova/CordovaInterface;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$KZrWPdHN4k-RiuqG_qj2jYFekSE(Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;->lambda$onNativeToJsMessageAvailable$0(Lorg/apache/cordova/NativeToJsMessageQueue;)V

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Lorg/apache/cordova/CordovaInterface;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "cordova"    # Lorg/apache/cordova/CordovaInterface;

    .line 66
    invoke-direct {p0}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;->webView:Landroid/webkit/WebView;

    .line 68
    iput-object p2, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 69
    return-void
.end method

.method private synthetic lambda$onNativeToJsMessageAvailable$0(Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 3
    .param p1, "queue"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .line 77
    invoke-virtual {p1}, Lorg/apache/cordova/NativeToJsMessageQueue;->popAndEncodeAsJs()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "js":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public onNativeToJsMessageAvailable(Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 2
    .param p1, "queue"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .line 73
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 74
    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode$$ExternalSyntheticLambda0;-><init>(Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;Lorg/apache/cordova/NativeToJsMessageQueue;)V

    .line 75
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
