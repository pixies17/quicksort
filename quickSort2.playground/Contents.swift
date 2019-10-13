func customQuickSort(_ array: [Int]) -> [Int] {
    if array.count <= 1 { return array }
    
    var firstSubArray: [Int] = []
    var secondSubArray: [Int] = []
    
    array.forEach {
        if $0 % 3 == 0 {
            firstSubArray.append($0)
        } else {
            secondSubArray.append($0)
        }
    }
    
    return quickSort(firstSubArray) + quickSort(secondSubArray)
}

func quickSort(_ array: [Int]) -> [Int]  {
    if array.count <= 1 { return array }
    
    let middle = array[array.count/2]
    let less = array.filter { $0 < middle }
    let equal = array.filter { $0 == middle }
    let greater = array.filter { $0 > middle }
    
    return quickSort(less) + equal + quickSort(greater)
}

// input
let arrayToSort = [8, 11, 2, 91, 6, 3, 9, 12, 9, 7, 1, 2]
print(arrayToSort)

// sorting
let sortedArray = customQuickSort(arrayToSort)

//output
print(sortedArray)
