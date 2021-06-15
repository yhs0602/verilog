
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Final_home -dir "/csehome/kygc/verilog/planAhead_run_5" -part xc3s50antqg144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/csehome/kygc/verilog/testtest.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/csehome/kygc/verilog} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "testtest.ucf" [current_fileset -constrset]
add_files [list {testtest.ucf}] -fileset [get_property constrset [current_run]]
link_design
