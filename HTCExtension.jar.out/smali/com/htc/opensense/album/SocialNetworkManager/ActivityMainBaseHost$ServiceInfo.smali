.class public Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;
.super Ljava/lang/Object;
.source "ActivityMainBaseHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceInfo"
.end annotation


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mMediumOp:Lcom/htc/opensense/social/MediumOp;

.field public mPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

.field public mPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

.field public mPhotoID:Ljava/lang/String;

.field public mServiceName:Ljava/lang/String;

.field public mUserID:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 39
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhotoID:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mUserID:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .line 46
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    .line 47
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    return-void
.end method
