struct Point {
    var x: Int
    var y: Int
    
    mutating func reset() {
        self.x = 0
        self.y = 0
        
    }
    
    func printPoint(point: Point){
        print("The point is at coordinate [\(point.x),\(point.y)] where \(point.x) and \(point.y) are the x and y coordination of the input point")
    }
    
    static func average(list:[Point], input: Character) -> Int?{
        var sum = 0
        
        if input == "X" {
            for point in list{
                 sum = sum + point.x
            }
        }
        
        else if input == "Y"{
            for point in list{
                 sum = sum + point.y
            }
        }
            
        
        return sum / list.count
           
        }
    
    static func vectorAverage(list: [Point]) -> Point? {
        
        guard let newX = average(list: list, input: "X") else {
            return nil
        }
        
        guard let newY = average(list: list, input: "Y") else {
            return nil
        }
        return Point(x: newX, y: newY)
        
    }
}
    func main() {
        let point = Point(x: 0, y: 0)
        
        let point1 = Point(x: 4, y: 8)
        let point2 = Point(x: 3, y: 1)
        let point3 = Point(x: 7, y: 13)
        let point4 = Point(x: 8, y: 9)
        let point5 = Point(x: 11, y: -11)
        
        let listOfPoints : [Point] = [point5, point1, point2, point3, point4]
        
        guard let newPoint = Point.vectorAverage(list: listOfPoints) else{
            return
        }
        
        point.printPoint(point: newPoint)
        
    }

main()

