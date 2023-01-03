package com.io14.mylibrary;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

import androidx.appcompat.app.AppCompatActivity;

import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;


public class splashScreenActivity extends AppCompatActivity {

    private Runnable adChecker;
    private AdLoader adLoader;
    private Handler mHandler;
    private InterstitialAd mInterstitialAd;
    private int mInterval = 5000;
    private boolean isShowAd = false;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private int timeOpen = 0;
    private String sdk_time_open = "dazz_open_time";
    private int show_ad_every_x_time = 4;
    boolean connected = false;
    private Object c1;
    public static final int VERSION_CODE = 1;
    public String VERSION_NAME = "1.0.0";


    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        checkAds();


        loadNativeAd();
        if (canShowAd()) {
            initAds();
            this.adChecker = new Runnable() { // from class: com.cameravintage.vntgfilm.retro.activity.splashScreenActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    if (splashScreenActivity.this.mInterstitialAd != null) {
                        splashScreenActivity.this.isShowAd = true;
                        splashScreenActivity.this.mInterstitialAd.show(splashScreenActivity.this);
                        return;
                    }
                    splashScreenActivity.this.handler.postDelayed(splashScreenActivity.this.adChecker, 1500L);
                }
            };
            runDelayCheckAds();
            return;
        }

        this.handler.postDelayed(new Runnable() { // from class: com.cameravintage.vntgfilm.retro.activity.splashScreenActivity.2
            @Override // java.lang.Runnable
            public void run() {
                splashScreenActivity.this.goNext();
            }
        }, 1500L);
    }

    private void checkAds() {
        if (!canShowAd()){
            goNext();
        }
    }

    private void initAds() {
        if (getSharedPreferences("new_upink", MODE_MULTI_PROCESS).getBoolean("alllock", false)) {
            this.mInterstitialAd = null;
            return;
        }

    }


//    private boolean isVPN() {
//    }

    private void loadNativeAd() {
    }


    private boolean canShowAd() {
        return false;
    }

    private void runDelayCheckAds() {
    }

    public void onResume() {
        super.onResume();
        if (this.isShowAd) {
            goNext();
        }
    }

    private void goNext() {
    }


}
