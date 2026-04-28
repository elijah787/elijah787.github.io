.class public Lcom/getcapacitor/BridgeWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BridgeWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/BridgeWebChromeClient$PermissionListener;,
        Lcom/getcapacitor/BridgeWebChromeClient$ActivityResultListener;
    }
.end annotation


# instance fields
.field private activityLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private activityListener:Lcom/getcapacitor/BridgeWebChromeClient$ActivityResultListener;

.field private bridge:Lcom/getcapacitor/Bridge;

.field private permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private permissionListener:Lcom/getcapacitor/BridgeWebChromeClient$PermissionListener;


# direct methods
.method public static synthetic $r8$lambda$2JBt1-mcEXLQVjcBFTzQMerNecQ(Lcom/getcapacitor/BridgeWebChromeClient;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/getcapacitor/BridgeWebChromeClient;->lambda$onShowFileChooser$12(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5UnWO4Y2Fd_lwJ337m5xuPLhRVk(Lcom/getcapacitor/BridgeWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/getcapacitor/BridgeWebChromeClient;->lambda$onGeolocationPermissionsShowPrompt$11(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oeI4pDFj5OlJpza3bpk1qgq3j98(Lcom/getcapacitor/BridgeWebChromeClient;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/getcapacitor/BridgeWebChromeClient;->lambda$new$1(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xze8TXtu7pSZVmwGgEN_UZU2Gfg(Lcom/getcapacitor/BridgeWebChromeClient;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/getcapacitor/BridgeWebChromeClient;->lambda$new$0(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/getcapacitor/Bridge;)V
    .locals 3
    .param p1, "bridge"    # Lcom/getcapacitor/Bridge;

    .line 56
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    .line 59
    new-instance v0, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda4;-><init>(Lcom/getcapacitor/BridgeWebChromeClient;)V

    .line 69
    .local v0, "permissionCallback":Landroidx/activity/result/ActivityResultCallback;, "Landroidx/activity/result/ActivityResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/getcapacitor/Bridge;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    iput-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 70
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v2, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda5;-><init>(Lcom/getcapacitor/BridgeWebChromeClient;)V

    .line 71
    invoke-virtual {p1, v1, v2}, Lcom/getcapacitor/Bridge;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    iput-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->activityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 79
    return-void
.end method

.method private createImageFile(Landroid/app/Activity;)Ljava/io/File;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "timeStamp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "imageFileName":Ljava/lang/String;
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 508
    .local v2, "storageDir":Ljava/io/File;
    const-string v3, ".jpg"

    invoke-static {v1, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method private createImageFileUri()Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 498
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0, v0}, Lcom/getcapacitor/BridgeWebChromeClient;->createImageFile(Landroid/app/Activity;)Ljava/io/File;

    move-result-object v1

    .line 499
    .local v1, "photoFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v3}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private getValidTypes([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "currentTypes"    # [Ljava/lang/String;

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v0, "validTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 448
    .local v1, "mtm":Landroid/webkit/MimeTypeMap;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 449
    .local v4, "mime":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, "extension":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 452
    .local v6, "extensionMime":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 453
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    .end local v5    # "extension":Ljava/lang/String;
    .end local v6    # "extensionMime":Ljava/lang/String;
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 456
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 455
    :cond_1
    :goto_1
    nop

    .line 448
    .end local v4    # "mime":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 459
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 460
    .local v2, "validObj":[Ljava/lang/Object;
    array-length v3, v2

    const-class v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private isMediaCaptureSupported()Z
    .locals 3

    .line 338
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "permissions":[Ljava/lang/String;
    iget-object v2, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    .line 340
    invoke-virtual {v2}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/getcapacitor/util/PermissionHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    .line 341
    invoke-virtual {v2}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/getcapacitor/util/PermissionHelper;->hasDefinedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 339
    :goto_1
    return v0
.end method

.method private synthetic lambda$new$0(Ljava/util/Map;)V
    .locals 4
    .param p1, "isGranted"    # Ljava/util/Map;

    .line 60
    iget-object v0, p0, Lcom/getcapacitor/BridgeWebChromeClient;->permissionListener:Lcom/getcapacitor/BridgeWebChromeClient$PermissionListener;

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x1

    .line 62
    .local v0, "granted":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 63
    .local v2, "permission":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 64
    .end local v2    # "permission":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->permissionListener:Lcom/getcapacitor/BridgeWebChromeClient$PermissionListener;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/getcapacitor/BridgeWebChromeClient$PermissionListener;->onPermissionSelect(Ljava/lang/Boolean;)V

    .line 67
    .end local v0    # "granted":Z
    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(Landroidx/activity/result/ActivityResult;)V
    .locals 1
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    .line 74
    iget-object v0, p0, Lcom/getcapacitor/BridgeWebChromeClient;->activityListener:Lcom/getcapacitor/BridgeWebChromeClient$ActivityResultListener;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lcom/getcapacitor/BridgeWebChromeClient$ActivityResultListener;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    .line 77
    :cond_0
    return-void
.end method

.method private synthetic lambda$onGeolocationPermissionsShowPrompt$11(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "isGranted"    # Ljava/lang/Boolean;

    .line 282
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {p1, p2, v1, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 285
    :cond_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "coarsePermission":[Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    .line 288
    invoke-virtual {v3}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/getcapacitor/util/PermissionHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-interface {p1, p2, v1, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 292
    :cond_1
    invoke-interface {p1, p2, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 295
    .end local v0    # "coarsePermission":[Ljava/lang/String;
    :goto_0
    return-void
.end method

.method static synthetic lambda$onJsAlert$3(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "result"    # Landroid/webkit/JsResult;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "buttonIndex"    # I

    .line 153
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 154
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    .line 155
    return-void
.end method

.method static synthetic lambda$onJsAlert$4(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "result"    # Landroid/webkit/JsResult;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    .line 161
    return-void
.end method

.method static synthetic lambda$onJsConfirm$5(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "result"    # Landroid/webkit/JsResult;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "buttonIndex"    # I

    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 193
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    .line 194
    return-void
.end method

.method static synthetic lambda$onJsConfirm$6(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "result"    # Landroid/webkit/JsResult;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "buttonIndex"    # I

    .line 199
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 200
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    .line 201
    return-void
.end method

.method static synthetic lambda$onJsConfirm$7(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "result"    # Landroid/webkit/JsResult;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 205
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    .line 207
    return-void
.end method

.method static synthetic lambda$onJsPrompt$10(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "result"    # Landroid/webkit/JsPromptResult;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 256
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 257
    invoke-virtual {p0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 258
    return-void
.end method

.method static synthetic lambda$onJsPrompt$8(Landroid/widget/EditText;Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "input"    # Landroid/widget/EditText;
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "buttonIndex"    # I

    .line 241
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 243
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "inputText1":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method static synthetic lambda$onJsPrompt$9(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "result"    # Landroid/webkit/JsPromptResult;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "buttonIndex"    # I

    .line 250
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 251
    invoke-virtual {p0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 252
    return-void
.end method

.method static synthetic lambda$onPermissionRequest$2(Landroid/webkit/PermissionRequest;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "request"    # Landroid/webkit/PermissionRequest;
    .param p1, "isGranted"    # Ljava/lang/Boolean;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->deny()V

    .line 126
    :goto_0
    return-void
.end method

.method private synthetic lambda$onShowFileChooser$12(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;ZLjava/lang/Boolean;)V
    .locals 2
    .param p1, "filePathCallback"    # Landroid/webkit/ValueCallback;
    .param p2, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .param p3, "captureVideo"    # Z
    .param p4, "isGranted"    # Ljava/lang/Boolean;

    .line 320
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0, p1, p2, p3}, Lcom/getcapacitor/BridgeWebChromeClient;->showMediaCaptureOrFilePicker(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Z)V

    goto :goto_0

    .line 323
    :cond_0
    const-string v0, "FileChooser"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera permission not granted"

    invoke-static {v0, v1}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 326
    :goto_0
    return-void
.end method

.method static synthetic lambda$showFilePicker$15(Landroid/webkit/ValueCallback;Landroidx/activity/result/ActivityResult;)V
    .locals 5
    .param p0, "filePathCallback"    # Landroid/webkit/ValueCallback;
    .param p1, "activityResult"    # Landroidx/activity/result/ActivityResult;

    .line 427
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    .line 428
    .local v0, "resultIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .line 430
    .local v1, "numFiles":I
    new-array v2, v1, [Landroid/net/Uri;

    .line 431
    .local v2, "result":[Landroid/net/Uri;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 432
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    .line 431
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "numFiles":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 435
    .end local v2    # "result":[Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    invoke-static {v1, v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v2

    .line 437
    .restart local v2    # "result":[Landroid/net/Uri;
    :goto_1
    invoke-interface {p0, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 438
    return-void
.end method

.method static synthetic lambda$showImageCapturePicker$13(Landroid/net/Uri;Landroid/webkit/ValueCallback;Landroidx/activity/result/ActivityResult;)V
    .locals 3
    .param p0, "imageFileUri"    # Landroid/net/Uri;
    .param p1, "filePathCallback"    # Landroid/webkit/ValueCallback;
    .param p2, "activityResult"    # Landroidx/activity/result/ActivityResult;

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "result":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 382
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    move-object v0, v1

    .line 384
    :cond_0
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 385
    return-void
.end method

.method static synthetic lambda$showVideoCapturePicker$14(Landroid/webkit/ValueCallback;Landroidx/activity/result/ActivityResult;)V
    .locals 4
    .param p0, "filePathCallback"    # Landroid/webkit/ValueCallback;
    .param p1, "activityResult"    # Landroidx/activity/result/ActivityResult;

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "result":[Landroid/net/Uri;
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 402
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object v0, v1

    .line 404
    :cond_0
    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method private showFilePicker(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 4
    .param p2, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    .line 412
    .local p1, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 414
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const-string v3, "."

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    :cond_1
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/getcapacitor/BridgeWebChromeClient;->getValidTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "validTypes":[Ljava/lang/String;
    const-string v2, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    .end local v1    # "validTypes":[Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v1, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda11;-><init>(Landroid/webkit/ValueCallback;)V

    iput-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->activityListener:Lcom/getcapacitor/BridgeWebChromeClient$ActivityResultListener;

    .line 439
    iget-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->activityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_0

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 443
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private showImageCapturePicker(Landroid/webkit/ValueCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .line 365
    .local p1, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "takePictureIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 367
    return v2

    .line 372
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/getcapacitor/BridgeWebChromeClient;->createImageFileUri()Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .local v1, "imageFileUri":Landroid/net/Uri;
    nop

    .line 377
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 378
    new-instance v2, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1, p1}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda7;-><init>(Landroid/net/Uri;Landroid/webkit/ValueCallback;)V

    iput-object v2, p0, Lcom/getcapacitor/BridgeWebChromeClient;->activityListener:Lcom/getcapacitor/BridgeWebChromeClient$ActivityResultListener;

    .line 386
    iget-object v2, p0, Lcom/getcapacitor/BridgeWebChromeClient;->activityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v2, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 388
    const/4 v2, 0x1

    return v2

    .line 373
    .end local v1    # "imageFileUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 374
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create temporary media capture file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 375
    return v2
.end method

.method private showMediaCaptureOrFilePicker(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Z)V
    .locals 4
    .param p2, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .param p3, "isVideo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            "Z)V"
        }
    .end annotation

    .line 350
    .local p1, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 351
    .local v0, "isVideoCaptureSupported":Z
    :goto_0
    const/4 v1, 0x0

    .line 352
    .local v1, "shown":Z
    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 353
    invoke-direct {p0, p1}, Lcom/getcapacitor/BridgeWebChromeClient;->showVideoCapturePicker(Landroid/webkit/ValueCallback;)Z

    move-result v1

    goto :goto_1

    .line 355
    :cond_1
    invoke-direct {p0, p1}, Lcom/getcapacitor/BridgeWebChromeClient;->showImageCapturePicker(Landroid/webkit/ValueCallback;)Z

    move-result v1

    .line 357
    :goto_1
    if-nez v1, :cond_2

    .line 358
    const-string v2, "FileChooser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Media capture intent could not be launched. Falling back to default file picker."

    invoke-static {v2, v3}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/BridgeWebChromeClient;->showFilePicker(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    .line 361
    :cond_2
    return-void
.end method

.method private showVideoCapturePicker(Landroid/webkit/ValueCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .line 393
    .local p1, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "takeVideoIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 395
    const/4 v1, 0x0

    return v1

    .line 398
    :cond_0
    new-instance v1, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda15;-><init>(Landroid/webkit/ValueCallback;)V

    iput-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->activityListener:Lcom/getcapacitor/BridgeWebChromeClient$ActivityResultListener;

    .line 406
    iget-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->activityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 408
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public isValidMsg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 488
    nop

    .line 489
    const-string v0, "%cresult %c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const-string v0, "%cnative %c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    const-string v0, "[object Object]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    const-string v0, "console.groupEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 488
    :goto_0
    return v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .line 465
    const-string v0, "Console"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/getcapacitor/BridgeWebChromeClient;->isValidMsg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 467
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 469
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 470
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 471
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 467
    const-string v3, "File: %s - Line %d - Msg: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage$MessageLevel;->name()Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "level":Ljava/lang/String;
    const-string v4, "ERROR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 476
    :cond_0
    const-string v4, "WARNING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    invoke-static {v0, v1}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_1
    const-string v4, "TIP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 479
    invoke-static {v0, v1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_2
    invoke-static {v0, v1}, Lcom/getcapacitor/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .end local v1    # "msg":Ljava/lang/String;
    .end local v3    # "level":Ljava/lang/String;
    :cond_3
    :goto_0
    return v2
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .line 275
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGeolocationPermissionsShowPrompt: DOING IT HERE FOR ORIGIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 277
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "geoPermissions":[Ljava/lang/String;
    iget-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/getcapacitor/util/PermissionHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    new-instance v1, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda3;-><init>(Lcom/getcapacitor/BridgeWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->permissionListener:Lcom/getcapacitor/BridgeWebChromeClient$PermissionListener;

    .line 296
    iget-object v1, p0, Lcom/getcapacitor/BridgeWebChromeClient;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p2, p1, v1, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 300
    const-string v1, "onGeolocationPermissionsShowPrompt: has required permission"

    invoke-static {v1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 103
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .line 143
    iget-object v0, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 144
    return v1

    .line 147
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    nop

    .line 149
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda1;

    invoke-direct {v3, p4}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/JsResult;)V

    .line 150
    const-string v4, "OK"

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda2;

    invoke-direct {v3, p4}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda2;-><init>(Landroid/webkit/JsResult;)V

    .line 157
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 166
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 168
    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .line 181
    iget-object v0, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 182
    return v1

    .line 185
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    nop

    .line 188
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda12;

    invoke-direct {v3, p4}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda12;-><init>(Landroid/webkit/JsResult;)V

    .line 189
    const-string v4, "OK"

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda13;

    invoke-direct {v3, p4}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda13;-><init>(Landroid/webkit/JsResult;)V

    .line 196
    const-string v4, "Cancel"

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda14;

    invoke-direct {v3, p4}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda14;-><init>(Landroid/webkit/JsResult;)V

    .line 203
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 212
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 214
    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .line 228
    iget-object v0, p0, Lcom/getcapacitor/BridgeWebChromeClient;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 229
    return v1

    .line 232
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 235
    .local v2, "input":Landroid/widget/EditText;
    nop

    .line 236
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 237
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2, p5}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda8;-><init>(Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V

    .line 238
    const-string v5, "OK"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda9;

    invoke-direct {v4, p5}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda9;-><init>(Landroid/webkit/JsPromptResult;)V

    .line 247
    const-string v5, "Cancel"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda10;

    invoke-direct {v4, p5}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda10;-><init>(Landroid/webkit/JsPromptResult;)V

    .line 254
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 263
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 265
    return v1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 5
    .param p1, "request"    # Landroid/webkit/PermissionRequest;

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 109
    .local v0, "isRequestPermissionRequired":Z
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    const-string v3, "android.permission.CAMERA"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    .line 118
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 119
    .local v2, "permissions":[Ljava/lang/String;
    new-instance v3, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda6;-><init>(Landroid/webkit/PermissionRequest;)V

    iput-object v3, p0, Lcom/getcapacitor/BridgeWebChromeClient;->permissionListener:Lcom/getcapacitor/BridgeWebChromeClient$PermissionListener;

    .line 127
    iget-object v3, p0, Lcom/getcapacitor/BridgeWebChromeClient;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v3, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 128
    .end local v2    # "permissions":[Ljava/lang/String;
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 131
    :goto_1
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 91
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 92
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 93
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 7
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 310
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 311
    .local v0, "acceptTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v1

    .line 312
    .local v1, "captureEnabled":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v4, "image/*"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 313
    .local v4, "capturePhoto":Z
    :goto_0
    if-eqz v1, :cond_1

    const-string v5, "video/*"

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 314
    .local v2, "captureVideo":Z
    :cond_1
    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 331
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/getcapacitor/BridgeWebChromeClient;->showFilePicker(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    goto :goto_2

    .line 315
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/getcapacitor/BridgeWebChromeClient;->isMediaCaptureSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 316
    invoke-direct {p0, p2, p3, v2}, Lcom/getcapacitor/BridgeWebChromeClient;->showMediaCaptureOrFilePicker(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Z)V

    goto :goto_2

    .line 318
    :cond_4
    new-instance v5, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p2, p3, v2}, Lcom/getcapacitor/BridgeWebChromeClient$$ExternalSyntheticLambda0;-><init>(Lcom/getcapacitor/BridgeWebChromeClient;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Z)V

    iput-object v5, p0, Lcom/getcapacitor/BridgeWebChromeClient;->permissionListener:Lcom/getcapacitor/BridgeWebChromeClient$PermissionListener;

    .line 327
    const-string v5, "android.permission.CAMERA"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "camPermission":[Ljava/lang/String;
    iget-object v6, p0, Lcom/getcapacitor/BridgeWebChromeClient;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v6, v5}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 329
    .end local v5    # "camPermission":[Ljava/lang/String;
    nop

    .line 334
    :goto_2
    return v3
.end method
