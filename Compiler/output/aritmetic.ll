define i32 @Program() {
 entry:
  %x = alloca i32
  %y = alloca i32
  %z = alloca i32
  %w = alloca i32
  %0 = add i32 0, 5
  %1 = add i32 0, 3
  %2 = add i32 %0, %1
  store i32 %2, i32* %x
  %3 = load i32, i32* %x
  %4 = add i32 0, 2
  %5 = sub i32 %3, %4
  store i32 %5, i32* %y
  %6 = load i32, i32* %x
  %7 = load i32, i32* %y
  %8 = mul i32 %6, %7
  store i32 %8, i32* %z
  %9 = load i32, i32* %z
  %10 = add i32 0, 2
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %w
   ret i32 0
}

define i32 @main() {
 entry:
  %calltmp = call i32 @Program()
  ret i32 %calltmp
}

