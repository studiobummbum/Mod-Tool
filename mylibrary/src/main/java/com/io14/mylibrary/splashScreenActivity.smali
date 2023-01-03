.class public Lcom/io14/mylibrary/splashScreenActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "splashScreenActivity.java"


# static fields
.field public static final VERSION_CODE:I = 0x1


# instance fields
.field public VERSION_NAME:Ljava/lang/String;

.field private adChecker:Ljava/lang/Runnable;

.field private adLoader:Lcom/google/android/gms/ads/AdLoader;

.field private c1:Ljava/lang/Object;

.field connected:Z

.field private final handler:Landroid/os/Handler;

.field private isShowAd:Z

.field private mHandler:Landroid/os/Handler;

.field private mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private mInterval:I

.field private sdk_time_open:Ljava/lang/String;

.field private show_ad_every_x_time:I

.field private timeOpen:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 25
    const/16 v0, 0x1388

    iput v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->mInterval:I

    .line 26
    iput-boolean v2, p0, Lcom/io14/mylibrary/splashScreenActivity;->isShowAd:Z

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->handler:Landroid/os/Handler;

    .line 28
    iput v2, p0, Lcom/io14/mylibrary/splashScreenActivity;->timeOpen:I

    .line 29
    const-string v0, "dazz_open_time"

    iput-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->sdk_time_open:Ljava/lang/String;

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->show_ad_every_x_time:I

    .line 31
    iput-boolean v2, p0, Lcom/io14/mylibrary/splashScreenActivity;->connected:Z

    .line 34
    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->VERSION_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/io14/mylibrary/splashScreenActivity;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .registers 2
    .param p0, "x0"    # Lcom/io14/mylibrary/splashScreenActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$102(Lcom/io14/mylibrary/splashScreenActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/io14/mylibrary/splashScreenActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/io14/mylibrary/splashScreenActivity;->isShowAd:Z

    return p1
.end method

.method static synthetic access$200(Lcom/io14/mylibrary/splashScreenActivity;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/io14/mylibrary/splashScreenActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->adChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/io14/mylibrary/splashScreenActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/io14/mylibrary/splashScreenActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/io14/mylibrary/splashScreenActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/io14/mylibrary/splashScreenActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/io14/mylibrary/splashScreenActivity;->goNext()V

    return-void
.end method

.method private canShowAd()Z
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method private checkAds()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/io14/mylibrary/splashScreenActivity;->canShowAd()Z

    move-result v0

    if-nez v0, :cond_9

    .line 71
    invoke-direct {p0}, Lcom/io14/mylibrary/splashScreenActivity;->goNext()V

    .line 73
    :cond_9
    return-void
.end method

.method private goNext()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method

.method private initAds()V
    .registers 4

    .prologue
    .line 76
    const-string v0, "new_upink"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/io14/mylibrary/splashScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "alllock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 81
    :cond_13
    return-void
.end method

.method private loadNativeAd()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method private runDelayCheckAds()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/io14/mylibrary/splashScreenActivity;->checkAds()V

    .line 43
    invoke-direct {p0}, Lcom/io14/mylibrary/splashScreenActivity;->loadNativeAd()V

    .line 44
    invoke-direct {p0}, Lcom/io14/mylibrary/splashScreenActivity;->canShowAd()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 45
    invoke-direct {p0}, Lcom/io14/mylibrary/splashScreenActivity;->initAds()V

    .line 46
    new-instance v0, Lcom/io14/mylibrary/splashScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/io14/mylibrary/splashScreenActivity$1;-><init>(Lcom/io14/mylibrary/splashScreenActivity;)V

    iput-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->adChecker:Ljava/lang/Runnable;

    .line 57
    invoke-direct {p0}, Lcom/io14/mylibrary/splashScreenActivity;->runDelayCheckAds()V

    .line 67
    :goto_1c
    return-void

    .line 61
    :cond_1d
    iget-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/io14/mylibrary/splashScreenActivity$2;

    invoke-direct {v1, p0}, Lcom/io14/mylibrary/splashScreenActivity$2;-><init>(Lcom/io14/mylibrary/splashScreenActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1c
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 100
    iget-boolean v0, p0, Lcom/io14/mylibrary/splashScreenActivity;->isShowAd:Z

    if-eqz v0, :cond_a

    .line 101
    invoke-direct {p0}, Lcom/io14/mylibrary/splashScreenActivity;->goNext()V

    .line 103
    :cond_a
    return-void
.end method
