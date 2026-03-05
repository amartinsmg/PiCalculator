program Pi
  real(8) :: val_pi
  val_pi = calculate_pi(9)
  print "(A, F10.8)", "Pi = ", val_pi

contains
  function calculate_pi(precision)
    real(8) :: calculate_pi, s, k
    integer :: precision, i, max
    s = 0
    k = 1
    max = 10 ** precision
    do i = 0, (max - 1)
      if (mod(i, 2) == 0) then
        s = s + 4 / k
      else
        s = s - 4 / k
      end if
      k = k + 2
    end do
    calculate_pi = s
  end function calculate_pi
end program Pi