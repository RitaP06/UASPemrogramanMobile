package com.project.framework.mvp.view.splash_screen


import android.content.Intent
import com.project.framework.mvp.R
import com.project.framework.mvp.view.baseview.BaseActivity
import com.project.framework.mvp.view.main.MainActivity
import javax.inject.Inject


/*

Maxxis Application

*/
class SplashActivity : BaseActivity(), ISplashView {


    @Inject
    lateinit var mPresenter: ISplashPresenter<ISplashView>


    override fun goToMain() {
        val intent = Intent(this, MainActivity::class.java)
        startActivity(intent)
        finish()
    }

    override fun connectionError() {
        finish()
    }

    override fun setLayout(): Int = R.layout.activity_splash_screen
    private val TAG = "RSRita"
    override fun initCreateView() {
        viewComponent().inject(this)
        mPresenter.onAttach(this)
        mPresenter.opencari()
    }

    override fun initDestroyView() {
        mPresenter.onDetach()
    }
}
