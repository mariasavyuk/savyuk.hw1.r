#1У нас есть пять наблюдений температуры в градусах Цельсия: 16, 12, 25, 21 и 16. 
#Создайте из них вектор t.celsius. Преобразуйте значения температуры в градусы Фаренгейта и 
#сохраните результат в вектор t.fahrengeit.

t.celsius <- c(16, 12, 25, 21, 16)
t.fahrengeit <- t.celsius * 9 / 5 + 32 

#2Создайте следующий вектор n1 с помощью векторизованных арифметических операций:
#  (0.53^3∗0.21^2,0.53^7∗0.21^3,0.5311∗0.214,...,0.5331∗0.219)

nst1 <- seq(3, 31, by = 4)
n053 <- rep(0.53, times = 8)
n053 <- n053^nst1

nst2 <- seq(2, 9, by = 1)
n021 <- rep(0.21, times = 8)
n021 <- n021^nst2

n1 <- n053 * n021

#3Cоздайте следующий вектор n2 с помощью векторизованных арифметических операций:

nst1 <- seq(1, 25, by = 1)
nch <- rep(2, times = 25)
nzn <- seq(3, 75, by = 3)

n2 <- nch^nst1 / nzn

#4Рассчитайте следующую сумму:

i <- seq(3, 23, by = 1)
vsum <- 2*i^3 + i^4
sum(vsum)

#5Вычислите сумму чисел от 10 до 88, кратных 6, с использованием функции sum().
sum(seq(12, 84,  by = 6))

#6Следующая команда генерирует набор из 250 случайных чисел от 1 до 1000. 
#Выполните ее. Выберите в вектор n4 элементы вектора n3, превышающие среднее значение.

n3 <- sample(1:1000, 250)
n4 <- n3[n3 > mean(n3)]

#7Вычислите произведение 9 наименьших элементов вектора n3.

n31 <- sort(n3)
prod(n31[1:3])

#8Вычислите сумму обычных рангов 6 первых элементов вектора n3.
r <- rank(n3)
sum(r[1:6])

#9Вычислите сумму рангов элементов c 35-го по 49-й вектора n3 при ранжировании от 
#большего к меньшем
n31 <- sort(n3)
rn31 <- rank(n31)
sum(rn31[35:49])

#1Создайте следующую матрицу m1:
## [,1] [,2] [,3] [,4] [,5] [,6] ## [1,] 431 455 479 503 527 551 ## [2,] 435 459 483 507 531 555 ## [3,] 439 463 487 511 535 559 ## [4,] 443 467 491 515 539 563 ## [5,] 447 471 495 519 543 567 ## [6,] 451 475 499 523 547 571

m1 <- seq(431, 571, by = 4)
m1 <- matrix(m, nrow = 6, ncol = 6)

#2Выберите в матрицу m2 элементы матрицы m1, находящиеся на пересечении строк 1, 2 и 3, и 
#столбцов 1, 3 и 6.

m2 <- m1[c(1,2,3),c(1,3,5)]

#3Рассчитайте среднее значение элементов матрицы m2
mean(m2)

#4Рассчитайте произведение элементов строки 5 матрицы m1.
prod(m1[5,])

#5Создайте следующие вектора:
## [1] 7 19 17 20 16 18
## [1] 17 9 3 1 13 6
#Объедините их в матрицу с помощью функции cbind().
v1 <- c(7, 19, 17, 20, 16, 18)
v2 <- c(7, 19, 17, 20, 16, 18)
mcbind <- cbind(v1, v2)

#6Создайте следующий список ls:
## $truefalse ## [1] TRUE TRUE TRUE FALSE FALSE FALSE ## ## $nums ## [1] 10 14 18 22 26 30 34 38 42 46 ## ## $mat ## [,1] [,2] [,3] ## [1,] 431 455 479 ## [2,] 435 459 483 ## [3,] 439 463 487

ls <- list(truefalse = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), 
           nums = c(10, 14, 18, 22, 26, 30, 34, 38, 42, 46),  
           mat = matrix(seq(431, 487, by = 4), nrow = 3, ncol = 3))

#7Рассчитайте среднее значение элементов матрицы, содержащейся в списке ls. Для обращения 
#к ней используйте оператор [[ ]]

mean(ls[[3]])

#8Рассчитайте отношение 7-го и 10-го элементов вектора, содержащегося в списке ls. 
#Для обращения к вектору используте оператор

ls$nums[7] / ls$nums[10]

#9Преобразуйте логический вектор, содержащийся в списке ls, в числовой вектор и вычислите его сумму.
sum(as.numeric(ls[[1]]))

