.class public final Lcom/bilibili/tv/ui/main/MainActivity$f;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final synthetic this$0:Lcom/bilibili/tv/ui/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/MainActivity;IIII)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->this$0:Lcom/bilibili/tv/ui/main/MainActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 241
    iput p2, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->b:I

    .line 242
    iput p3, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->c:I

    .line 243
    iput p4, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->d:I

    .line 244
    iput p5, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->e:I

    .line 245
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v1, 0x0

    .line 250
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->this$0:Lcom/bilibili/tv/ui/main/MainActivity;

    # getter for: Lcom/bilibili/tv/ui/main/MainActivity;->d:Lcom/bilibili/tv/ui/main/MainActivity$d;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->access$000(Lcom/bilibili/tv/ui/main/MainActivity;)Lcom/bilibili/tv/ui/main/MainActivity$d;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 276
    :goto_19
    return-void

    .line 256
    :cond_1a
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v0

    .line 257
    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 258
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->b:I

    .line 275
    :goto_23
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_19

    .line 259
    :cond_27
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2e

    .line 260
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->c:I

    neg-int v0, v0

    goto :goto_23

    .line 261
    :cond_2e
    const/4 v2, 0x3

    if-ne v0, v2, :cond_35

    .line 262
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->d:I

    neg-int v0, v0

    goto :goto_23

    .line 263
    :cond_35
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4f

    .line 264
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->this$0:Lcom/bilibili/tv/ui/main/MainActivity;

    # getter for: Lcom/bilibili/tv/ui/main/MainActivity;->d:Lcom/bilibili/tv/ui/main/MainActivity$d;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->access$000(Lcom/bilibili/tv/ui/main/MainActivity;)Lcom/bilibili/tv/ui/main/MainActivity$d;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a()I

    move-result v0

    :goto_44
    if-ge v0, v3, :cond_4b

    .line 266
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->e:I

    goto :goto_23

    :cond_49
    move v0, v1

    .line 265
    goto :goto_44

    .line 268
    :cond_4b
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->d:I

    neg-int v0, v0

    goto :goto_23

    .line 270
    :cond_4f
    const/4 v2, 0x5

    if-ne v0, v2, :cond_56

    .line 271
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->d:I

    neg-int v0, v0

    goto :goto_23

    .line 273
    :cond_56
    if-ne v0, v3, :cond_5b

    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->e:I

    goto :goto_23

    :cond_5b
    move v0, v1

    goto :goto_23
.end method
