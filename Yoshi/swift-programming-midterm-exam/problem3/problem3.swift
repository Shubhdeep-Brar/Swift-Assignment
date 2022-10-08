class Ellipse {
    private let a: Int
    private let b: Int
    private let c: Int

    init(a: Int, b: Int, c: Int) {
        self.a = a
        self.b = b
        self.c = c
    }

    func printFormula() {
        print("Ellipse: \(self.formula())")
    }


    private func formula() -> String {
        return "\(self.a)X^2+\(self.b)X^2=\(self.c)"
    }
}

enum FileType {
    case file, directory
}

class File {
    private var files: [File] = []
    private var name: String
    private let type: FileType

    init(name: String, type: FileType = .file) {
        self.name = name
        self.type = type
    }

    func mv(file: File) {
        if (self.type == .file) {
            print("This is not a directory.")
        } else {
            self.files.append(file)
        }
    }

    func tree() {
        if (self.type == .file) {
            self.printName()
        } else {
            self.printName()
            for file in self.files {
                file.tree()
            }
        }
    }

    private func printName() {
        if (self.type == .directory) {
            print("\(self.name): (which is a Directory)")
        } else {
            print(self.name)
        }
    }
}

func main() {
    // Ellipse
    let ellipse = Ellipse(a: 5, b: 5, c: 10)
    ellipse.printFormula()

    print()

    // Naive file system
    let iosProject = File(name: "IOSProject", type: .directory)
    let assignments = File(name: "Assignments", type: .directory)
    let lectures = File(name: "Lectures", type: .directory)
    let courseInfoTxt = File(name: "Courseinfo.txt", type: .file)
    let sampleExamPdf = File(name: "sampleExam.pdf", type: .file)

    iosProject.mv(file: assignments)
    iosProject.mv(file: lectures)
    iosProject.mv(file: courseInfoTxt)
    iosProject.mv(file: sampleExamPdf)

    iosProject.tree()
}

main()
