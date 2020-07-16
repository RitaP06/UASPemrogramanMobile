package com.project.framework.mvp.view.baseview

/*

Maxxis Application

*/
interface IBasePresenter<bv:IBaseView> {
    fun onAttach(appView : bv)
    fun onDetach()
}