
import Foundation

struct StudentM {
    var name: String? = ""
    var surname: String? = ""
    
    static var fakestudent: StudentM = StudentM(name: "Samnadar", surname: "Toshpulatov")
    static var fakestudent2: StudentM = StudentM(name: "Sardorbel", surname: "Fazliddinov")
    
    
    static var fakestudents: [StudentM] = Array(repeating: StudentM.fakestudent, count: 30)
    static var fakestudents2: [StudentM] = Array(repeating: StudentM.fakestudent2, count: 30)
    
}
