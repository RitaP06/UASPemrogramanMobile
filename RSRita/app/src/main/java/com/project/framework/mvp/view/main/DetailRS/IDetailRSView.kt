package com.project.framework.mvp.view.main.DetailRS

import com.project.framework.mvp.model.api.Rumahsakit
import com.project.framework.mvp.view.baseview.IBaseView

interface IDetailRSView:IBaseView {
    fun setdetail(data:Rumahsakit)
}