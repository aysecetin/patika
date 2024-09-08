/*
Dizimiz: [16, 21, 11, 8, 12, 22]

Diziyi Bölme:

[16, 21, 11] ve [8, 12, 22]

Sol Yarıyı Bölme:
[16] ve [21, 11]
[21, 11] -> [21] ve [11]

Sağ Yarıyı Bölme:
[8] ve [12, 22]
[12, 22] -> [12] ve [22]

Birleştirme:
[21] ve [11] -> [11, 21]
[16] ve [11, 21] -> [11, 16, 21]
[12] ve [22] -> [12, 22]
[8] ve [12, 22] -> [8, 12, 22]

Son Birleştirme:
[11, 16, 21] ve [8, 12, 22] -> [8, 11, 12, 16, 21, 22]
Merge Sort'un Big-O Gösterimi

Average Case: 
𝑂(𝑛log𝑛)
O(nlogn)

Worst Case: 
𝑂(𝑛log𝑛)
O(nlogn)

Best Case: 
𝑂(𝑛log𝑛)
O(nlogn) (Her durumda)
*/

import UIKit

func mergeSort(_ array: [Int]) -> [Int] {
    // Eğer dizinin uzunluğu 1 veya daha azsa, diziyi olduğu gibi döndür
    guard array.count > 1 else { return array }
    
    // Diziyi iki parçaya ayır
    let middleIndex = array.count / 2
    let leftArray = Array(array[0..<middleIndex])
    let rightArray = Array(array[middleIndex..<array.count])
    
    // Sol ve sağ parçaları sıralayıp birleştir
    return merge(left: mergeSort(leftArray), right: mergeSort(rightArray))
}

func merge(left: [Int], right: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var result: [Int] = []
    
    // Her iki diziyi sıralı şekilde birleştir
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            result.append(left[leftIndex])
            leftIndex += 1
        } else {
            result.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    // Kalan elemanları ekle
    result.append(contentsOf: left[leftIndex...])
    result.append(contentsOf: right[rightIndex...])
    
    return result
}

let array = [16, 21, 11, 8, 12, 22]
let sortedArray = mergeSort(array)
print(sortedArray)  // Çıktı: [8, 11, 12, 16, 21, 22]


