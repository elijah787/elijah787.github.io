.class public Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;
.super Ljava/lang/Object;
.source "StatusBarInfo.java"


# instance fields
.field private color:Ljava/lang/String;

.field private overlays:Z

.field private style:Ljava/lang/String;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->style:Ljava/lang/String;

    return-object v0
.end method

.method public isOverlays()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->overlays:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->visible:Z

    return v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->color:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setOverlays(Z)V
    .locals 0
    .param p1, "overlays"    # Z

    .line 15
    iput-boolean p1, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->overlays:Z

    .line 16
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "style"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->style:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/capacitorjs/plugins/statusbar/StatusBarInfo;->visible:Z

    .line 24
    return-void
.end method
