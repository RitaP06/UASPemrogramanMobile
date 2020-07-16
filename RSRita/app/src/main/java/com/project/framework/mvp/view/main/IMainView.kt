package com.project.framework.mvp.view.main

import com.project.framework.mvp.model.api.Rumahsakit
import com.project.framework.mvp.view.baseview.IBaseView

interface IMainView:IBaseView {
    fun setRecycleView(items:List<Rumahsakit>)
    fun onSukses()
    fun onNoData()
    fun onError()
}