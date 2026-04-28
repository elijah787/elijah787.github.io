.class public Lorg/apache/cordova/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CordovaPermissionHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deliverPermissionResult(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V
    .locals 4
    .param p0, "plugin"    # Lorg/apache/cordova/CordovaPlugin;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "plugin",
            "requestCode",
            "permissions"
        }
    .end annotation

    .line 78
    array-length v0, p2

    new-array v0, v0, [I

    .line 79
    .local v0, "requestResults":[I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 83
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/cordova/CordovaPlugin;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    .line 84
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/cordova/CordovaPlugin;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "CordovaPermissionHelper"

    const-string v3, "JSONException when delivering permissions results"

    invoke-static {v2, v3, v1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public static hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z
    .locals 1
    .param p0, "plugin"    # Lorg/apache/cordova/CordovaPlugin;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "plugin",
            "permission"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/cordova/CordovaPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V
    .locals 1
    .param p0, "plugin"    # Lorg/apache/cordova/CordovaPlugin;
    .param p1, "requestCode"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "plugin",
            "requestCode",
            "permission"
        }
    .end annotation

    .line 45
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/cordova/PermissionHelper;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V
    .locals 1
    .param p0, "plugin"    # Lorg/apache/cordova/CordovaPlugin;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "plugin",
            "requestCode",
            "permissions"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/cordova/CordovaPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/cordova/CordovaInterface;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    .line 60
    return-void
.end method
