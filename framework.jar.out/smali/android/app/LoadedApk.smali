.class final Landroid/app/LoadedApk;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$1;,
        Landroid/app/LoadedApk$ServiceDispatcher;,
        Landroid/app/LoadedApk$ReceiverDispatcher;,
        Landroid/app/LoadedApk$WarningContextClassLoader;
    }
.end annotation


# instance fields
.field private final mActivityThread:Landroid/app/ActivityThread;

.field private final mAppDir:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mBaseClassLoader:Ljava/lang/ClassLoader;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field mClientCount:I

.field mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mDataDir:Ljava/lang/String;

.field private final mDataDirFile:Ljava/io/File;

.field private final mIncludeCode:Z

.field private final mLibDir:Ljava/lang/String;

.field final mPackageName:Ljava/lang/String;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResDir:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;

.field private final mSecurityViolation:Z

.field private final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSharedLibraries:[Ljava/lang/String;

.field private final mUnboundServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUnregisteredReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/app/ActivityThread;Ljava/lang/ClassLoader;ZZ)V
    .locals 3
    .parameter "activityThread"
    .parameter "aInfo"
    .parameter "mainThread"
    .parameter "baseLoader"
    .parameter "securityViolation"
    .parameter "includeCode"

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    .line 94
    iput v2, p0, Landroid/app/LoadedApk;->mClientCount:I

    .line 103
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 104
    iput-object p2, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 105
    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 106
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 107
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 109
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    .line 110
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 112
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 114
    iput-boolean p5, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 115
    iput-boolean p6, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 116
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    invoke-direct {v0, p2}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 118
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 119
    sget-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_0

    .line 120
    invoke-static {p3}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 122
    sget-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p3}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p3, v2}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 129
    :cond_0
    sget-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 130
    sget-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 132
    :cond_1
    return-void

    .line 107
    :cond_2
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .parameter "activityThread"
    .parameter "name"
    .parameter "systemContext"
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    .line 94
    iput v2, p0, Landroid/app/LoadedApk;->mClientCount:I

    .line 136
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 137
    if-eqz p4, :cond_0

    move-object v0, p4

    :goto_0
    iput-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 138
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    .line 143
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 145
    iput-object v1, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 147
    iput-boolean v2, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 149
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 150
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 151
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 152
    return-void

    .line 137
    :cond_0
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    goto :goto_0
.end method

.method private static combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "list1"
    .parameter "list2"

    .prologue
    const/16 v8, 0x3a

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x12c

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    .local v5, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 206
    .local v2, first:Z
    if-eqz p0, :cond_1

    .line 207
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 208
    .local v6, s:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 209
    const/4 v2, 0x0

    .line 213
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 218
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    const/4 v7, 0x1

    move v1, v7

    .line 220
    .local v1, dupCheck:Z
    :goto_2
    if-eqz p1, :cond_5

    .line 221
    move-object v0, p1

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .line 222
    .restart local v6       #s:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-static {p0, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 221
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 218
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dupCheck:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    move v1, v7

    goto :goto_2

    .line 226
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dupCheck:Z
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #s:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 227
    const/4 v2, 0x0

    .line 231
    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 229
    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 235
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x400

    invoke-interface {v2, p0, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    const/4 v2, 0x0

    .line 188
    :goto_0
    return-object v2

    .line 180
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 181
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 188
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeJavaContextClassLoader()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 327
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 330
    .local v3, pm:Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v7, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v7, :cond_1

    move v6, v10

    .line 347
    .local v6, sharedUserIdSet:Z
    :goto_0
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v10

    .line 350
    .local v4, processNameNotDefault:Z
    :goto_1
    if-nez v6, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    move v5, v10

    .line 351
    .local v5, sharable:Z
    :goto_2
    if-eqz v5, :cond_4

    new-instance v7, Landroid/app/LoadedApk$WarningContextClassLoader;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>(Landroid/app/LoadedApk$1;)V

    move-object v0, v7

    .line 355
    .local v0, contextClassLoader:Ljava/lang/ClassLoader;
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 356
    return-void

    .line 331
    .end local v0           #contextClassLoader:Ljava/lang/ClassLoader;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #processNameNotDefault:Z
    .end local v5           #sharable:Z
    .end local v6           #sharedUserIdSet:Z
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 332
    .local v1, e:Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    move v6, v9

    .line 346
    goto :goto_0

    .restart local v6       #sharedUserIdSet:Z
    :cond_2
    move v4, v9

    .line 347
    goto :goto_1

    .restart local v4       #processNameNotDefault:Z
    :cond_3
    move v5, v9

    .line 350
    goto :goto_2

    .line 351
    .restart local v5       #sharable:Z
    :cond_4
    iget-object v7, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    move-object v0, v7

    goto :goto_3
.end method


# virtual methods
.method public forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;
    .locals 8
    .parameter "context"
    .parameter "r"

    .prologue
    .line 569
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 570
    :try_start_0
    iget-object v5, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 571
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    const/4 v3, 0x0

    .line 572
    .local v3, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v2, :cond_3

    .line 573
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 574
    .restart local v3       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_3

    .line 575
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 577
    iget-object v5, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :cond_0
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 580
    iget-object v5, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 582
    .local v1, holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-nez v1, :cond_1

    .line 583
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 584
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    iget-object v5, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Originally unregistered here:"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 589
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->setUnregisterLocation(Ljava/lang/RuntimeException;)V

    .line 590
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v5

    monitor-exit v4

    return-object v5

    .line 595
    :cond_3
    iget-object v5, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 597
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v1, :cond_4

    .line 598
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 599
    .restart local v3       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_4

    .line 600
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getUnregisterLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 601
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistering Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unregistered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 613
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 606
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v3       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_4
    if-nez p1, :cond_5

    .line 607
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 610
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;
    .locals 8
    .parameter "context"
    .parameter "c"

    .prologue
    const-string v4, "Unbinding Service "

    .line 848
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    monitor-enter v4

    .line 849
    :try_start_0
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 851
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    const/4 v3, 0x0

    .line 852
    .local v3, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v2, :cond_3

    .line 853
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 854
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_3

    .line 855
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    .line 857
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 858
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_0
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 861
    iget-object v5, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 863
    .local v1, holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-nez v1, :cond_1

    .line 864
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 865
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v5, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Originally unbound here:"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 869
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 870
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    .line 871
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_2
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v5

    monitor-exit v4

    return-object v5

    .line 876
    :cond_3
    iget-object v5, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 878
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_4

    .line 879
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 880
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_4

    .line 881
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 882
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unbound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 893
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 887
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_4
    if-nez p1, :cond_5

    .line 888
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 891
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public getAppDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    return-object v0
.end method

.method getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;
    .locals 1
    .parameter "mainThread"

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 8

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v5, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_0

    .line 241
    iget-object v5, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    .line 299
    :goto_0
    return-object v5

    .line 244
    :cond_0
    iget-boolean v5, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 245
    iget-object v4, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 256
    .local v4, zip:Ljava/lang/String;
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v0, v5, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 258
    .local v0, instrumentationAppDir:Ljava/lang/String;
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, v5, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 260
    .local v1, instrumentationAppPackage:Ljava/lang/String;
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v3, v5, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 262
    .local v3, instrumentedAppDir:Ljava/lang/String;
    const/4 v2, 0x0

    .line 264
    .local v2, instrumentationLibs:[Ljava/lang/String;
    iget-object v5, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 266
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 268
    invoke-static {v1}, Landroid/app/LoadedApk;->getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 273
    :cond_2
    iget-object v5, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    if-nez v5, :cond_3

    if-eqz v2, :cond_4

    .line 275
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/app/LoadedApk;->combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    :cond_4
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v5

    iget-object v6, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    iget-object v7, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v4, v6, v7}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 291
    invoke-direct {p0}, Landroid/app/LoadedApk;->initializeJavaContextClassLoader()V

    .line 299
    .end local v0           #instrumentationAppDir:Ljava/lang/String;
    .end local v1           #instrumentationAppPackage:Ljava/lang/String;
    .end local v2           #instrumentationLibs:[Ljava/lang/String;
    .end local v3           #instrumentedAppDir:Ljava/lang/String;
    .end local v4           #zip:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    goto/16 :goto_0

    .line 300
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 293
    :cond_5
    :try_start_1
    iget-object v5, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    if-nez v5, :cond_6

    .line 294
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 296
    :cond_6
    iget-object v5, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    iput-object v5, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDataDirFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;
    .locals 11
    .parameter "r"
    .parameter "context"
    .parameter "handler"
    .parameter "instrumentation"
    .parameter "registered"

    .prologue
    .line 541
    iget-object v10, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    monitor-enter v10

    .line 542
    const/4 v1, 0x0

    .line 543
    .local v1, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    const/4 v7, 0x0

    .line 544
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz p5, :cond_3

    .line 545
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/HashMap;

    move-object v7, v0

    .line 546
    if-eqz v7, :cond_3

    .line 547
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    .line 550
    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .local v9, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    if-nez v9, :cond_0

    .line 551
    :try_start_1
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 553
    .end local v9           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz p5, :cond_2

    .line 554
    if-nez v8, :cond_1

    .line 555
    :try_start_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 556
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :try_start_3
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :goto_1
    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :goto_2
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v2

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v2

    .line 561
    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    :try_start_4
    invoke-virtual {v9, p2, p3}, Landroid/app/LoadedApk$ReceiverDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_2

    .line 564
    :catchall_0
    move-exception v2

    :goto_3
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_3

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_2
    move-exception v2

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_3

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_1
    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_1

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_2

    :cond_3
    move-object v8, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v9       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_0
.end method

.method public getResDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    return-object v0
.end method

.method public getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;
    .locals 1
    .parameter "mainThread"

    .prologue
    .line 438
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 441
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;
    .locals 6
    .parameter "c"
    .parameter "context"
    .parameter "handler"
    .parameter "flags"

    .prologue
    .line 826
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    monitor-enter v5

    .line 827
    const/4 v2, 0x0

    .line 828
    .local v2, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 829
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_2

    .line 830
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 832
    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .local v3, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :goto_0
    if-nez v3, :cond_1

    .line 833
    :try_start_1
    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/LoadedApk$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 834
    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-nez v1, :cond_0

    .line 835
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 836
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    :cond_0
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :goto_1
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .line 840
    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_1
    :try_start_3
    invoke-virtual {v3, p2, p3}, Landroid/app/LoadedApk$ServiceDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_1

    .line 843
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_2

    :cond_2
    move-object v3, v2

    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_0
.end method

.method public isSecurityViolation()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    return v0
.end method

.method public makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 9
    .parameter "forceDefaultAppClass"
    .parameter "instrumentation"

    .prologue
    const-string v8, ": "

    .line 446
    iget-object v5, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    if-eqz v5, :cond_0

    .line 447
    iget-object v5, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 486
    :goto_0
    return-object v5

    .line 450
    :cond_0
    const/4 v0, 0x0

    .line 452
    .local v0, app:Landroid/app/Application;
    iget-object v5, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 453
    .local v1, appClass:Ljava/lang/String;
    if-nez p1, :cond_1

    if-nez v1, :cond_2

    .line 454
    :cond_1
    const-string v1, "android.app.Application"

    .line 458
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 459
    .local v3, cl:Ljava/lang/ClassLoader;
    new-instance v2, Landroid/app/ContextImpl;

    invoke-direct {v2}, Landroid/app/ContextImpl;-><init>()V

    .line 460
    .local v2, appContext:Landroid/app/ContextImpl;
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, p0, v5, v6}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 461
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v3, v1, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 463
    invoke-virtual {v2, v0}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v2           #appContext:Landroid/app/ContextImpl;
    .end local v3           #cl:Ljava/lang/ClassLoader;
    :cond_3
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iput-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 474
    if-eqz p2, :cond_4

    .line 476
    :try_start_1
    invoke-virtual {p2, v0}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object v5, v0

    .line 486
    goto :goto_0

    .line 464
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 465
    .local v4, e:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v0, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 466
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 477
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 478
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {p2, v0, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 479
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "who"
    .parameter "what"

    .prologue
    const-string v10, "ActivityThread"

    const-string v9, " "

    .line 491
    iget-object v7, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 493
    .local v4, rmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v4, :cond_0

    .line 494
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 495
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 496
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 497
    .local v3, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    new-instance v2, Landroid/app/IntentReceiverLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has leaked IntentReceiver "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "originally registered here. Are you missing a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "call to unregisterReceiver()?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    .line 502
    .local v2, leak:Landroid/app/IntentReceiverLeaked;
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getLocation()Landroid/app/IntentReceiverLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/IntentReceiverLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/IntentReceiverLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 503
    const-string v7, "ActivityThread"

    invoke-virtual {v2}, Landroid/app/IntentReceiverLeaked;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v7

    goto :goto_0

    .line 512
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v2           #leak:Landroid/app/IntentReceiverLeaked;
    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    iget-object v7, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v7, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 516
    .local v6, smap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v6, :cond_1

    .line 517
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 518
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 519
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 520
    .local v5, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    new-instance v2, Landroid/app/ServiceConnectionLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has leaked ServiceConnection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that was originally bound here"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    .line 523
    .local v2, leak:Landroid/app/ServiceConnectionLeaked;
    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getLocation()Landroid/app/ServiceConnectionLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ServiceConnectionLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/ServiceConnectionLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 524
    const-string v7, "ActivityThread"

    invoke-virtual {v2}, Landroid/app/ServiceConnectionLeaked;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    :goto_2
    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    goto :goto_1

    .line 534
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2           #leak:Landroid/app/ServiceConnectionLeaked;
    .end local v5           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_1
    iget-object v7, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    return-void

    .line 528
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2       #leak:Landroid/app/ServiceConnectionLeaked;
    .restart local v5       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :catch_1
    move-exception v7

    goto :goto_2
.end method
