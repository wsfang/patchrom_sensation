.class Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoSocketConnectThread"
.end annotation


# instance fields
.field private mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

.field private mdevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method public constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter
    .parameter "device"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 468
    :try_start_0
    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mdevice:Landroid/bluetooth/BluetoothDevice;

    .line 469
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->createScoSocket()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "[U53_BT]Could not create BluetoothSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->failedScoConnect()V

    goto :goto_0
.end method

.method private connectSco()V
    .locals 6

    .prologue
    .line 493
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 495
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    if-nez v1, :cond_4

    .line 497
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 498
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mdevice:Landroid/bluetooth/BluetoothDevice;

    #calls: Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 504
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mSkypeOut:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mSkypeOut:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 506
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 2,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 3,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 512
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1302(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 513
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCO_CONNECTED : Send FakeCall indicator - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 2,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 515
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCO_CONNECTED : Send FakeCallsetup indicator - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 3,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    if-nez v1, :cond_3

    .line 520
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$902(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 521
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    const-string v3, "SignalScoCloseThread"

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->setName(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->start()V

    .line 534
    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    return-void

    .line 527
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 531
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    .line 532
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->failedScoConnect()V

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Error when closing Sco socket"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private failedScoConnect()V
    .locals 4

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 544
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mdevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 545
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 553
    monitor-enter p0

    .line 554
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)V

    .line 557
    :cond_0
    monitor-exit p0

    .line 558
    return-void

    .line 557
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->connectSco()V

    .line 490
    :cond_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, connectException:Ljava/io/IOException;
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "[U53_BT]BluetoothSocket could not connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->mOutgoingSco:Landroid/bluetooth/BluetoothSocket;

    .line 484
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->failedScoConnect()V

    goto :goto_0
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)V

    .line 566
    monitor-enter p0

    .line 567
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->interrupt()V

    .line 568
    monitor-exit p0

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
