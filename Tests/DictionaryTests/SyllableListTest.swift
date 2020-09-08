import XCTest
@testable import Dictionary

final class SyllableListTest: XCTestCase {

    func testSyllableList(){
        var syllableList : SyllableList = SyllableList(word: "başöğretmen")
        XCTAssertEqual(syllableList.getSyllables(), ["ba", "şöğ", "ret", "men"])
        syllableList = SyllableList(word: "fransa")
        XCTAssertEqual(syllableList.getSyllables(), ["fran", "sa"])
        syllableList = SyllableList(word: "traktör")
        XCTAssertEqual(syllableList.getSyllables(), ["trak", "tör"])
        syllableList = SyllableList(word: "kraker")
        XCTAssertEqual(syllableList.getSyllables(), ["kra", "ker"])
        syllableList = SyllableList(word: "trake")
        XCTAssertEqual(syllableList.getSyllables(), ["tra", "ke"])
        syllableList = SyllableList(word: "ilköğretim")
        XCTAssertEqual(syllableList.getSyllables(), ["il", "köğ", "re", "tim"])
        syllableList = SyllableList(word: "semizotu")
        XCTAssertEqual(syllableList.getSyllables(), ["se", "mi", "zo", "tu"])
        syllableList = SyllableList(word: "ali")
        XCTAssertEqual(syllableList.getSyllables(), ["a", "li"])
        syllableList = SyllableList(word: "türk")
        XCTAssertEqual(syllableList.getSyllables(), ["türk"])
        syllableList = SyllableList(word: "kırktürk")
        XCTAssertEqual(syllableList.getSyllables(), ["kırk", "türk"])
        syllableList = SyllableList(word: "kardanadam")
        XCTAssertEqual(syllableList.getSyllables(), ["kar", "da", "na", "dam"])
        syllableList = SyllableList(word: "çöpadam")
        XCTAssertEqual(syllableList.getSyllables(), ["çö", "pa", "dam"])
        syllableList = SyllableList(word: "faal")
        XCTAssertEqual(syllableList.getSyllables(), ["fa", "al"])
    }
    
    static var allTests = [
        ("testExample1", testSyllableList),
    ]
}
