.class public final enum Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;
.super Ljava/lang/Enum;
.source "IEventCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/player/interfaces/IEventCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum CODEC_CONFIG_CHANGED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum DANMAKU_TOGGLE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum MENU_QUICK_SHOW:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum NEW_RESOLVE_TASK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum POST_DANMAKU:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SWITCH_EPISODE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SWITCH_QUALITY:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SWITCH_QUALITY_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "NEW_RESOLVE_TASK"

    invoke-direct {v0, v1, v3}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->NEW_RESOLVE_TASK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 11
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "RESOLVE_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 12
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SWITCH_QUALITY"

    invoke-direct {v0, v1, v5}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 13
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "QUALITY_SWITCH_SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 14
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SWITCH_EPISODE"

    invoke-direct {v0, v1, v7}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 15
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "EPISODE_SWITCH_SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 16
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "CODEC_CONFIG_CHANGED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->CODEC_CONFIG_CHANGED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 17
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SEEK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 18
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "MENU_QUICK_SHOW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->MENU_QUICK_SHOW:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 19
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "DANMAKU_SIZE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 20
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "DANMAKU_ALPHA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 21
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "POST_DANMAKU"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->POST_DANMAKU:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 22
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SWITCH_EPISODE_REMOTE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 23
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SWITCH_QUALITY_REMOTE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 24
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "DANMAKU_TOGGLE_REMOTE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_TOGGLE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 25
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SWITCH_SPEED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    sget-object v1, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->NEW_RESOLVE_TASK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->CODEC_CONFIG_CHANGED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->MENU_QUICK_SHOW:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->POST_DANMAKU:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_TOGGLE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->$VALUES:[Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    return-object v0
.end method

.method public static values()[Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->$VALUES:[Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    invoke-virtual {v0}, [Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    return-object v0
.end method
