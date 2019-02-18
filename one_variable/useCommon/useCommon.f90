program useCommon
    use,intrinsic::iso_fortran_env
    implicit none
    common /iblock/ icount
    integer icount,i
    integer(int32)::time_bigin_c,time_end_c,count_per_sec,count_max
    call system_clock(time_bigin_c,count_per_sec,count_max)
    do i=1,2000000000
        call count
    end do
    print * ,'useCommon->',icount
    call system_clock(time_end_c)
    print *,real(time_end_c-time_bigin_c)/count_per_sec,"sec"
contains
    subroutine count
        icount = icount+1
    end subroutine count
end program useCommon

