@.strR = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @input() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.strR, i32 0, i32 0), i32* %1)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

declare i32 @scanf(i8*, ...) #1

@.strP = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @output(i32 %x) #0 {
  %1 = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.strP, i32 0, i32 0), i32 %2)
  ret void
}

declare i32 @printf(i8*, ...) #1

define i32 @Program() {
 entry:
  %a = alloca i32
  %b = alloca i32
  %c = alloca i32
  %0 = call i32 @input()
  store i32 %0, i32* %a
  %1 = call i32 @input()
  store i32 %1, i32* %b
  br label %while0
 while0:
  %2 = add i32 0, 0
  %3 = load i32, i32* %b
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %while1, label %exitWhile1
 while1:
  %5 = load i32, i32* %b
  store i32 %5, i32* %c
  br label %while2
 while2:
  %6 = load i32, i32* %b
  %7 = load i32, i32* %a
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %while3, label %exitWhile3
 while3:
  %9 = load i32, i32* %a
  %10 = load i32, i32* %b
  %11 = sub i32 %9, %10
  store i32 %11, i32* %a
   br label %while2
 exitWhile3:
  %12 = load i32, i32* %a
  store i32 %12, i32* %b
  %13 = load i32, i32* %c
  store i32 %13, i32* %a
   br label %while0
 exitWhile1:
  %14 = load i32, i32* %a
  call void @printf(i32 %14)
   ret i32 0
}

define i32 @main() {
 entry:
  %calltmp = call i32 @Program()
  ret i32 %calltmp
}

