set current_path "D:/docs/FPGA/propel_soc"

cd $current_path

set diamond_project "D:/docs/FPGA/propel_soc/propel_soc.ldf"

set DEVICE "LCMXO3LF-6900C-6BG256C"

set DESIGN "propel_soc"

set LPF_FILE ""

array set VFILE_LIST ""
set VFILE_LIST(1) "D:/docs/FPGA/propel_soc/propel_soc/propel_soc_Top.v"
set VFILE_LIST(2) "D:/docs/FPGA/propel_soc/propel_soc/propel_soc.v"

set index [array names VFILE_LIST]

if { [file exists $diamond_project] == 1} {
    prj_project open $diamond_project
} else {

prj_project new -name "propel_soc" -impl "impl1" -dev $DEVICE -synthesis "synplify"

}
foreach i $index {
    prj_src add $VFILE_LIST($i)
}


prj_impl option HDL_KEYFILE {key_data.dat}
prj_strgy set_value -strategy Strategy1 {bd_cmdline_args=-ip "a" -ic "b"}
prj_strgy set_value -strategy Strategy1 {bd_mem_init_file_path=D:\docs\FPGA\propel_soc\propel_soc\lib\latticesemi.com\ip\sysmem0\1.0.2}


prj_project save

