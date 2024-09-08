

func insertionSort(_ array: inout [Int]) {
    for i in 1..<array.count {
        let key = array[i]
        var j = i - 1
        while j >= 0 && array[j] > key {
            array[j + 1] = array[j]
            j -= 1
        }
        array[j + 1] = key
    }
}

var array1 = [22, 27, 16, 2, 18, 6]
insertionSort(&array1)
print(array1)  // Çıktı: [2, 6, 16, 18, 22, 27]

/* [22,27,16,2,18,6] -> Insertion Sortİlk Adım:
 
 22'nin solunda başka eleman yok, bu yüzden 22 kendisiyle kalır.
 [22, 27, 16, 2, 18, 6]
 
 İkinci Adım:
 27, 22'den büyük, bu yüzden 27 kendisiyle kalır.
 [22, 27, 16, 2, 18, 6]
 
 Üçüncü Adım:
 16, 27'den küçük. 27'yi sağa kaydır ve 16'yı 22'nin soluna yerleştir.
 [16, 22, 27, 2, 18, 6]
 
 Dördüncü Adım:
 2, 27, 22 ve 16'dan küçük. 2'yi en başa yerleştir.
 [2, 16, 22, 27, 18, 6]
 
 Beşinci Adım:
 18, 27'den küçük ama 22'den büyük. 27'yi sağa kaydır ve 18'i 22'nin soluna yerleştir.
 [2, 16, 18, 22, 27, 6]
 
 Altıncı Adım:
 6, 27, 22, 18, ve 16'dan küçük. 6'yı en başa yerleştir.
 [2, 6, 16, 18, 22, 27]
 
 Big-O Notation: O(n^2) ---> O(36)   [n=6]
*/

func selectionSort(_ array: inout [Int]) {
    for i in 0..<array.count {
        var minIndex = i
        for j in (i + 1)..<array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        if minIndex != i {
            array.swapAt(i, minIndex)
        }
    }
}

var array2 = [7, 3, 5, 8, 2, 9, 4, 15, 6]
selectionSort(&array2)
print(array2)  // Çıktı: [2, 3, 4, 5, 6, 7, 8, 9, 15]


/*
İlk Adım:
En küçük elemanı bul (2). 2'yi dizinin başına yerleştir.
[2, 3, 5, 8, 7, 9, 4, 15, 6]

İkinci Adım:
Kalan diziyi dikkate al ve en küçük elemanı bul (3). 3, zaten başta olduğu için değişiklik yok.
[2, 3, 5, 8, 7, 9, 4, 15, 6]

Üçüncü Adım:
Kalan diziyi dikkate al ve en küçük elemanı bul (4). 4'ü 5'in yerine koy.
[2, 3, 4, 8, 7, 9, 5, 15, 6]

Dördüncü Adım:
Kalan diziyi dikkate al ve en küçük elemanı bul (5). 5'i 8'in yerine koy.
[2, 3, 4, 5, 7, 9, 8, 15, 6]
*/
