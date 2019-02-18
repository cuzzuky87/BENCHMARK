module test
    implicit none
    integer count
contains
    subroutine counter()
        count=count+1
    end subroutine counter
end module

program useModule
    use test
    use,intrinsic::iso_fortran_env
    implicit none
    integer i
    integer(int32)::time_bigin_c,time_end_c,count_per_sec,count_max
    call system_clock(time_bigin_c,count_per_sec,count_max)
    i=0
    do i=1,2000000000
        call counter
    end do
    print * ,'count->',count
    call system_clock(time_end_c)
    print *,real(time_end_c-time_bigin_c)/count_per_sec,"sec"
end program useModule