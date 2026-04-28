.class Lcom/getcapacitor/PluginCall$PluginCallDataTypeException;
.super Ljava/lang/Exception;
.source "PluginCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/PluginCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PluginCallDataTypeException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getcapacitor/PluginCall;


# direct methods
.method constructor <init>(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/getcapacitor/PluginCall;
    .param p2, "m"    # Ljava/lang/String;

    .line 436
    iput-object p1, p0, Lcom/getcapacitor/PluginCall$PluginCallDataTypeException;->this$0:Lcom/getcapacitor/PluginCall;

    .line 437
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 438
    return-void
.end method
