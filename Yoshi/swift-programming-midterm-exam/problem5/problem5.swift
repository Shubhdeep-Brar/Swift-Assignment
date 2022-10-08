import Foundation

class Object {
    let name: String
    let weight: Int

    init(name: String, weight: Int) {
        self.name = name
        self.weight = weight
    }
}

class Suitcase {
    var objects: [Object] = []

    func add(object: Object) {
        self.objects.append(object)
    }

    func sort() {
        self.objects = self.objects.sorted(by: { a, b in a.weight < b.weight })
    }
}

class Inspector {
    private let suitcase: Suitcase

    init(suitcase: Suitcase) {
        self.suitcase = suitcase
    }

    func getWeight() -> Int {
        var total = 0

        for object in self.suitcase.objects {
            total += object.weight
        }

        return total
    }

    func getHighestWeightItem() -> Object? {
        if self.suitcase.objects.isEmpty {
            return nil
        }

        var highestWeight = self.suitcase.objects[0].weight
        var highestWeightItem = self.suitcase.objects[0]

        for object in self.suitcase.objects {
            if highestWeight < object.weight {
                highestWeight = object.weight
                highestWeightItem = object
            }
        }

        return highestWeightItem
    }
}

func main() {
    let key = Object(name: "key", weight: 50)
    let battery = Object(name: "battery", weight: 40)
    let watch = Object(name: "watch", weight: 100)
    let ring = Object(name: "ring", weight: 30)
    let iPhone = Object(name: "iPhone", weight: 300)
    let cup = Object(name: "Cup", weight: 250)
    let noteBook = Object(name: "Notebook", weight: 150)

    let suitcase = Suitcase()
    suitcase.add(object: key)
    suitcase.add(object: battery)
    suitcase.add(object: watch)
    suitcase.add(object: ring)
    suitcase.add(object: iPhone)
    suitcase.add(object: cup)
    suitcase.add(object: noteBook)

    let inspector = Inspector(suitcase: suitcase)

    print("Total weight: \(inspector.getWeight())")

    guard let highestWeightItem = inspector.getHighestWeightItem() else {
        return
    }

    print("Highest weight: \(highestWeightItem.name)")

    print("Before sorting: \(suitcase.objects.map({ item in item.name }).joined(separator: ","))")
    suitcase.sort()
    print("After sorting: \(suitcase.objects.map({ item in item.name }).joined(separator: ","))")
}

main()
