import UIKit

//1. Написать функцию, которая определяет, четное число или нет.
func oddornot (i: Int) -> String {
    
    var str: String
    
    if i % 2 == 0 {
        
        str = "\(i) четное"
        
    } else {
        
        str = "\(i) нечетное"
        
    }
    return str
    
}

let a: Int = 1
let b: Int = 6

print("\(oddornot(i: a))")
print("\(oddornot(i: b))")

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func candivededbythree (i: Int) -> String {
    
    var str: String
    
    if i % 3 == 0 {
        
        str = "\(i) делится на 3"
        
    } else {
        
        str = "\(i) не делится на 3"
        
    }
    return str
    
}

print("\(candivededbythree(i: a))")
print("\(candivededbythree(i: b))")

//3. Создать возрастающий массив из 100 чисел.

var arr = [Int]()

for i in 0...99 {

    arr.append(i)
    
}

//Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var finArr = [Int]()

for i in arr {
    
    print("i = \(i)")
    print("\(arr)")
    
    if arr[i] % 2 == 0 {
        
        print("Проверяем деление на 2")
                
    } else {
        
        if arr[i] % 3 > 0 {
            
            print("Проверяем деление на 3")
            
        } else {
            
            finArr.append(arr[i])
            
        }
        
    }
    
}

print("finArr = \(finArr)")

//4. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
//Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.
var arrFib = [Int]()
arrFib.append(0)
arrFib.append(1)
arrFib.append(1)
arrFib.append(2)

func appendfib (arr: [Int], c: Int) {
    
    for i in arr.count...(c - 1 + arr.count) {
        
        arrFib.append(arrFib[i-1] + arrFib[i-2])
        
    }

    
}

appendfib(arr: arrFib, c: 50)


print("\(arrFib)")
print("\(arrFib.count)")

//5. * Заполнить массив элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n (пусть будет 100), следуя методу Эратосфена, нужно выполнить следующие шаги:
// a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
// b. Пусть переменная p изначально равна двум — первому простому числу.
// c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p.
// d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
// e. Повторять шаги c и d, пока возможно.

let n: Int = 100
var arrFirst = [Int]()

for i in 2...n {
    
    arrFirst.append(i)
    
}

