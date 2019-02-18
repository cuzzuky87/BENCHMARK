program timer
implicit none
    use,intrinsic::iso_fortran_env
    integer(int32)::time_bigin_c,time_end_c,count_per_sec,count_max
    call system_clock(time_bigin_c,count_per_sec,count_max)

    

    call system_clock(time_end_c)
    print *,real(time_end_c-time_bigin_c)/count_per_sec,"sec"
end program timer