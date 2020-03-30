# ------------------------------------------------------------------------------
# If statement
# ------------------------------------------------------------------------------
clc

x = 6
y = 3

if x > 5,
  disp("x is larger than 5!");
end;

if (x < 8)
  disp("x is smaller than 8!");
endif


if y > 10,
  disp("y is bigger than 10!");
elseif y > 0,
  disp("y is greater than 0 but less than 10!");
else
  disp("y is a negative!");
end;

# ------------------------------------------------------------------------------
# For loop
# ------------------------------------------------------------------------------
for i = 1:10,
  disp(sprintf("%ith index", i));
end;

for i = 3:10
  disp(sprintf("%ith index second for loop", i));
endfor

# ------------------------------------------------------------------------------
# While loop
# ------------------------------------------------------------------------------
i = 1;

while i < 10,
  disp(i);
  i=i+1;
end;

# ------------------------------------------------------------------------------
# Break statements
# ------------------------------------------------------------------------------
n = 1
v = 1

while true,
  v = v+n;
  if n > 4,
    break;
  end;
  n = n+1;
 end;

disp ("The value of n is:"), disp (n)
disp ("The value of v is:"), disp (v)


