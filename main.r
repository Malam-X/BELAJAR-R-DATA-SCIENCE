
# LEARNING R
# BY DR4G0N5
# https://github.com/Malam-X/
# BELAJAR BAHASA PROGRAMMING R + OUTPUTNYA
# PART 1

# 1
# R DATA SCIENCE FOR BEGINNERS

2 * 2
# [1] 4

2 + 2
# [1] 4

2 / 2
# [1] 1

2 %% 2
# [1] 0

print('Hello World!')
# [1] Hello World!

cat('Hello World!', '\n')
# Hello World!

main <- factor(c("satu", "dua", "tiga"))
main
# [1] satu dua tiga
# Levels: dua satu tiga

main <- factor("satu", "dua", "tiga")
main
# [1] <NA>
# Levels: tiga

main <- 1:3
names(main) <- LETTERS[1:3]
main
# A B C
# 1 2 3

(x <- factor(LETTERS[1:3]))
# [1] A B C
# Levels: A B C

(x <- factor(LETTERS[1:3], levels = rev(LETTERS[1:3])))
# [1] A B C
# Levels: C B A

main <- function(x) {
    ifelse(x %% 2 == 0, x**2, x**3)
}
main(5)

# DATA FRAME

main <- data.frame(a = 1:3, b = letters[1:3])
main
#   a b
# 1 1 a
# 2 2 b
# 3 3 c

main <- data.frame(a = 1:3, b = letters[1:3], stringsAsFactors = FALSE)
main
#   a b
# 1 1 a
# 2 2 b
# 3 3 c

main[1,1]
# [1] 1

main[1,]
#   a b
# 1 1 a

main[,"a"]
# 1 2 3

main$b
# [1] 1 2 3
# [1] "a" "b" "c"

xx <- c(1,NA,2)
sum(xx, na.rm = TRUE)
# [1] 3

sum(xx)
# [1] NA

# IF ELSE

x = 1
if (x < 5) {
    print('1')
} else if (x > 5) {
    print('2')
} else {
    print('3')
}
# [1] "1"

# Loops

for (T in 1:3) {
    print(T)
}
# [1] 1
# [1] 2
# [1] 3

x <- c("SATU", "DUA", "TIGA")
for (M in seq_along(x)) {
    print(M)
    print(x[M])
}
# [1] 1
# [1] "SATU"
# [1] 2
# [1] "DUA"
# [1] 3
# [1] "TIGA"

for (.main_loop in 1:10) {
    if (.main_loop %% 4 == 0) {
        next
    }
    if (.main_loop > 4) {
        break
    }
    print(.main_loop)
}
# [1] 1
# [1] 2
# [1] 3

.loops <- 1
while (.loops < 4) {
    print(.loops)
    .loops <- .loops + 1
}
# [1] 1
# [1] 2
# [1] 3

.loops. <- 1
repeat {
    print(.loops.)
    .loops. <- .loops. + 1
    if (.loops. > 3)
        break
}
# [1] 1
# [1] 2
# [1] 3

# FUNCTIONS
# var <- function(arguments) { statements }

main <- function(x) {
    print(x)
}
main('Hello World!')
# [1] "Hello World!"
# [1] 1000

.main <- function(x, y) {
    print(paste(x, "+", y, "=", x + y))
    x + y
}
.main(5, 10)
# [1] "5 + 10 = 15"
# [1] 15

main <- function(x, y) {
    if (y == 0) {
        return(NA)
    } else {
        x / y
    }
}
main(10, 6)
# [1] 1.666667

main(10, 0)
# [1] NA


