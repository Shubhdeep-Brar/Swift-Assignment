enum WeekDay: Int {
    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

func main() {
    print("\(WeekDay.Monday): \(WeekDay.Monday.rawValue)")
    print("\(WeekDay.Tuesday): \(WeekDay.Tuesday.rawValue)")
    print("\(WeekDay.Wednesday): \(WeekDay.Wednesday.rawValue)")
    print("\(WeekDay.Thursday): \(WeekDay.Thursday.rawValue)")
    print("\(WeekDay.Friday): \(WeekDay.Friday.rawValue)")
    print("\(WeekDay.Saturday): \(WeekDay.Saturday.rawValue)")
    print("\(WeekDay.Sunday): \(WeekDay.Sunday.rawValue)")
}

main()
