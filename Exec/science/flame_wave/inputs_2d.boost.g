# ------------------  INPUTS TO MAIN PROGRAM  -------------------
max_step = 990000
stop_time =  3.0

# PROBLEM SIZE & GEOMETRY
geometry.is_periodic = 0       0
geometry.coord_sys   = 1                  # 0 => cart, 1 => RZ  2=>spherical
geometry.prob_lo     = 0       0
geometry.prob_hi     = 4.096e4     2.048e4
amr.n_cell           = 128         64

# >>>>>>>>>>>>>  BC FLAGS <<<<<<<<<<<<<<<<
# 0 = Interior           3 = Symmetry
# 1 = Inflow             4 = SlipWall
# 2 = Outflow            5 = NoSlipWall
# >>>>>>>>>>>>>  BC FLAGS <<<<<<<<<<<<<<<<
castro.lo_bc       =  3   1
castro.hi_bc       =  2   1

castro.yl_ext_bc_type = "hse"
castro.hse_interp_temp = 1
castro.hse_reflect_vels = 1

castro.yr_ext_bc_type = "interp"

# WHICH PHYSICS
castro.do_hydro = 1
castro.do_react = 1
castro.do_rotation = 1
castro.do_grav = 1
castro.do_sponge = 1

castro.small_temp = 1.e6
castro.small_dens = 1.e-5

castro.ppm_type = 1
castro.ppm_reference_eigenvectors = 1
castro.ppm_trace_sources = 1
castro.grav_source_type = 2

castro.allow_negative_energy = 0

gravity.gravity_type = ConstantGrav
gravity.const_grav   = -1.5e14

castro.rotational_period = 0.001
castro.rotation_include_centrifugal = 0

castro.diffuse_temp = 1
castro.diffuse_cutoff_density = 1.e4
castro.diffuse_cond_scale_fac = 10.0

diffusion.use_mlmg_solver=1 


# TIME STEP CONTROL
castro.cfl            = 0.8     # cfl number for hyperbolic system
castro.init_shrink    = 0.1     # scale back initial timestep
castro.change_max     = 1.1     # max time step growth
castro.dt_cutoff      = 5.e-20  # level 0 timestep below which we halt
castro.use_retry      = 1
castro.hard_cfl_limit = 0


# DIAGNOSTICS & VERBOSITY
castro.sum_interval   = 1       # timesteps between computing mass
castro.v              = 1       # verbosity in Castro.cpp
amr.v                 = 1       # verbosity in Amr.cpp

# REFINEMENT / REGRIDDING
amr.max_level       = 2       # maximum level number allowed
amr.ref_ratio       = 4 4 2 2 # refinement ratio
amr.regrid_int      = 2 2 2 2 # how often to regrid
amr.blocking_factor = 16       # block factor in grid generation
amr.max_grid_size   = 128
amr.n_error_buf     = 2 2 2 2 # number of buffer cells in error est

# CHECKPOINT FILES
amr.check_file      = chk        # root name of checkpoint file
amr.check_int       = 1000        # number of timesteps between checkpoints

# PLOTFILES
amr.plot_file        = plt        # root name of plotfile
amr.plot_per         = 5.e-5      # number of seconds between plotfiles
amr.derive_plot_vars = ALL

#PROBIN FILENAME
amr.probin_file = probin.boost
