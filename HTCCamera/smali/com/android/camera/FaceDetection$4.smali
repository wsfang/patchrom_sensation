.class Lcom/android/camera/FaceDetection$4;
.super Ljava/lang/Object;
.source "FaceDetection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/FaceDetection;->initFaceDetection(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FaceDetection;


# direct methods
.method constructor <init>(Lcom/android/camera/FaceDetection;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/FaceDetection$4;->this$0:Lcom/android/camera/FaceDetection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/FaceDetection$4;->this$0:Lcom/android/camera/FaceDetection;

    #calls: Lcom/android/camera/FaceDetection;->enterUnStableState()V
    invoke-static {v0}, Lcom/android/camera/FaceDetection;->access$300(Lcom/android/camera/FaceDetection;)V

    .line 109
    return-void
.end method
