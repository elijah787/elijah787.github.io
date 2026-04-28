.class public Lcom/getcapacitor/App;
.super Ljava/lang/Object;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/App$AppStatusChangeListener;,
        Lcom/getcapacitor/App$AppRestoredListener;
    }
.end annotation


# instance fields
.field private appRestoredListener:Lcom/getcapacitor/App$AppRestoredListener;

.field private isActive:Z

.field private statusChangeListener:Lcom/getcapacitor/App$AppStatusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/getcapacitor/App;->isActive:Z

    return-void
.end method


# virtual methods
.method protected fireRestoredResult(Lcom/getcapacitor/PluginResult;)V
    .locals 1
    .param p1, "result"    # Lcom/getcapacitor/PluginResult;

    .line 50
    iget-object v0, p0, Lcom/getcapacitor/App;->appRestoredListener:Lcom/getcapacitor/App$AppRestoredListener;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1}, Lcom/getcapacitor/App$AppRestoredListener;->onAppRestored(Lcom/getcapacitor/PluginResult;)V

    .line 53
    :cond_0
    return-void
.end method

.method public fireStatusChange(Z)V
    .locals 2
    .param p1, "isActive"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/getcapacitor/App;->isActive:Z

    .line 57
    iget-object v0, p0, Lcom/getcapacitor/App;->statusChangeListener:Lcom/getcapacitor/App$AppStatusChangeListener;

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/getcapacitor/App$AppStatusChangeListener;->onAppStatusChanged(Ljava/lang/Boolean;)V

    .line 60
    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/getcapacitor/App;->isActive:Z

    return v0
.end method

.method public setAppRestoredListener(Lcom/getcapacitor/App$AppRestoredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/getcapacitor/App$AppRestoredListener;

    .line 46
    iput-object p1, p0, Lcom/getcapacitor/App;->appRestoredListener:Lcom/getcapacitor/App$AppRestoredListener;

    .line 47
    return-void
.end method

.method public setStatusChangeListener(Lcom/getcapacitor/App$AppStatusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/getcapacitor/App$AppStatusChangeListener;

    .line 38
    iput-object p1, p0, Lcom/getcapacitor/App;->statusChangeListener:Lcom/getcapacitor/App$AppStatusChangeListener;

    .line 39
    return-void
.end method
