program useArg
  use,intrinsic :: iso_fortran_env
  implicit none
  integer i,result
  integer(int32)::time_bigin_c,time_end_c,count_per_sec,count_max
  call system_clock(time_bigin_c,count_per_sec,count_max)
  i=0
  result=0
  do i=1,2000000000
    result=addone(result)
  end do
  print *,'result ->',result
  call system_clock(time_end_c)
  print *,real(time_end_c-time_bigin_c)/count_per_sec,"sec"
contains
    function addone(num)
        integer :: num
        integer :: addone
        addone=num+1
    end function addone
end program useArg