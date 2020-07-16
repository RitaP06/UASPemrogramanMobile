package com.project.framework.mvp.view.main.DetailRS

import com.project.framework.mvp.data.DataManager
import com.project.framework.mvp.utils.reactive.SchedulerProvider
import com.project.framework.mvp.view.baseview.BasePresenter
import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject

class DetailRSPresenter<bv:IDetailRSView>@Inject constructor(
    dm: DataManager,
    sp: SchedulerProvider,
    cd: CompositeDisposable
) : BasePresenter<bv>(dm, sp, cd),IDetailRSPresenter<bv> {
}