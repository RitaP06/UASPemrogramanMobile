package com.project.framework.mvp.di.componen

import com.project.framework.mvp.di.module.ViewModule
import com.project.framework.mvp.view.main.DetailRS.DetailRSActivity
import com.project.framework.mvp.view.main.MainActivity

import com.project.framework.mvp.view.splash_screen.SplashActivity
import dagger.Component


/*

Maxxis Application

*/
@Component(dependencies = [IApplicationComponent::class], modules = [ViewModule::class])
interface IViewComponent {
    fun inject(activity: SplashActivity)


    fun inject(activity: MainActivity)
    fun inject(activity: DetailRSActivity)

}