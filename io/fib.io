n1 := 0
n2 := 0
placeholder := 0
fib := method(n,
   n1 = 0
   n2 = 1
   for(i, 2, n,
       placeholder = n2
       n2 = n1 + n2
       n1 = placeholder
   ); n2)

fib(1) println
fib(2) println
fib(3) println
fib(4) println
fib(5) println
fib(30) println