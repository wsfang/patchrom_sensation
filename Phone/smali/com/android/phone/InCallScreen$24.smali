.class Lcom/android/phone/InCallScreen$24;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->setupAlertingLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 7840
    iput-object p1, p0, Lcom/android/phone/InCallScreen$24;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7842
    iget-object v0, p0, Lcom/android/phone/InCallScreen$24;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setPersonInfoVisible(Z)V

    .line 7844
    iget-object v0, p0, Lcom/android/phone/InCallScreen$24;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4500(Lcom/android/phone/InCallScreen;)Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7845
    iget-object v0, p0, Lcom/android/phone/InCallScreen$24;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4500(Lcom/android/phone/InCallScreen;)Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 7847
    :cond_0
    return-void
.end method
