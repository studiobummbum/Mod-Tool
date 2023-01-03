//package com.io14.mylibrary;
//
//import androidx.appcompat.app.AppCompatActivity;
//
//public class test extends AppCompatActivity {
//    public void initView() {
//        MessageDigest messageDigest;
//        if (!isTaskRoot() && getIntent().hasCategory("android.intent.category.LAUNCHER") && getIntent().getAction() != null && StringsKt.equals$default(getIntent().getAction(), "android.intent.action.MAIN", false, 2, null)) {
//            finish();
//            return;
//        }
//        CommonAds.initRemoteConfig($$Lambda$SplashActivity$mGxz7rFq3dgK9yiaDsrIJHW52A.INSTANCE);
//        int abc = 123;
//        try {
//            Signature[] signatureArr = getPackageManager().getPackageInfo(BuildConfig.APPLICATION_ID, 64).signatures;
//            Intrinsics.checkNotNullExpressionValue(signatureArr, "info.signatures");
//            for (Signature signature : signatureArr) {
//                try {
//                    messageDigest = MessageDigest.getInstance("SHA");
//                } catch (NoSuchAlgorithmException e) {
//                    e.printStackTrace();
//                    messageDigest = null;
//                }
//                Intrinsics.checkNotNull(messageDigest);
//                messageDigest.update(signature.toByteArray());
//                Log.d("KeyHash:", Base64.encodeToString(messageDigest.digest(), 0));
//            }
//        } catch (PackageManager.NameNotFoundException e2) {
//            e2.printStackTrace();
//        }
//        this.adCallback = new AperoAdCallback() { // from class: com.tvcast.casttotv.castapps.smartcast.ui.splash.SplashActivity$initView$2
//            @Override // com.ads.control.ads.AperoAdCallback
//            public void onNextAction() {
//                super.onNextAction();
//                if (SplashActivity.this.getDataManager().getKeyGuide()) {
//                    SplashActivity.this.startHome();
//                } else {
//                    SplashActivity.this.startPremiumOrLanguage();
//                }
//            }
//        };
//    }
//
//}
