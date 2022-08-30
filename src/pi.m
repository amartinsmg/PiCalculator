function _pi = calculatepi(precision)
  _pi = 0;
  k = 1;
  max = 10 ^ precision;
  for i_ = 0: max
    if(mod(i_, 2) == 0)
      _pi += 4 / k;
    else
      _pi -= 4 / k;
    end
    k += 2;
  end
end

_pi = calculatepi(9);
printf("Pi = %.8f\n", _pi)