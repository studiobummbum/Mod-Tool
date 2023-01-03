.class Lcom/io14/mylibrary/splashScreenActivity$1;
.super Ljava/lang/Object;
.source "splashScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/io14/mylibrary/splashScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/io14/mylibrary/splashScreenActivity;


# direct methods
.method constructor <init>(Lcom/io14/mylibrary/splashScreenActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/io14/mylibrary/splashScreenActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/io14/mylibrary/splashScreenActivity$1;->this$0:Lcom/io14/mylibrary/splashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 49
    iget-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity$1;->this$0:Lcom/io14/mylibrary/splashScreenActivity;

    invoke-static {v0}, Lcom/io14/mylibrary/splashScreenActivity;->access$000(Lcom/io14/mylibrary/splashScreenActivity;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 50
    iget-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity$1;->this$0:Lcom/io14/mylibrary/splashScreenActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/io14/mylibrary/splashScreenActivity;->access$102(Lcom/io14/mylibrary/splashScreenActivity;Z)Z

    .line 51
    iget-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity$1;->this$0:Lcom/io14/mylibrary/splashScreenActivity;

    invoke-static {v0}, Lcom/io14/mylibrary/splashScreenActivity;->access$000(Lcom/io14/mylibrary/splashScreenActivity;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/io14/mylibrary/splashScreenActivity$1;->this$0:Lcom/io14/mylibrary/splashScreenActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 55
    :goto_19
    return-void

    .line 54
    :cond_1a
    iget-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity$1;->this$0:Lcom/io14/mylibrary/splashScreenActivity;

    invoke-static {v0}, Lcom/io14/mylibrary/splashScreenActivity;->access$300(Lcom/io14/mylibrary/splashScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/io14/mylibrary/splashScreenActivity$1;->this$0:Lcom/io14/mylibrary/splashScreenActivity;

    invoke-static {v1}, Lcom/io14/mylibrary/splashScreenActivity;->access$200(Lcom/io14/mylibrary/splashScreenActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19
.end method
