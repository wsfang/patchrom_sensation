.class Lcom/android/phone/BluetoothHandsfree$21;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3608
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$21;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 12
    .parameter "args"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3611
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3612
    .local v2, phoneType:I
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 3613
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3614
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    array-length v5, p1

    if-ne v5, v9, :cond_1f

    .line 3615
    const-string v5, "Bluetooth HS/HF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<<< CHLD: >>>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 3617
    :cond_0
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3750
    :goto_0
    return-object v5

    .line 3619
    :cond_1
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v5

    if-eqz v5, :cond_c

    .line 3620
    aget-object v5, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3622
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3623
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 3659
    :cond_2
    :goto_1
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 3625
    :cond_3
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v5

    if-ne v5, v9, :cond_4

    .line 3627
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/android/phone/PhoneUtils;->sendBTButtonPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_1

    .line 3630
    :cond_4
    const-string v5, "Bluetooth HS/HF"

    const-string v6, "Unknow CHLD=0 case.."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3632
    :cond_5
    aget-object v5, p1, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    aget-object v5, p1, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3634
    :cond_6
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3635
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    .line 3637
    :cond_7
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v5

    if-ne v5, v9, :cond_8

    .line 3639
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/android/phone/PhoneUtils;->sendBTButtonPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_1

    .line 3642
    :cond_8
    const-string v5, "Bluetooth HS/HF"

    const-string v6, "Unknow CHLD=1,2 case.."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    aget-object v5, p1, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3644
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3646
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static {v5, v8}, Lcom/android/phone/BluetoothHandsfree;->access$4602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3647
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    .line 3649
    :cond_9
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/android/phone/PhoneUtils;->sendBTButtonPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_1

    .line 3652
    :cond_a
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 3655
    :cond_b
    aget-object v5, p1, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3657
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 3662
    :cond_c
    aget-object v5, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3664
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3665
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 3669
    .local v3, result:Z
    :goto_2
    if-eqz v3, :cond_e

    .line 3670
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 3667
    .end local v3           #result:Z
    :cond_d
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .restart local v3       #result:Z
    goto :goto_2

    .line 3672
    :cond_e
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 3674
    .end local v3           #result:Z
    :cond_f
    aget-object v5, p1, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 3675
    if-ne v2, v10, :cond_11

    .line 3676
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3677
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 3679
    :cond_10
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 3682
    :cond_11
    if-ne v2, v9, :cond_13

    .line 3684
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 3686
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 3688
    :cond_12
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 3691
    :cond_13
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3693
    :cond_14
    aget-object v5, p1, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 3694
    if-ne v2, v10, :cond_18

    .line 3700
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 3702
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 3703
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3705
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v5, v9}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 3721
    :cond_15
    :goto_3
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 3706
    :cond_16
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_17

    .line 3709
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_3

    .line 3710
    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_15

    .line 3714
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_3

    .line 3716
    :cond_18
    if-ne v2, v9, :cond_19

    .line 3717
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_3

    .line 3719
    :cond_19
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3722
    :cond_1a
    aget-object v5, p1, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 3723
    if-ne v2, v10, :cond_1d

    .line 3725
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_1c

    .line 3728
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    .line 3747
    :cond_1b
    :goto_4
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 3729
    :cond_1c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_1b

    .line 3735
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 3736
    :catch_0
    move-exception v1

    .line 3737
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Bluetooth HS/HF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<<<<<<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3740
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1d
    if-ne v2, v9, :cond_1e

    .line 3741
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 3742
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_4

    .line 3745
    :cond_1e
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3750
    :cond_1f
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3754
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 3755
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CHLD: (0,1,2,3)"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 3756
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 3757
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$8500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3758
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$4202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 3759
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 3765
    :cond_0
    :goto_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0

    .line 3760
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3762
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$21;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    goto :goto_0
.end method
