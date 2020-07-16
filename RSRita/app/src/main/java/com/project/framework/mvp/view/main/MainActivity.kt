package com.project.framework.mvp.view.main


import android.content.Intent
import android.view.View
import androidx.appcompat.widget.SearchView
import androidx.recyclerview.widget.LinearLayoutManager
import com.project.framework.mvp.R
import com.project.framework.mvp.adapter.FastRvAdapter
import com.project.framework.mvp.model.api.Rumahsakit
import com.project.framework.mvp.view.baseview.BaseActivity
import com.project.framework.mvp.view.main.DetailRS.DetailRSActivity

import kotlinx.android.synthetic.main.activity_carirs.*
import kotlinx.android.synthetic.main.item_rs.view.*

import javax.inject.Inject

/*




 */



class MainActivity : BaseActivity(),IMainView {
    @Inject
    lateinit var mpresenter:IMainPresenter<IMainView>
    lateinit var listData:ArrayList<Rumahsakit>
    lateinit var filterlistData:ArrayList<Rumahsakit>
    lateinit var adapterRv:FastRvAdapter

    override fun setLayout(): Int = R.layout.activity_carirs

    override fun initCreateView() {
        viewComponent().inject(this)
        mpresenter.onAttach(this)
        listData = ArrayList()
        filterlistData = ArrayList()
        var linearLayoutManager = LinearLayoutManager(this)
        rv.layoutManager=linearLayoutManager
        adapterRv = FastRvAdapter(filterlistData,R.layout.item_rs)
        adapterRv.setItemView(object:FastRvAdapter.InitViewInterface{
            override fun initItemView(itemView: View, item: Any, position: Int) {
                val itm =(item as Rumahsakit)
                itemView.nama_rs.text=itm.nm_rs
                itemView.jns_rs.text=itm.jns_rs
                itemView.alamat_rs.text=itm.alamat_rs
                itemView.btn_detail.setOnClickListener {
                    DetailRSActivity(1, itm).show(this@MainActivity.supportFragmentManager, "")
                }
            }

        })
        rv.adapter = adapterRv
        mpresenter.getdata()
        sv.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(p0: String?): Boolean {
                return true
            }
            override fun onQueryTextChange(p0: String?): Boolean {
                filterRv(p0!!)
                return true
            }
        })


    }

    override fun initDestroyView() {

    }

    override fun setRecycleView(items: List<Rumahsakit>) {
        listData.clear()
        filterlistData.clear()
        listData.addAll(items)
        filterlistData.addAll(items)
        adapterRv.notifyDataSetChanged()
    }

    override fun onSukses() {

    }

    override fun onNoData() {

    }

    override fun onError() {

    }
    fun filterRv(cari: String) {
        filterlistData.clear()
        filterlistData.addAll(listData.filter {
            it.nm_rs!!.toLowerCase().contains(cari.toLowerCase())
                .or(it.jns_rs!!.toLowerCase().contains(cari.toLowerCase()))
                .or(it.alamat_rs!!.toLowerCase().contains(cari.toLowerCase()))
        })
        adapterRv.notifyDataSetChanged()
    }
}