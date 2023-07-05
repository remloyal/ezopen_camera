package com.ezopen.ezopen_camera;

import android.content.Context;
import android.view.SurfaceView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.HashMap;
import java.util.Map;

import io.flutter.Log;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class EZOpenViewFactory extends PlatformViewFactory {

    private static final String TAG = "EZOpenSDK-EZOpenViewFactory";

    private final Map<Integer, SurfaceView> views = new HashMap<>();

    public EZOpenViewFactory() {
        super(StandardMessageCodec.INSTANCE);
    }

    // args是布尔类型，表示是否是横屏
    @NonNull
    @Override
    public PlatformView create(Context context, int viewId, @Nullable Object args) {
        Log.d(TAG, "创建SurfaceView, viewId: " + viewId);
        EZOpenView view = new EZOpenView(context);
        views.put(viewId, view.getSurfaceView());
        return view;
    }

    public SurfaceView getSurfaceView(Integer viewId) {
        return views.get(viewId);
    }
}

