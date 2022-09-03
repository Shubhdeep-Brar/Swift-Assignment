
func sorter(list: [String], comparator: (String, String) -> Bool) -> [String] {
        return list.sorted(by: comparator)
}

func main() {
    
    let list1 = ["one", "two", "three", "four", "five"]
    print("Ascending order: \(sorter(list: list1, comparator: {a, b in a <= b}))")
    print("Descending order: \(sorter(list: list1, comparator: {a, b in a > b}))")
    
    let list2 = ["aa", "aba", "b", "aabbb"]
    print("Descending based on length \(sorter(list: list2, comparator: {a, b in a.count > b.count}))")
}
main()
