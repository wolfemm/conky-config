################################################################################
#                             conky  configuration                             #
# io_rc                                                                        #
# by CytoDev                                                                   #
#==============================================================================#
#                                   Settings                                   #
#------------------------------------------------------------------------------#
alignment top_right
background yes
cpu_avg_samples 1
default_color 0096FA
default_bar_size 239 8
default_outline_color FA9600
default_shade_color 000000
double_buffer yes
draw_borders no
draw_graph_borders yes
draw_outline no
draw_shades no
gap_x 0
gap_y 588
maximum_width 240
minimum_size 300
no_buffers yes
override_utf8_locale no
own_window yes
own_window_argb_value 180
own_window_argb_visual yes
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager
own_window_transparent yes
own_window_type desktop
pad_percents 3
total_run_times 0
update_interval 1
uppercase no
use_spacer left
use_xft yes
xftalpha 1
xftfont monospace:size=8
#------------------------------------------------------------------------------#
#                                   Templates                                  #
#------------------------------------------------------------------------------#
template0 /dev/\1: ${diskio \1} ${diskio_read \1} ${diskio_write \1}
#------------------------------------------------------------------------------#
#                                    Output                                    #
################################################################################

TEXT
${font monospace:bold:size=8}#
${color 000000}IO ${hr}${color }

${template0 sda}
${template0 sdb}
${template0 sdc}