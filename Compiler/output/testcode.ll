define i32 @Program() {
 entry:
  %x = alloca i32
  %0 = add i32 0, 1
  %1 = add i32 0, 2
  %2 = add i32 %0, %1
  store i32 %2, i32* %x
   ret i32 0
}

define i32 @main() {
 entry:
  %calltmp = call i32 @Program()
  ret i32 %calltmp
}

