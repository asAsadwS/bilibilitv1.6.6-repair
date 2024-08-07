package bl;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import bl.bhx;
import com.bilibili.api.BiliConfig;
import com.bilibili.tv.player.basic.context.PlayerParams;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.lang.annotation.Annotation;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONTokener;
import tv.danmaku.android.log.BLog;
import tv.danmaku.videoplayer.core.danmaku.DanmakuLoadException;
import tv.danmaku.videoplayer.core.danmaku.IDanmakuParams;
import tv.danmaku.videoplayer.core.danmaku.comment.CommentItem;
import tv.danmaku.videoplayer.core.danmaku.comment.CommentItemFactory;
import tv.danmaku.videoplayer.core.danmaku.comment.CommentParseException;

/* compiled from: BL */
/* loaded from: classes.dex */
public class ym {
    public static Pattern a = null;
    static final /* synthetic */ boolean b = true;
    private static final String c = "bl.ym";

    private static String b(Context context, String str, boolean z, String str2) {
        return str;
    }

    public static String a(Context context, String str) {
        long d = mg.a(context).d();
        String e = mg.a(context).e();
        HttpUrl.Builder q = HttpUrl.f("http://api.bilibili.com/x/v1/dm/list.so").q();
        q.a("oid", str);
        if (!TextUtils.isEmpty(e) && d > 0) {
            q.a("access_key", e);
        }
        return new wa().intercept(new bhx.a().a(q.c()).b()).a().toString();
    }

    public static String a(Context context, String str, String str2, long j) {
        long d = mg.a(context).d();
        String e = mg.a(context).e();
        HttpUrl.Builder q = HttpUrl.f("http://api.bilibili.com/x/v2/dm/list.so").q();
        q.a("aid", str).a("oid", str2).a("ps", String.valueOf(j)).a("type", "1").a("plat", "2");
        if (!TextUtils.isEmpty(e) && d > 0) {
            q.a("access_key", e);
        }
        return new wa().intercept(new bhx.a().a(q.c()).b()).a().toString();
    }

    public static String a(String str) {
        Uri.Builder buildUpon = Uri.parse("http://comment.bilibili.com").buildUpon();
        buildUpon.appendEncodedPath(String.format("dm,%s", str));
        return buildUpon.toString();
    }

    public static File a(Context context) {
        File file = new File(context.getCacheDir(), ".danmaku");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File b(Context context, String str) {
        return new File(a(context), String.format("%s.xml", str));
    }

    public static yl a(Context context, PlayerParams playerParams) {
        File b2 = b(context, String.valueOf(playerParams.mVideoParams.obtainResolveParams().mCid));
        if (!b2.exists()) {
            yn.a().a("The local danmaku file is not exist");
            return null;
        }
        if (System.currentTimeMillis() - b2.lastModified() < 1800000) {
            try {
                BLog.i(c, "load danmaku from cache");
                yl a2 = a(context, b2, playerParams.mDanmakuParams);
                if (a2 != null) {
                    return a2;
                }
                b2.delete();
                return null;
            } catch (DanmakuLoadException unused) {
                return null;
            }
        }
        yn.a().a("The local danmaku file is expired");
        return null;
    }

    public static yl a(Context context, InputStream inputStream, IDanmakuParams iDanmakuParams) throws DanmakuLoadException {
        yl ylVar = (yl) iDanmakuParams.optDanmakuDocument();
        ylVar.e = inputStream;
        return ylVar;
    }

    public static yl a(Context context, File file, IDanmakuParams iDanmakuParams) throws DanmakuLoadException {
        try {
            BLog.i(c, "load danmaku from file : " + file.getPath());
            return a(context, new BufferedInputStream(new FileInputStream(file)), iDanmakuParams);
        } catch (IOException e) {
            yn.a().a("IOException when load danmaku from stream");
            BLog.e(c, e.getMessage());
            throw new DanmakuLoadException(e);
        }
    }

    public static yl a(Context context, IDanmakuParams iDanmakuParams, int i, int i2, long j) throws DanmakuLoadException {
        String a2 = a(context, String.valueOf(i), String.valueOf(i2), j);
        BLog.i(c, "new danmaku load url:" + a2);
        yl a3 = a(context, a2, iDanmakuParams, false, (String) null);
        if (a3 != null) {
            a3.setAidAndCid(String.valueOf(i), String.valueOf(i2));
        }
        return a3;
    }

    public static yl a(Context context, String str, IDanmakuParams iDanmakuParams, boolean z, String str2) throws DanmakuLoadException {
        try {
            return a(context, a(context, str, z, str2), iDanmakuParams);
        } catch (IOException e) {
            BLog.e(c, " load new danmaku error:" + e.getMessage());
            if ((e instanceof SocketTimeoutException) || !(e instanceof InterruptedIOException)) {
                yn.a().a(e.getClass().getName() + ":" + e.getMessage());
                if (yn.a().e() == 0) {
                    yn.a().b(8);
                }
                throw new DanmakuLoadException(e);
            }
            return null;
        } finally {
            yn.a().b(str);
        }
    }

    private static bhv b() {
        return us.b().b(60L, TimeUnit.SECONDS).c(30L, TimeUnit.SECONDS).a(10L, TimeUnit.SECONDS).b(true).c();
    }

    private static bhx a(HttpUrl httpUrl) {
        return new bhx.a().a("Accept", "application/xhtml+xml,application/xml").a("Accept-Encoding", "gzip, deflate").a("User-Agent", BiliConfig.b()).a("Connection", "keep-alive").a(httpUrl).a().b();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x014e A[LOOP:0: B:11:0x0040->B:32:0x014e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0152 A[EDGE_INSN: B:33:0x0152->B:34:0x0152 BREAK  A[LOOP:0: B:11:0x0040->B:32:0x014e], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static InputStream a(Context context, String str, boolean z, String str2) throws IOException {
        blh blhVar;
        String str3 = null;
        if (bll.c(context)) {
            yn.a().b(1);
        }
        bhv b2 = b();
        HttpUrl f = HttpUrl.f(z ? str2 : str);
        bhx a2 = a(f);
        try {
            try {
                SystemClock.elapsedRealtime();
                vp vpVar = new vp(a2, bia.class, new Annotation[0], b2, jk.c());
                vpVar.a(new vx());
                vp vpVar2 = vpVar;
                blh blhVar2 = null;
                for (int i = 0; i < 3; i++) {
                    if (i > 0) {
                        String b3 = b(context, str, z, str2);
                        BLog.i(c, "try danmaku url:" + b3);
                        if (b3.startsWith("https")) {
                            vpVar2 = vpVar2.b();
                        } else {
                            vp vpVar3 = new vp(a(f.q().a("https").c()), bia.class, new Annotation[0], b2, jk.c());
                            vpVar3.a(new vx());
                            vpVar2 = vpVar3;
                        }
                    }
                    try {
                        blhVar = vpVar2.d();
                        if (blhVar == null) {
                            str3 = "response is null!";
                        } else {
                            try {
                                if (blhVar.d().c("Content-Length").size() > 0 && Integer.parseInt(blhVar.d().c("Content-Length").get(0)) <= 0) {
                                    str3 = "content-length is 0!";
                                } else if (blhVar.f() == null) {
                                    str3 = "the body of response is null!";
                                } else if (((bia) blhVar.f()).d() == null) {
                                    str3 = "the body stream of response is null!";
                                } else {
                                    str3 = ((bia) blhVar.f()).d().available() <= 0 ? "the body stream length of response is 0!" : null;
                                }
                            } catch (Exception e) {
                                BLog.e(c, " load new danmaku error :" + str + " for :" + e.getMessage() + " times : " + i);
                                if (i >= 2) {
                                    throw e;
                                }
                                blhVar2 = blhVar;
                            }
                        }
                    } catch (Exception e2) {
                        blhVar = blhVar2;
                    }
                    if (str3 != null) {
                        throw new IOException("the inputstream length is 0 for msg = " + str3);
                    }
                    blhVar2 = blhVar;
                }
                int b4 = blhVar2.b();
                if (b4 != 200) {
                    if (blhVar2.f() != null) {
                        ((bia) blhVar2.f()).close();
                    }
                    BLog.e(c, " load new danmaku error : code != 200");
                    throw new FileNotFoundException("Unexpected response code: " + b4);
                }
                bia biaVar = (bia) blhVar2.f();
                yn.a().a(biaVar.b());
                if (blhVar2.f() != null && blhVar2.d().c("Content-Encoding").size() > 0) {
                    if ("deflate".equalsIgnoreCase(blhVar2.d().c("Content-Encoding").get(0))) {
                        return new InflaterInputStream(biaVar.d(), new Inflater(true), 1024);
                    }
                    BLog.i(c, "response do not have deflate header");
                    if ("gzip".equalsIgnoreCase(blhVar2.d().c("Content-Encoding").get(0))) {
                        return new GZIPInputStream(biaVar.d(), 1024);
                    }
                    BLog.i(c, "response do not have gzip header");
                }
                return biaVar.d();
            } catch (SocketTimeoutException e3) {
                BLog.e(c, " load new danmaku error :" + e3.getMessage());
                yn.a().b(3);
                yn.a().a(e3.getClass().getName() + ":" + e3.getMessage());
                throw e3;
            } catch (IOException e4) {
                BLog.e(c, " load new danmaku error :" + e4.getMessage());
                throw e4;
            }
        } catch (Exception e5) {
            BLog.e(c, " load new danmaku error :" + e5.getMessage());
            throw new IOException(e5);
        }
    }

    public static yl b(Context context, PlayerParams playerParams) throws DanmakuLoadException {
        String a2;
        ResolveResourceParams obtainResolveParams = playerParams.mVideoParams.obtainResolveParams();
        if (obtainResolveParams.isEmptyCid()) {
            a2 = a(obtainResolveParams.mVid);
        } else {
            a2 = a(context, String.valueOf(obtainResolveParams.mCid));
        }
        BLog.i(c, "load old danmaku url :" + a2);
        yn.a().b(a2);
        return a(context, a2, playerParams.mDanmakuParams, false, a2);
    }

    public static void a() {
        if (a == null) {
            a = Pattern.compile("Player\\.seek\\((\\d+)\\);");
        }
    }

    public static long b(String str) {
        a();
        Matcher matcher = a.matcher(str);
        if (!matcher.find()) {
            return 0L;
        }
        String group = matcher.group(1);
        if (TextUtils.isEmpty(group)) {
            return 0L;
        }
        return Long.parseLong(group);
    }

    public static CommentItem a(String str, String str2) {
        if (!b && str2 == null) {
            throw new AssertionError();
        }
        if (!b && str == null) {
            throw new AssertionError();
        }
        String[] split = str.split(",");
        boolean z = split.length > 8;
        if (split.length < 4) {
            return null;
        }
        try {
            CommentItem createComment = CommentItemFactory.createComment(split[1]);
            if (createComment != null && createComment.isValid()) {
                createComment.setTimeInSeconds(split[0]);
                createComment.setBody(str2);
                createComment.setSize(split[2]);
                createComment.setTextColor(split[3]);
                if (z) {
                    createComment.setDmId(split[5]);
                }
                if (split.length > 6) {
                    createComment.setPublisherId(z ? split[7] : split[6]);
                }
                if (split.length > 7 && !z) {
                    createComment.setDmId(split[7]);
                }
            }
            return createComment;
        } catch (NumberFormatException e) {
            BLog.e(e.toString());
            return null;
        } catch (CommentParseException e2) {
            BLog.e(e2.toString());
            return null;
        }
    }

    static CommentItem c(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONArray jSONArray = new JSONArray(str);
        if (jSONArray.length() < 2) {
            return null;
        }
        JSONArray optJSONArray = jSONArray.optJSONArray(0);
        String optString = jSONArray.optString(1);
        if (optJSONArray == null || optJSONArray.length() == 0 || TextUtils.isEmpty(optString)) {
            return null;
        }
        String jSONArray2 = optJSONArray.toString();
        return a(jSONArray2.substring(1, jSONArray2.length() - 1), optString);
    }

    public static CommentItem d(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("[[")) {
            return c(str);
        }
        return e(str);
    }

    private static CommentItem e(String str) throws JSONException {
        Object nextValue;
        if (TextUtils.isEmpty(str) || (nextValue = new JSONTokener(str).nextValue()) == null || !(nextValue instanceof JSONArray)) {
            return null;
        }
        JSONArray jSONArray = (JSONArray) nextValue;
        if (jSONArray.length() < 2) {
            return null;
        }
        String optString = jSONArray.optString(0);
        String optString2 = jSONArray.optString(1);
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
            return null;
        }
        return a(optString, optString2);
    }
}