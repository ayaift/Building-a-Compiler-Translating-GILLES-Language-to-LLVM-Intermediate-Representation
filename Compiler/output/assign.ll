define i32 @Program() {
 entry:
  %x = alloca i32
  %y = alloca i32
  %0 = add i32 0, 5
  store i32 %0, i32* %x
  %1 = add i32 0, 10
  store i32 %1, i32* %y
   ret i32 0
}

define i32 @main() {
 entry:
  %calltmp = call i32 @Program()
  ret i32 %calltmp
}

