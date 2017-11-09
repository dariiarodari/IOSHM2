//
//  ViewController.swift
//  IOSHM1
//
//  Created by mac on 10/26/17.
//  Copyright © 2017 rodariapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Блок 1. Задание 1.")
        printMyName()
        print("==================")

        print("Блок 1. Задание 2.")
        howOldAmI()
        print("==================")

        print("Блок 1. Задание 3.")
        print (returnFive())
        print("==================")

        print("Блок 1. Задание 4.")
        repeatHello(numberOfTimes: 5)
        print("==================")

        print("Блок 1. Задание 5.")
        print(calculateDivisionleft(firstNum: 9, secondNum: 4))
        print("==================")

        print("Блок 1. Задание 5.1")
        print(calculateDivisionleftExtended(firstNum: 4, secondNum: 9))
        print("==================")

        print("Блок 2. Задача 1.")
        compareNumbers(firstNumber: 10, secondNumber: 20)
        print("==================")

        print("Блок 2. Задача 2.")
        print(cubeOfANumber(number: 2))
        print("==================")

        print("Блок 2. Задача 3.")
        countDown(countUntill: 25)
        print("==================")

        print("Блок 2. Задача 4.")
        divisionCount(number: 24)
        print("==================")

        print("Блок 2. Задача 5.")
        minEvenNumber(number: 10)
        print("==================")

        print("Блок 2. Задача 6.")
        definePerfectNumber(number: 8128)
        print("==================")

        print("Блок 2. Задача 7.")
        //n/a
        print("==================")

        print("Блок 3. Задание 1.")
        printEven(min: 2, max: 10)
        print("==================")

        print("Блок 3. Задание 2.")
        print(settlersMoney())
        print("==================")

        print("Блок 3. Задание 3.")
        studentFinance()
        print("==================")

        print("Блок 3. Задание 4.")
        //n/a
        print("==================")
    }

    //Блок 1. Задание 1. Создать метод при вызове которого в консоль будет выводиться фраза “Hello my name is Misha”. Метод ничего не принимает как параметры и ничего не возвращает

    func printMyName () { // !!! Tung: пробел между названием метода и скобками не нужен
        print("Hello, my name is Dasha") // !!! Tung: наконец-то кто-то сделал свое имя в методе))) а то все писали Миша миша...
    }

    //Блок 1. Задание 2. Создать метод в который будет передаваться ваш возраст как целое число. Метод не возвращает ничего. Метод выводит в консоль фразу “Hello world, my age is 33” (33 - просто пример)

    func howOldAmI () {
        let age = 25
        print ("Hello world, my age is \(age)")
        // !!! Tung: советую переменные в строку записывать так: \(age). так читабельнее и по стандарту так сказать.
        // итого выйдет так:
        //print ("Hello world, my age is \(age)")
    }

    //Блок 1. Задание 3. Создать метод который называется returnFive(), который не будет иметь параметров, но должен просто напросто возвращать целое число 5 и все.

    func returnFive() -> Int {
        return 5
    }

    //Блок 1. Задание 4. Создать метод, который будет принимать как аргумент целое число и будет выводить в консоль приветствие столько раз сколько передано в аргументе.

    func repeatHello(numberOfTimes:Int) {
        for _ in 0..<numberOfTimes {
            print ("Hello")
        }
    }

    //Блок 1. Задание 5. Создать метод в который передается 2 параметра (оба целые числа). Метод должен возвращать одно целое число которое является остатком от деления одного на другое (какое на какое не важно). Остаток от деления это %. Возвращаемое число нужно вывести в консоль.

    func calculateDivisionleft(firstNum: Int, secondNum: Int) -> Int {
        let dividionLeft = firstNum % secondNum
        return dividionLeft
    }

    //Дополнение к задаче 5: Улучшить предыдущий метод так чтобы внутри функции делили с остатком не просто любое первое на второе число, а большее число делилось с остатком на меньшее.

    func calculateDivisionleftExtended (firstNum: Int, secondNum: Int) -> Int {
        let dividionLeft: Int
        if firstNum > secondNum {
            dividionLeft = firstNum % secondNum
            return dividionLeft
        } else {
            dividionLeft =  secondNum %  firstNum
            return dividionLeft
        }
    }

    //Блок 2. Задача 1. Создать метод который имеет 2 параметра (целые числа) и выводит сообщение в консоль со значением большего из них, или то что они равны. Данный метод ничего не возвращает.

    func compareNumbers(firstNumber: Int, secondNumber: Int) {
        if firstNumber > secondNumber {
            print(firstNumber)
        } else if firstNumber < secondNumber {
            print(secondNumber)
        } else if firstNumber == secondNumber {
            print("numbers are equal")
        }
    }

    //Блок 2. Задача 2. Создать метод который получает 1 аргумент и возвращает куб введенного числа. Возвращаемое число вывести в консоль.

    func cubeOfANumber(number: Int) -> Int {
        let cubedNumber = number * number * number
        return cubedNumber
    }

    //Блок 2. Задача 3. Создать метод с 1 параметром. Данный метод ничего не возвращает. Метод выводит в консоль все числа от 0 до заданного числа в параметре и в обратном порядке до 0.

    func countDown(countUntill: Int) {
        var counter = countUntill
        for _ in 0...countUntill {
            print(counter)
            counter -= 1
        }
        var helper = counter
        for _ in 0...countUntill {
            print(counter - helper)
            helper -= 1
        }
    }

    //Блок 2. Задача 4. Создать метод с 1 параметром. Данный метод ничего не возвращает. Метод подсчитывает общее число делителей числа (полученного как аргумент метода). Вывести в консоль число делителей, а также и вывести эти сам делители.

    func divisionCount(number: Int) {
        var divisions = 0
        var divider = 1
        for _ in 0...number {
            if number % divider == 0 {
                divisions += 1
                print("divider is \(divider)")
                divider += 1
            }
        }
        print("total numner of dividers is \(divisions)")
    }

    //Блок 2. Задача 5. Создать метод в который будет передаваться целое число. Данный метод ничего не возвращает. Метод выводит в  консоль минимальное четное число, большее числа переданного в параметр.

    func minEvenNumber(number: Int) {
        var neededNumber = 0
        while neededNumber <= number {
            neededNumber += 1
        }
        while neededNumber % 2 != 0 {
            neededNumber += 1
        }
        print("The result is \(neededNumber)")
    }

    //Блок 2. Задача 6. Создать метод с 1 параметром. Данный метод ничего не возвращает. Проверить, является ли заданное число (число переданное как аргумент) совершенным и найти их делители. Результат: вывести строку “YES” если число является совершенным и “NO” если нет. Дальше вывести все делители, если это было совершенное число.


    func definePerfectNumber(number: Int) {
        var divider = 1
        var perfectCalculator = 0
        for _ in 1...number {
            if number % divider == 0 && divider != number {
                perfectCalculator += divider
                divider += 1
            } else {
                divider += 1
            }
        }

        print(perfectCalculator)

        if number == perfectCalculator {
            print("Yes")
            var divider = 1
            for _ in 0...number {
                if number % divider == 0 && divider != number {
                    print("divider is \(divider)")
                    divider += 1
                } else {
                    divider += 1
                }
            }
        } else {
            print("No")
        }
    }



    //Блок 2. Задача 7.Создать метод в который будет передаваться целое положительное число.  Данный метод ничего не возвращает. Если число является целой степенью двойки, метод выводит в  консоль  "yes", иначе  "no"

    //не знаю, как посчитать. это ведь интеграл получается?


    //Блок 3. Задание 1. Создать метод в который будет передаваться два целых числа min, max.  Данный метод ничего не возвращает.Метод выводит в  консоль в столбик чётные числа от min до max включительно.

    func printEven(min: Int, max: Int) {
        var evenNumber = min
        for _ in min...max {
            if evenNumber % 2 == 0 {
                print(evenNumber)
                evenNumber += 1
            } else {
                evenNumber += 1
            }
        }
    }

    //Блок 3. Задание 2. Остров Манхэттен был приобретен поселенцами за $24 в 1826 г. Каково было бы в настоящее время состояние их счета, если бы эти 24 доллара были помещены тогда в банк под 6% годового дохода?

    func settlersMoney () -> Double {
        var money = 24.0
        for _ in 1826...2017 {
            money *= 1.6
        }
        return money
    }

    //Блок 3. Задание 3. Ежемесячная стипендия студента составляет А гривен, а расходы на проживание превышают ее и составляют B грн. в месяц. Рост цен ежемесячно увеличивает расходы на 3% Определить, какую нужно иметь сумму денег, чтобы прожить учебный год (10 месяцев), используя только эти деньги и стипендию.

    func studentFinance() {
        var credit = 800.0
        for _ in 0...10 {
            credit *= 1.3
        }
        print("Студенту понадобится \(credit) чтобы прожить 10 месяцев")
    }

    //Блок 3. Задание 4. У студента имеются накопления S грн. Ежемесячная стипендия составляет А гривен, а расходы на проживание превышают ее и составляют B грн. в месяц. Рост цен ежемесячно увеличивает расходы на 3% Определить, сколько месяцев сможет прожить студент, используя только накопления и стипендию.


    //A какие значения нужно подставлять в переменные  S, A, B..?


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

