.class public final Lcom/getcapacitor/AppUUID;
.super Ljava/lang/Object;
.source "AppUUID.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "CapacitorAppUUID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertAppUUID(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lcom/getcapacitor/AppUUID;->readUUID(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "uuid":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {p0}, Lcom/getcapacitor/AppUUID;->regenerateAppUUID(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 35
    :cond_0
    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 56
    const-string v0, "0123456789ABCDEF"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 57
    .local v0, "HEX_ARRAY":[B
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 58
    .local v1, "hexChars":[B
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 59
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 60
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-byte v5, v0, v5

    aput-byte v5, v1, v4

    .line 61
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-byte v5, v0, v5

    aput-byte v5, v1, v4

    .line 58
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "j":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private static generateUUID()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 38
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 39
    .local v0, "salt":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 40
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/getcapacitor/AppUUID;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAppUUID(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/getcapacitor/AppUUID;->assertAppUUID(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 18
    invoke-static {p0}, Lcom/getcapacitor/AppUUID;->readUUID(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readUUID(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/String;
    .locals 3
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v1, "CapacitorAppUUID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static regenerateAppUUID(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    :try_start_0
    invoke-static {}, Lcom/getcapacitor/AppUUID;->generateUUID()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "uuid":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/getcapacitor/AppUUID;->writeUUID(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v0    # "uuid":Ljava/lang/String;
    nop

    .line 28
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Capacitor App UUID could not be generated."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static writeUUID(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p1, "uuid"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 51
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CapacitorAppUUID"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    return-void
.end method
