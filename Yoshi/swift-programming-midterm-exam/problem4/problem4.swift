import Foundation

class MatchFinder{
    let listener: MatchListener = MatchListener()
    var foundCounter: Int {
        didSet {
            self.listener.matchCount = foundCounter
        }
    }

    init(){
        self.foundCounter = 0
    }

    //This method is not supposed to change
    func matchFind(_ list: [String], _ test:(String)->Bool){

        for item in list{
            if test(item){
                foundCounter = foundCounter + 1
            }
        }
    }
}

class MatchListener {
    var matchCount: Int = 0

    func printMatchCount() {
        print("The total number of matches: \(self.matchCount)")
    }
}

func main() {
    let finder = MatchFinder()

    let cities = ["Vancouver", "Toronto", "calgary", "Edmonton", "surrey", "victoria"]
    let vowels: [Character] = ["a", "i", "u", "e", "o", "A", "I", "U", "E", "O"]

    finder.matchFind(cities, { city in
        var matchCount = 0

        for c in city {
            if vowels.contains(where: { vowel in c == vowel }) {
                matchCount += 1
            }
        }

        return matchCount >= 3
    })

    finder.listener.printMatchCount()
}

main()
