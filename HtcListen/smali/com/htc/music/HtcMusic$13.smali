.class Lcom/htc/music/HtcMusic$13;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1187
    iget-object v1, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    .line 1193
    iget-object v1, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$700(Lcom/htc/music/HtcMusic;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
