.class final Lcom/htc/preference/HtcPreference$BaseSavedState$1;
.super Ljava/lang/Object;
.source "HtcPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcPreference$BaseSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/preference/HtcPreference$BaseSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/preference/HtcPreference$BaseSavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 2116
    new-instance v0, Lcom/htc/preference/HtcPreference$BaseSavedState;

    invoke-direct {v0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2114
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/preference/HtcPreference$BaseSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/preference/HtcPreference$BaseSavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 2120
    new-array v0, p1, [Lcom/htc/preference/HtcPreference$BaseSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2114
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState$1;->newArray(I)[Lcom/htc/preference/HtcPreference$BaseSavedState;

    move-result-object v0

    return-object v0
.end method
