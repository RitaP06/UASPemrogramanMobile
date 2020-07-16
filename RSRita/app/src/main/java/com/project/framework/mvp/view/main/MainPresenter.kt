package com.project.framework.mvp.view.main

import com.google.common.reflect.TypeToken
import com.project.framework.mvp.data.DataManager
import com.project.framework.mvp.model.api.Rumahsakit
import com.project.framework.mvp.utils.constant.ApiEndPoint
import com.project.framework.mvp.utils.reactive.SchedulerProvider
import com.project.framework.mvp.view.baseview.BasePresenter
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.functions.Consumer
import javax.inject.Inject

class MainPresenter<bv:IMainView>@Inject constructor(
    dm: DataManager,
    sp: SchedulerProvider,
    cd: CompositeDisposable
) :
    BasePresenter<bv>(dm, sp, cd),IMainPresenter<bv> {
    override fun getdata() {
        appView!!.showLoading()
        compositeDisposable.add(dataManager.getData(
            ApiEndPoint.ENDPOINT_LIHAT_RUMAHSAKIT
        ).subscribeOn(schedulerProvider.io())
            .observeOn(schedulerProvider.ui())
            .subscribe(Consumer {
                if (it.getString("status") == "200") {
                    val mJsonArray = it.getJSONArray("data")
                    val listType = object : TypeToken<List<Rumahsakit>>() {}.type
                    val items = jsonParser.fromJson<List<Rumahsakit>>(mJsonArray.toString(), listType)
                    appView!!.setRecycleView(items)
                    appView!!.hideLoading()
                } else {
                    appView!!.hideLoading()
                    appView!!.onNoData()
                    appView!!.msgToast(it.getString("message")).Warning()
                }
            }, Consumer {
                appView!!.hideLoading()
                appView!!.msgToast(it.message!!).Error()
                appView!!.onError()
            })
        )
    }
}