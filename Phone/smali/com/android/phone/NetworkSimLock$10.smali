.class Lcom/android/phone/NetworkSimLock$10;
.super Ljava/lang/Object;
.source "NetworkSimLock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSimLock;->unlockOthersTypeLockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSimLock;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSimLock;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/phone/NetworkSimLock$10;->this$0:Lcom/android/phone/NetworkSimLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock$10;->this$0:Lcom/android/phone/NetworkSimLock;

    const v1, 0x7f0e0492

    #calls: Lcom/android/phone/NetworkSimLock;->rebootDeviceDialog(I)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSimLock;->access$600(Lcom/android/phone/NetworkSimLock;I)V

    .line 473
    return-void
.end method
