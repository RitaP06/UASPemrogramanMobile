package com.project.framework.mvp.view.splash_screen

import com.project.framework.mvp.BuildConfig
import com.project.framework.mvp.data.DataManager
import com.project.framework.mvp.utils.constant.ApiEndPoint
import com.project.framework.mvp.utils.constant.StringConstant
import com.project.framework.mvp.utils.reactive.SchedulerProvider
import com.project.framework.mvp.view.baseview.BasePresenter
import io.reactivex.disposables.CompositeDisposable
import java.util.HashMap
import javax.inject.Inject

/*

Maxxis Application

*/
class SplashPresenter<bv : ISplashView> @Inject constructor(
    mDataManager: DataManager,
    mSchedulerProvider: SchedulerProvider,
    mCompositeDisposable: CompositeDisposable
) : BasePresenter<bv>(mDataManager, mSchedulerProvider, mCompositeDisposable), ISplashPresenter<bv> {
    override fun opencari() {
        appView?.goToMain()
        appView?.hideLoading()
    }

}