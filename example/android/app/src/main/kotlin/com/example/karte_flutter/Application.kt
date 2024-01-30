package com.example.karte_flutter

import io.flutter.app.FlutterApplication
import io.karte.android.KarteApp
import io.karte.android.core.logger.LogLevel

class Application : FlutterApplication() {

    override fun onCreate() {
        super.onCreate()

        KarteApp.setLogLevel(LogLevel.DEBUG)
        KarteApp.setup(this,"xbt8CRHRpU6iDxrS1F3r6TjAr2I3Vc0s")
    }
}
