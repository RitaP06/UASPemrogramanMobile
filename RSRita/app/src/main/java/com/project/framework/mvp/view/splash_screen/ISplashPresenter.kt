package com.project.framework.mvp.view.splash_screen

import com.project.framework.mvp.di.PerActivity
import com.project.framework.mvp.view.baseview.IBasePresenter


@PerActivity
interface ISplashPresenter<bv:ISplashView>:IBasePresenter<bv> {
     fun opencari()
}