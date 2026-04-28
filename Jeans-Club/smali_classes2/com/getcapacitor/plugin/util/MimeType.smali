.class final enum Lcom/getcapacitor/plugin/util/MimeType;
.super Ljava/lang/Enum;
.source "MimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/getcapacitor/plugin/util/MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/getcapacitor/plugin/util/MimeType;

.field public static final enum APPLICATION_JSON:Lcom/getcapacitor/plugin/util/MimeType;

.field public static final enum APPLICATION_VND_API_JSON:Lcom/getcapacitor/plugin/util/MimeType;

.field public static final enum TEXT_HTML:Lcom/getcapacitor/plugin/util/MimeType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/getcapacitor/plugin/util/MimeType;
    .locals 3

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/getcapacitor/plugin/util/MimeType;

    const/4 v1, 0x0

    sget-object v2, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_VND_API_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/getcapacitor/plugin/util/MimeType;->TEXT_HTML:Lcom/getcapacitor/plugin/util/MimeType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/getcapacitor/plugin/util/MimeType;

    const/4 v1, 0x0

    const-string v2, "application/json"

    const-string v3, "APPLICATION_JSON"

    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/util/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    .line 5
    new-instance v0, Lcom/getcapacitor/plugin/util/MimeType;

    const/4 v1, 0x1

    const-string v2, "application/vnd.api+json"

    const-string v3, "APPLICATION_VND_API_JSON"

    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/util/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_VND_API_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    .line 6
    new-instance v0, Lcom/getcapacitor/plugin/util/MimeType;

    const/4 v1, 0x2

    const-string v2, "text/html"

    const-string v3, "TEXT_HTML"

    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/util/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/getcapacitor/plugin/util/MimeType;->TEXT_HTML:Lcom/getcapacitor/plugin/util/MimeType;

    .line 3
    invoke-static {}, Lcom/getcapacitor/plugin/util/MimeType;->$values()[Lcom/getcapacitor/plugin/util/MimeType;

    move-result-object v0

    sput-object v0, Lcom/getcapacitor/plugin/util/MimeType;->$VALUES:[Lcom/getcapacitor/plugin/util/MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/getcapacitor/plugin/util/MimeType;->value:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/MimeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/getcapacitor/plugin/util/MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/getcapacitor/plugin/util/MimeType;

    return-object v0
.end method

.method public static values()[Lcom/getcapacitor/plugin/util/MimeType;
    .locals 1

    .line 3
    sget-object v0, Lcom/getcapacitor/plugin/util/MimeType;->$VALUES:[Lcom/getcapacitor/plugin/util/MimeType;

    invoke-virtual {v0}, [Lcom/getcapacitor/plugin/util/MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/getcapacitor/plugin/util/MimeType;

    return-object v0
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/MimeType;->value:Ljava/lang/String;

    return-object v0
.end method
