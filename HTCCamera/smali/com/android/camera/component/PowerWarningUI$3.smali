.class Lcom/android/camera/component/PowerWarningUI$3;
.super Ljava/lang/Object;
.source "PowerWarningUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PowerWarningUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PowerWarningUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PowerWarningUI;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/camera/component/PowerWarningUI$3;->this$0:Lcom/android/camera/component/PowerWarningUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI$3;->this$0:Lcom/android/camera/component/PowerWarningUI;

    #calls: Lcom/android/camera/component/PowerWarningUI;->resetPowerWarningSettings()V
    invoke-static {v0}, Lcom/android/camera/component/PowerWarningUI;->access$100(Lcom/android/camera/component/PowerWarningUI;)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI$3;->this$0:Lcom/android/camera/component/PowerWarningUI;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/PowerWarningUI;->updateWarningLayout(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/PowerWarningUI;->access$200(Lcom/android/camera/component/PowerWarningUI;Z)V

    .line 177
    return-void
.end method
