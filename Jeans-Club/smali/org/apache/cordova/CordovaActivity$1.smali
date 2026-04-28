.class Lorg/apache/cordova/CordovaActivity$1;
.super Lorg/apache/cordova/CordovaInterfaceImpl;
.source "CordovaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaActivity;->makeCordovaInterface()Lorg/apache/cordova/CordovaInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/CordovaActivity;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaActivity;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/CordovaActivity;
    .param p2, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "activity"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lorg/apache/cordova/CordovaActivity$1;->this$0:Lorg/apache/cordova/CordovaActivity;

    invoke-direct {p0, p2}, Lorg/apache/cordova/CordovaInterfaceImpl;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "data"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity$1;->this$0:Lorg/apache/cordova/CordovaActivity;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/CordovaActivity;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
