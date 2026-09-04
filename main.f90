program main
    implicit none
    complex(kind=8) :: cplx, temp
    integer :: x, y, i
    real :: a, b


    do y = -26, 26
        do x = -140, 40
            a = REAL(x) / 64.0
            b = REAL(y) / 24.0
            cplx = cmplx(a,b)
            temp = (0.0d0, 0.0d0)
            do i = 0, 11
                temp = temp**2
                temp = temp + cplx
            end do
            if(ABS(temp) > 2.5) then
                write(*,"(A)",advance="no") " "
            else
                write(*,"(A)",advance="no") "@"
            end if
            cplx = (0.0d0, 0.0d0)
        end do
        write(*,*)
    end do



end program main