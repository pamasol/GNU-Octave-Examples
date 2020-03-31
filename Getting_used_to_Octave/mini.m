function ret = mini(x)
  ret = x(1);
  for i = 2:length(x),
    if x(i) < ret,
      ret = x(i);
    end;
  end;    
endfunction