public struct StringUtils {
    public static func reverse(_ str: String) -> String {
        return String(str.reversed())
    }
    
    public static func isPalindrome(_ str: String) -> Bool {
        let cleanStr = str.lowercased().filter { $0.isLetter }
        return cleanStr == String(cleanStr.reversed())
    }
}

public struct ArrayUtils {
    public static func removeDuplicates<T: Hashable>(_ array: [T]) -> [T] {
        return Array(Set(array))
    }
    
    public static func sum(_ array: [Int]) -> Int {
        return array.reduce(0, +)
    }
}

public struct MathUtils {
    public static func factorial(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        return (2...n).reduce(1, *)
    }
    
    public static func isPrime(_ number: Int) -> Bool {
        guard number > 1 else { return false }
        guard number > 3 else { return true }
        for i in 2...Int(Double(number).squareRoot()) {
            if number % i == 0 { return false }
        }
        return true
    }
}
