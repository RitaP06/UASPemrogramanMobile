package com.project.framework.mvp.view.splash_screen

import com.project.framework.mvp.view.baseview.IBaseView


interface ISplashView:IBaseView {
    fun goToMain()
    fun connectionError()
}