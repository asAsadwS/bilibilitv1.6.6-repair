.class public Lbl/zk;
.super Ljava/lang/Object;
.source "zk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lbl/zm;)Z
    .locals 16

    .prologue
    .line 10
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_c

    .line 11
    const/4 v2, 0x0

    .line 25
    :goto_b
    return v2

    .line 13
    :cond_c
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_22

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_22

    .line 14
    const/4 v2, 0x0

    goto :goto_b

    .line 17
    :cond_22
    :try_start_22
    move-object/from16 v0, p2

    iget-object v2, v0, Lbl/zm;->h:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v3, v0, Lbl/zm;->l:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lbl/zm;->i:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lbl/zm;->j:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v6, v0, Lbl/zm;->o:J

    move-object/from16 v0, p2

    iget-wide v8, v0, Lbl/zm;->k:J

    move-object/from16 v0, p2

    iget v10, v0, Lbl/zm;->p:I

    move-object/from16 v0, p2

    iget-boolean v11, v0, Lbl/zm;->n:Z

    move-object/from16 v0, p2

    iget v12, v0, Lbl/zm;->m:I

    move-object/from16 v0, p2

    iget v13, v0, Lbl/zm;->q:I

    const/4 v14, 0x1

    const-string v15, "0"

    invoke-static/range {v2 .. v15}, Lbl/zq;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJIZIIILjava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_50} :catch_5c

    .line 21
    :goto_50
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_61

    .line 22
    const/4 v2, 0x1

    goto :goto_b

    .line 18
    :catch_5c
    move-exception v2

    .line 19
    invoke-static {v2}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_50

    .line 24
    :cond_61
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v5, v3}, Lbl/zj;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 25
    const/4 v2, 0x1

    goto :goto_b
.end method
