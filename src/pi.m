function s = calculatepi(precision)
  s = 0;
  k = 1;
  max = 10 ^ precision;
  for i_ = 0:(max - 1)
    if(mod(i_, 2) == 0)
      s += 4 / k;
    else
      s -= 4 / k;
    end
    k += 2;
  end
end

val_pi = calculatepi(9);
printf("Pi = %.8f\n", val_pi)