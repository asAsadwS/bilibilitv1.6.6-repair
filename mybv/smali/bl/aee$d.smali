.class public final Lbl/aee$d;
.super Lbl/adv;
.source "aee.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/aee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/aee$d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/aee$d$a;


# instance fields
.field private n:Lcom/bilibili/tv/widget/ScalableImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/bilibili/tv/widget/DrawRelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 337
    new-instance v0, Lbl/aee$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/aee$d$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/aee$d;->Companion:Lbl/aee$d$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 346
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lbl/aee$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lbl/aee$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 348
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lbl/aee$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aee$d;->o:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f08011c

    invoke-virtual {p0, p1, v0}, Lbl/aee$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aee$d;->p:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f080074

    invoke-virtual {p0, p1, v0}, Lbl/aee$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lbl/aee$d;->q:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 351
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 352
    return-void
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lbl/aee$d;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lbl/aee$d;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 371
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lbl/aee$d;->q:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 373
    return-void
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lbl/aee$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
