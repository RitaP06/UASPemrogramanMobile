package com.project.framework.mvp.view.main.DetailRS

import com.bumptech.glide.Glide
import com.project.framework.mvp.R
import com.project.framework.mvp.model.api.Rumahsakit
import com.project.framework.mvp.utils.constant.ApiEndPoint
import com.project.framework.mvp.view.baseview.BaseActivity
import com.project.framework.mvp.view.baseview.BaseDialog
import com.project.framework.mvp.view.baseview.BaseFragment
import kotlinx.android.synthetic.main.activity_detailrs.*
import javax.inject.Inject

class DetailRSActivity(val type: Int, val item: Rumahsakit): BaseDialog(),IDetailRSView {
    @Inject
    lateinit var mPresenter: IDetailRSPresenter<IDetailRSView>
    override fun setLayout(): Int = R.layout.activity_detailrs

    override fun initCreateView() {
        viewComponent().inject(this)
        mPresenter.onAttach(this)
        if (type == 1) {
            nama_rs.setText(item.nm_rs)
            desc_rs.setText(item.desc_rs)
            alamat_rs.setText(item.alamat_rs)
            kelasA.setText(item.kelas_a)
            kelasB.setText(item.kelas_b)
            kelasC.setText(item.kelas_c)
            igd.setText(item.igd)
            Glide.with(context!!)
                .load(ApiEndPoint.ENDPOINT_IMAGE_PROFIL + item.foto)
                .into(img_rs)

        }

    }

    override fun initDestroyView() {

    }

    override fun setdetail(data: Rumahsakit) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
}