.class Lcom/android/phone/InCallScreen$12;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$msg2:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4848
    iput-object p1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$12;->val$msg2:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4851
    iget-object v0, p0, Lcom/android/phone/InCallScreen$12;->val$msg2:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4852
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4853
    return-void
.end method
