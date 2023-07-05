package com.ezopen.ezopen_camera;

import android.content.Context;
import android.view.SurfaceView;
import android.view.View;

import androidx.annotation.Nullable;

import io.flutter.plugin.platform.PlatformView;

public class EZOpenView implements PlatformView {
    private final SurfaceView surfaceView;

    public EZOpenView(Context context) {
        surfaceView = new SurfaceView(context);
    }

    public SurfaceView getSurfaceView() {
        return surfaceView;
    }

    @Nullable
    @Override
    public View getView() {
        return surfaceView;
    }

    @Override
    public void dispose() {

    }
}
