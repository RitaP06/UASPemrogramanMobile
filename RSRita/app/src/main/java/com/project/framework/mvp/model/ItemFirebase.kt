package com.project.framework.mvp.model

import com.google.gson.annotations.Expose
import com.google.gson.annotations.SerializedName



class ItemFirebase {

    @SerializedName("id_penyewa")
    @Expose
    var id_penyewa: String? = null
    @SerializedName("id_perias")
    @Expose
    var id_perias: String? = null
    @SerializedName("lat")
    @Expose
    var lat: String? = null
    @SerializedName("long")
    @Expose
    var long: String? = null
    @SerializedName("status")
    @Expose
    var status: Int? = null
}