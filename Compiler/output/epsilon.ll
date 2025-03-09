@.strR = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @input() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.strR, i32 0, i32 0), i32* %1)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

declare i32 @scanf(i8*, ...) #1

define i32 @Program() {
 entry:
  %x = alloca i32
  %0 = call i32 @input()
  store i32 %0, i32* %x
   ret i32 0
}

define i32 @main() {
 entry:
  %calltmp = call i32 @Program()
  ret i32 %calltmp
}

