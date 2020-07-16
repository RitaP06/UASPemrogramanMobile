package com.project.framework.mvp.model.api

import com.google.gson.annotations.Expose
import com.google.gson.annotations.SerializedName

class Rumahsakit {
    @SerializedName("id")
    @Expose
    lateinit var id: String

    @SerializedName("nm_rs")
    @Expose
    lateinit var nm_rs: String

    @SerializedName("jns_rs")
    @Expose
    lateinit var jns_rs: String

    @SerializedName("alamat_rs")
    @Expose
    lateinit var alamat_rs: String

    @SerializedName("desc_rs")
    @Expose
    lateinit var desc_rs: String

    @SerializedName("kelas_a")
    @Expose
    lateinit var kelas_a: String

    @SerializedName("kelas_b")
    @Expose
    lateinit var kelas_b: String

    @SerializedName("kelas_c")
    @Expose
    lateinit var kelas_c: String

    @SerializedName("igd")
    @Expose
    lateinit var igd: String

    @SerializedName("foto")
    @Expose
    lateinit var foto: String

}