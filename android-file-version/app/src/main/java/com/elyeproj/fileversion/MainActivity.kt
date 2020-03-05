package com.elyeproj.fileversion

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        version_name.text = applicationContext
            .packageManager
            .getPackageInfo(packageName, 0)
            .versionName
    }
}
