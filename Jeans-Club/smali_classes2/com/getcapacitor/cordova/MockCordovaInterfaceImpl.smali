.class public Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;
.super Lorg/apache/cordova/CordovaInterfaceImpl;
.source "MockCordovaInterfaceImpl.java"


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/CordovaInterfaceImpl;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/concurrent/ExecutorService;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getActivityResultCallback()Lorg/apache/cordova/CordovaPlugin;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    return-object v0
.end method

.method public handlePermissionResult(I[Ljava/lang/String;[I)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;->permissionResultCallbacks:Lorg/apache/cordova/CallbackMap;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackMap;->getAndRemoveCallback(I)Landroid/util/Pair;

    move-result-object v0

    .line 32
    .local v0, "callback":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/apache/cordova/CordovaPlugin;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/apache/cordova/CordovaPlugin;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    .line 34
    const/4 v1, 0x1

    return v1

    .line 37
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
