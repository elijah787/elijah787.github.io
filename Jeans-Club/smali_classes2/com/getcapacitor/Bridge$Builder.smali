.class public Lcom/getcapacitor/Bridge$Builder;
.super Ljava/lang/Object;
.source "Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/Bridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activity:Landroidx/appcompat/app/AppCompatActivity;

.field private config:Lcom/getcapacitor/CapConfig;

.field private fragment:Landroidx/fragment/app/Fragment;

.field private instanceState:Landroid/os/Bundle;

.field private pluginInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/getcapacitor/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private routeProcessor:Lcom/getcapacitor/RouteProcessor;

.field private serverPath:Lcom/getcapacitor/ServerPath;

.field private final webViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/getcapacitor/WebViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 1470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->instanceState:Landroid/os/Bundle;

    .line 1461
    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->config:Lcom/getcapacitor/CapConfig;

    .line 1462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->plugins:Ljava/util/List;

    .line 1463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->pluginInstances:Ljava/util/List;

    .line 1467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->webViewListeners:Ljava/util/List;

    .line 1471
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 1472
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->instanceState:Landroid/os/Bundle;

    .line 1461
    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->config:Lcom/getcapacitor/CapConfig;

    .line 1462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->plugins:Ljava/util/List;

    .line 1463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->pluginInstances:Ljava/util/List;

    .line 1467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->webViewListeners:Ljava/util/List;

    .line 1475
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 1476
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->fragment:Landroidx/fragment/app/Fragment;

    .line 1477
    return-void
.end method


# virtual methods
.method public addPlugin(Ljava/lang/Class;)Lcom/getcapacitor/Bridge$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)",
            "Lcom/getcapacitor/Bridge$Builder;"
        }
    .end annotation

    .line 1495
    .local p1, "plugin":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/getcapacitor/Plugin;>;"
    iget-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->plugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    return-object p0
.end method

.method public addPluginInstance(Lcom/getcapacitor/Plugin;)Lcom/getcapacitor/Bridge$Builder;
    .locals 1
    .param p1, "plugin"    # Lcom/getcapacitor/Plugin;

    .line 1508
    iget-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->pluginInstances:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    return-object p0
.end method

.method public addPluginInstances(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/getcapacitor/Plugin;",
            ">;)",
            "Lcom/getcapacitor/Bridge$Builder;"
        }
    .end annotation

    .line 1513
    .local p1, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/getcapacitor/Plugin;>;"
    iget-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->pluginInstances:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1514
    return-object p0
.end method

.method public addPlugins(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;)",
            "Lcom/getcapacitor/Bridge$Builder;"
        }
    .end annotation

    .line 1500
    .local p1, "plugins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lcom/getcapacitor/Plugin;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1501
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/getcapacitor/Plugin;>;"
    invoke-virtual {p0, v1}, Lcom/getcapacitor/Bridge$Builder;->addPlugin(Ljava/lang/Class;)Lcom/getcapacitor/Bridge$Builder;

    .line 1502
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/getcapacitor/Plugin;>;"
    goto :goto_0

    .line 1504
    :cond_0
    return-object p0
.end method

.method public addWebViewListener(Lcom/getcapacitor/WebViewListener;)Lcom/getcapacitor/Bridge$Builder;
    .locals 1
    .param p1, "webViewListener"    # Lcom/getcapacitor/WebViewListener;

    .line 1518
    iget-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->webViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    return-object p0
.end method

.method public addWebViewListeners(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/getcapacitor/WebViewListener;",
            ">;)",
            "Lcom/getcapacitor/Bridge$Builder;"
        }
    .end annotation

    .line 1523
    .local p1, "webViewListeners":Ljava/util/List;, "Ljava/util/List<Lcom/getcapacitor/WebViewListener;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/WebViewListener;

    .line 1524
    .local v1, "listener":Lcom/getcapacitor/WebViewListener;
    invoke-virtual {p0, v1}, Lcom/getcapacitor/Bridge$Builder;->addWebViewListener(Lcom/getcapacitor/WebViewListener;)Lcom/getcapacitor/Bridge$Builder;

    .line 1525
    .end local v1    # "listener":Lcom/getcapacitor/WebViewListener;
    goto :goto_0

    .line 1527
    :cond_0
    return-object p0
.end method

.method public create()Lcom/getcapacitor/Bridge;
    .locals 22

    .line 1542
    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/cordova/ConfigXmlParser;

    invoke-direct {v1}, Lorg/apache/cordova/ConfigXmlParser;-><init>()V

    .line 1543
    .local v1, "parser":Lorg/apache/cordova/ConfigXmlParser;
    iget-object v2, v0, Lcom/getcapacitor/Bridge$Builder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/ConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 1544
    invoke-virtual {v1}, Lorg/apache/cordova/ConfigXmlParser;->getPreferences()Lorg/apache/cordova/CordovaPreferences;

    move-result-object v2

    .line 1545
    .local v2, "preferences":Lorg/apache/cordova/CordovaPreferences;
    iget-object v3, v0, Lcom/getcapacitor/Bridge$Builder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CordovaPreferences;->setPreferencesBundle(Landroid/os/Bundle;)V

    .line 1546
    invoke-virtual {v1}, Lorg/apache/cordova/ConfigXmlParser;->getPluginEntries()Ljava/util/ArrayList;

    move-result-object v15

    .line 1548
    .local v15, "pluginEntries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/cordova/PluginEntry;>;"
    new-instance v3, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

    iget-object v4, v0, Lcom/getcapacitor/Bridge$Builder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v3, v4}, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    move-object v14, v3

    .line 1549
    .local v14, "cordovaInterface":Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;
    iget-object v3, v0, Lcom/getcapacitor/Bridge$Builder;->instanceState:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 1550
    invoke-virtual {v14, v3}, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 1553
    :cond_0
    iget-object v3, v0, Lcom/getcapacitor/Bridge$Builder;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/getcapacitor/android/R$id;->webview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/getcapacitor/Bridge$Builder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/getcapacitor/android/R$id;->webview:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :goto_0
    check-cast v3, Landroid/webkit/WebView;

    move-object v13, v3

    .line 1554
    .local v13, "webView":Landroid/webkit/WebView;
    new-instance v3, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;

    iget-object v4, v0, Lcom/getcapacitor/Bridge$Builder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;-><init>(Landroid/content/Context;)V

    move-object v12, v3

    .line 1555
    .local v12, "mockWebView":Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;
    invoke-virtual {v12, v14, v15, v2, v13}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->init(Lorg/apache/cordova/CordovaInterface;Ljava/util/List;Lorg/apache/cordova/CordovaPreferences;Landroid/webkit/WebView;)V

    .line 1556
    invoke-virtual {v12}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->getPluginManager()Lorg/apache/cordova/PluginManager;

    move-result-object v11

    .line 1557
    .local v11, "pluginManager":Lorg/apache/cordova/PluginManager;
    invoke-virtual {v14, v11}, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;->onCordovaInit(Lorg/apache/cordova/PluginManager;)V

    .line 1560
    new-instance v16, Lcom/getcapacitor/Bridge;

    iget-object v4, v0, Lcom/getcapacitor/Bridge$Builder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v5, v0, Lcom/getcapacitor/Bridge$Builder;->serverPath:Lcom/getcapacitor/ServerPath;

    iget-object v6, v0, Lcom/getcapacitor/Bridge$Builder;->fragment:Landroidx/fragment/app/Fragment;

    iget-object v8, v0, Lcom/getcapacitor/Bridge$Builder;->plugins:Ljava/util/List;

    iget-object v9, v0, Lcom/getcapacitor/Bridge$Builder;->pluginInstances:Ljava/util/List;

    iget-object v10, v0, Lcom/getcapacitor/Bridge$Builder;->config:Lcom/getcapacitor/CapConfig;

    const/16 v17, 0x0

    move-object/from16 v3, v16

    move-object v7, v13

    move-object/from16 v18, v10

    move-object v10, v14

    move-object/from16 v19, v11

    .end local v11    # "pluginManager":Lorg/apache/cordova/PluginManager;
    .local v19, "pluginManager":Lorg/apache/cordova/PluginManager;
    move-object/from16 v20, v12

    .end local v12    # "mockWebView":Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;
    .local v20, "mockWebView":Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;
    move-object v12, v2

    move-object/from16 v21, v1

    move-object v1, v13

    .end local v13    # "webView":Landroid/webkit/WebView;
    .local v1, "webView":Landroid/webkit/WebView;
    .local v21, "parser":Lorg/apache/cordova/ConfigXmlParser;
    move-object/from16 v13, v18

    move-object/from16 v18, v14

    .end local v14    # "cordovaInterface":Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;
    .local v18, "cordovaInterface":Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;
    move-object/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Lcom/getcapacitor/Bridge;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/getcapacitor/ServerPath;Landroidx/fragment/app/Fragment;Landroid/webkit/WebView;Ljava/util/List;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/CordovaPreferences;Lcom/getcapacitor/CapConfig;Lcom/getcapacitor/Bridge-IA;)V

    .line 1573
    .local v3, "bridge":Lcom/getcapacitor/Bridge;
    instance-of v4, v1, Lcom/getcapacitor/CapacitorWebView;

    if-eqz v4, :cond_2

    .line 1574
    move-object v4, v1

    check-cast v4, Lcom/getcapacitor/CapacitorWebView;

    .line 1575
    .local v4, "capacitorWebView":Lcom/getcapacitor/CapacitorWebView;
    invoke-virtual {v4, v3}, Lcom/getcapacitor/CapacitorWebView;->setBridge(Lcom/getcapacitor/Bridge;)V

    .line 1578
    .end local v4    # "capacitorWebView":Lcom/getcapacitor/CapacitorWebView;
    :cond_2
    move-object/from16 v4, v20

    .end local v20    # "mockWebView":Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;
    .local v4, "mockWebView":Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;
    invoke-virtual {v3, v4}, Lcom/getcapacitor/Bridge;->setCordovaWebView(Lorg/apache/cordova/CordovaWebView;)V

    .line 1579
    iget-object v5, v0, Lcom/getcapacitor/Bridge$Builder;->webViewListeners:Ljava/util/List;

    invoke-virtual {v3, v5}, Lcom/getcapacitor/Bridge;->setWebViewListeners(Ljava/util/List;)V

    .line 1580
    iget-object v5, v0, Lcom/getcapacitor/Bridge$Builder;->routeProcessor:Lcom/getcapacitor/RouteProcessor;

    invoke-virtual {v3, v5}, Lcom/getcapacitor/Bridge;->setRouteProcessor(Lcom/getcapacitor/RouteProcessor;)V

    .line 1582
    iget-object v5, v0, Lcom/getcapacitor/Bridge$Builder;->instanceState:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 1583
    invoke-virtual {v3, v5}, Lcom/getcapacitor/Bridge;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 1586
    :cond_3
    return-object v3
.end method

.method public setConfig(Lcom/getcapacitor/CapConfig;)Lcom/getcapacitor/Bridge$Builder;
    .locals 0
    .param p1, "config"    # Lcom/getcapacitor/CapConfig;

    .line 1485
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->config:Lcom/getcapacitor/CapConfig;

    .line 1486
    return-object p0
.end method

.method public setInstanceState(Landroid/os/Bundle;)Lcom/getcapacitor/Bridge$Builder;
    .locals 0
    .param p1, "instanceState"    # Landroid/os/Bundle;

    .line 1480
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->instanceState:Landroid/os/Bundle;

    .line 1481
    return-object p0
.end method

.method public setPlugins(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;)",
            "Lcom/getcapacitor/Bridge$Builder;"
        }
    .end annotation

    .line 1490
    .local p1, "plugins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lcom/getcapacitor/Plugin;>;>;"
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->plugins:Ljava/util/List;

    .line 1491
    return-object p0
.end method

.method public setRouteProcessor(Lcom/getcapacitor/RouteProcessor;)Lcom/getcapacitor/Bridge$Builder;
    .locals 0
    .param p1, "routeProcessor"    # Lcom/getcapacitor/RouteProcessor;

    .line 1531
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->routeProcessor:Lcom/getcapacitor/RouteProcessor;

    .line 1532
    return-object p0
.end method

.method public setServerPath(Lcom/getcapacitor/ServerPath;)Lcom/getcapacitor/Bridge$Builder;
    .locals 0
    .param p1, "serverPath"    # Lcom/getcapacitor/ServerPath;

    .line 1536
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->serverPath:Lcom/getcapacitor/ServerPath;

    .line 1537
    return-object p0
.end method
