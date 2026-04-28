.class public Lcom/getcapacitor/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final EXACT:I = 0x0

.field private static final MASK:I = 0x3

.field static final PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final REST:I = 0x2

.field private static final TEXT:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/getcapacitor/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:Ljava/lang/Object;

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/getcapacitor/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/getcapacitor/UriMatcher;->mWhich:I

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 43
    iput-object v0, p0, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/getcapacitor/UriMatcher;->mWhich:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 15
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/Object;

    .line 62
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eqz v1, :cond_c

    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 68
    move-object/from16 v5, p3

    .line 70
    .local v5, "newPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_0

    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 73
    :cond_0
    sget-object v6, Lcom/getcapacitor/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    .end local v5    # "newPath":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    array-length v5, v2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 77
    .local v5, "numTokens":I
    :goto_0
    move-object v6, p0

    .line 78
    .local v6, "node":Lcom/getcapacitor/UriMatcher;
    const/4 v7, -0x2

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_b

    .line 80
    const/4 v8, -0x2

    const/4 v9, -0x1

    if-ne v7, v8, :cond_3

    move-object/from16 v8, p1

    .local v8, "token":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .end local v8    # "token":Ljava/lang/String;
    :cond_3
    if-ne v7, v9, :cond_4

    move-object/from16 v8, p2

    goto :goto_2

    :cond_4
    aget-object v8, v2, v7

    goto :goto_2

    .line 81
    .restart local v8    # "token":Ljava/lang/String;
    :goto_3
    iget-object v10, v6, Lcom/getcapacitor/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 82
    .local v10, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/getcapacitor/UriMatcher;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 85
    .local v11, "numChildren":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    if-ge v12, v11, :cond_6

    .line 86
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/getcapacitor/UriMatcher;

    .line 87
    .local v13, "child":Lcom/getcapacitor/UriMatcher;
    iget-object v14, v13, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 88
    move-object v6, v13

    .line 89
    goto :goto_5

    .line 85
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 92
    .end local v13    # "child":Lcom/getcapacitor/UriMatcher;
    :cond_6
    :goto_5
    if-ne v12, v11, :cond_a

    .line 94
    new-instance v13, Lcom/getcapacitor/UriMatcher;

    invoke-direct {v13}, Lcom/getcapacitor/UriMatcher;-><init>()V

    .line 95
    .restart local v13    # "child":Lcom/getcapacitor/UriMatcher;
    const-string v14, "*"

    if-ne v7, v9, :cond_7

    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 96
    const/4 v9, 0x3

    iput v9, v13, Lcom/getcapacitor/UriMatcher;->mWhich:I

    goto :goto_6

    .line 97
    :cond_7
    const-string v9, "**"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 98
    const/4 v9, 0x2

    iput v9, v13, Lcom/getcapacitor/UriMatcher;->mWhich:I

    goto :goto_6

    .line 99
    :cond_8
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 100
    iput v4, v13, Lcom/getcapacitor/UriMatcher;->mWhich:I

    goto :goto_6

    .line 102
    :cond_9
    iput v3, v13, Lcom/getcapacitor/UriMatcher;->mWhich:I

    .line 104
    :goto_6
    iput-object v8, v13, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    .line 105
    iget-object v9, v6, Lcom/getcapacitor/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    move-object v6, v13

    .line 78
    .end local v8    # "token":Ljava/lang/String;
    .end local v10    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/getcapacitor/UriMatcher;>;"
    .end local v11    # "numChildren":I
    .end local v12    # "j":I
    .end local v13    # "child":Lcom/getcapacitor/UriMatcher;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 109
    .end local v7    # "i":I
    :cond_b
    iput-object v1, v6, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    .line 110
    return-void

    .line 63
    .end local v2    # "tokens":[Ljava/lang/String;
    .end local v5    # "numTokens":I
    .end local v6    # "node":Lcom/getcapacitor/UriMatcher;
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Code can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public match(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .line 122
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 125
    .local v1, "li":I
    move-object v2, p0

    .line 127
    .local v2, "node":Lcom/getcapacitor/UriMatcher;
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    return-object v3

    .line 131
    :cond_0
    const/4 v3, -0x2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_8

    .line 133
    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .local v4, "u":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .end local v4    # "u":Ljava/lang/String;
    :cond_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 134
    .restart local v4    # "u":Ljava/lang/String;
    :goto_2
    iget-object v5, v2, Lcom/getcapacitor/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 135
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/getcapacitor/UriMatcher;>;"
    if-nez v5, :cond_3

    .line 136
    goto :goto_6

    .line 138
    :cond_3
    const/4 v2, 0x0

    .line 139
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 140
    .local v6, "lj":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v6, :cond_6

    .line 141
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/getcapacitor/UriMatcher;

    .line 142
    .local v8, "n":Lcom/getcapacitor/UriMatcher;
    iget v9, v8, Lcom/getcapacitor/UriMatcher;->mWhich:I

    packed-switch v9, :pswitch_data_0

    goto :goto_4

    .line 144
    :pswitch_0
    iget-object v9, v8, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    invoke-static {v9}, Lcom/getcapacitor/util/HostMask$Parser;->parse(Ljava/lang/String;)Lcom/getcapacitor/util/HostMask;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/getcapacitor/util/HostMask;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 145
    move-object v2, v8

    goto :goto_4

    .line 157
    :pswitch_1
    iget-object v9, v8, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    return-object v9

    .line 154
    :pswitch_2
    move-object v2, v8

    .line 155
    goto :goto_4

    .line 149
    :pswitch_3
    iget-object v9, v8, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 150
    move-object v2, v8

    .line 159
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 160
    goto :goto_5

    .line 140
    .end local v8    # "n":Lcom/getcapacitor/UriMatcher;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 163
    .end local v7    # "j":I
    :cond_6
    :goto_5
    if-nez v2, :cond_7

    .line 164
    const/4 v7, 0x0

    return-object v7

    .line 131
    .end local v4    # "u":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/getcapacitor/UriMatcher;>;"
    .end local v6    # "lj":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "i":I
    :cond_8
    :goto_6
    iget-object v3, v2, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
