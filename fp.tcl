set PDK_PATH ./../ref

create_lib -ref_lib $PDK_PATH/lib/ndm/saed32rvt_c.ndm FULL_ADDER_LIB

read_verilog {./../DC/results/ful_bit.mapped.v} -library FULL_ADDER_LIB -design ful_bit -top ful_bit //path for verilog code and mapped file

//creating scenario of U shape 
initialize_floorplan -core_utilization 0.8 -coincident_boundary true -core_offset {1 2} -shape U -orientation E
set_individual_pin_constraints -ports [get_ports {A[0] B[1]}] -sides "6"
place_pins -self
create_placement -floorplan -effort high
save_block
save_lib
