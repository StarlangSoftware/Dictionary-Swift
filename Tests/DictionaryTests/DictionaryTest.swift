import XCTest
@testable import Dictionary

final class DictionaryTest: XCTestCase {

    var dictionary : TxtDictionary = TxtDictionary()
    var lowerCaseDictionary : TxtDictionary = TxtDictionary()
    var mixedCaseDictionary : TxtDictionary = TxtDictionary()

    override func setUp(){
        self.dictionary = TxtDictionary()
        self.lowerCaseDictionary = TxtDictionary(fileName: "lowercase.txt")
        self.mixedCaseDictionary = TxtDictionary(fileName: "mixedcase.txt", misspelledFileName: "turkish_misspellings.txt", comparator: { $0.getName().compare($1.getName(), options: [.caseInsensitive], locale: Locale(identifier: "tr")) == .orderedAscending || $0.getName().compare($1.getName(), options: [.caseInsensitive], locale: Locale(identifier: "tr")) == .orderedSame})
    }

    func testGetWordIndex(){
        XCTAssertEqual(0, self.lowerCaseDictionary.getWordIndex(name: "a"))
        XCTAssertEqual(3, self.lowerCaseDictionary.getWordIndex(name: "ç"))
        XCTAssertEqual(8, self.lowerCaseDictionary.getWordIndex(name: "ğ"))
        XCTAssertEqual(10, self.lowerCaseDictionary.getWordIndex(name: "ı"))
        XCTAssertEqual(18, self.lowerCaseDictionary.getWordIndex(name: "ö"))
        XCTAssertEqual(22, self.lowerCaseDictionary.getWordIndex(name: "ş"))
        XCTAssertEqual(25, self.lowerCaseDictionary.getWordIndex(name: "ü"))
        XCTAssertEqual(28, self.lowerCaseDictionary.getWordIndex(name: "z"))
        XCTAssertTrue(self.mixedCaseDictionary.getWordIndex(name: "A") == 0 || self.mixedCaseDictionary.getWordIndex(name: "A") == 1)
        XCTAssertTrue(self.mixedCaseDictionary.getWordIndex(name: "Ç") == 6 || self.mixedCaseDictionary.getWordIndex(name: "Ç") == 7)
        XCTAssertTrue(self.mixedCaseDictionary.getWordIndex(name: "Ğ") == 16 || self.mixedCaseDictionary.getWordIndex(name: "Ğ") == 17)
        XCTAssertTrue(self.mixedCaseDictionary.getWordIndex(name: "I") == 20 || self.mixedCaseDictionary.getWordIndex(name: "I") == 21)
        XCTAssertTrue(self.mixedCaseDictionary.getWordIndex(name: "İ") == 22 || self.mixedCaseDictionary.getWordIndex(name: "İ") == 23)
        XCTAssertTrue(self.mixedCaseDictionary.getWordIndex(name: "Ş") == 44 || self.mixedCaseDictionary.getWordIndex(name: "Ş") == 45)
        XCTAssertTrue(self.mixedCaseDictionary.getWordIndex(name: "Ü") == 50 || self.mixedCaseDictionary.getWordIndex(name: "Ü") == 51)
        XCTAssertTrue(self.mixedCaseDictionary.getWordIndex(name: "Z") == 56 || self.mixedCaseDictionary.getWordIndex(name: "Z") == 57)
    }

    func testSize(){
        XCTAssertEqual(29, self.lowerCaseDictionary.size())
        XCTAssertEqual(58, self.mixedCaseDictionary.size())
        XCTAssertEqual(62116, self.dictionary.size())
    }

    func testGetWord(){
        XCTAssertEqual("a", self.lowerCaseDictionary.getWordWithIndex(index: 0).getName())
        XCTAssertEqual("ç", self.lowerCaseDictionary.getWordWithIndex(index: 3).getName())
        XCTAssertEqual("ğ", self.lowerCaseDictionary.getWordWithIndex(index: 8).getName())
        XCTAssertEqual("ı", self.lowerCaseDictionary.getWordWithIndex(index: 10).getName())
        XCTAssertEqual("ö", self.lowerCaseDictionary.getWordWithIndex(index: 18).getName())
        XCTAssertEqual("ş", self.lowerCaseDictionary.getWordWithIndex(index: 22).getName())
        XCTAssertEqual("ü", self.lowerCaseDictionary.getWordWithIndex(index: 25).getName())
        XCTAssertEqual("z", self.lowerCaseDictionary.getWordWithIndex(index: 28).getName())
        for i in 0..<self.dictionary.size(){
            XCTAssertNotNil(self.dictionary.getWordWithIndex(index: i))
        }
    }

    func testLongestWordSize(){
        XCTAssertEqual(1, self.lowerCaseDictionary.longestWordSize())
        XCTAssertEqual(1, self.mixedCaseDictionary.longestWordSize())
        XCTAssertEqual(21, self.dictionary.longestWordSize())
    }

    func testGetWordStartingWith(){
        XCTAssertEqual(20, self.lowerCaseDictionary.getWordStartingWith(_hash: "pırasa"))
        XCTAssertEqual(27, self.lowerCaseDictionary.getWordStartingWith(_hash: "veli"))
        XCTAssertEqual(40, self.mixedCaseDictionary.getWordStartingWith(_hash: "Pırasa"))
        XCTAssertEqual(54, self.mixedCaseDictionary.getWordStartingWith(_hash: "Veli"))
    }

    static var allTests = [
        ("testExample1", testGetWordIndex),
        ("testExample2", testSize),
        ("testExample3", testGetWord),
        ("testExample4", testLongestWordSize),
        ("testExample5", testGetWordStartingWith),
    ]
}
