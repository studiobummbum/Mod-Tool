.class Lcom/io14/mylibrary/splashScreenActivity$2;
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
    .line 61
    iput-object p1, p0, Lcom/io14/mylibrary/splashScreenActivity$2;->this$0:Lcom/io14/mylibrary/splashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/io14/mylibrary/splashScreenActivity$2;->this$0:Lcom/io14/mylibrary/splashScreenActivity;

    invoke-static {v0}, Lcom/io14/mylibrary/splashScreenActivity;->access$400(Lcom/io14/mylibrary/splashScreenActivity;)V

    .line 65
    return-void
.end method
