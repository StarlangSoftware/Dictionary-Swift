import XCTest
@testable import Dictionary

final class WordTest: XCTestCase {

    func testCharCount(){
        var word : Word = Word(name: "ali")
        XCTAssertEqual(3, word.charCount())
        word = Word(name: "Veli")
        XCTAssertEqual(4, word.charCount())
        word = Word(name: "ahmet")
        XCTAssertEqual(5, word.charCount())
        word = Word(name: "çöğüşı")
        XCTAssertEqual(6, word.charCount())
    }

    func testIsCapital(){
        XCTAssertFalse(Word.isCapital(surfaceForm: "ali"))
        XCTAssertTrue(Word.isCapital(surfaceForm: "Ali"))
        XCTAssertFalse(Word.isCapital(surfaceForm: "ısı"))
        XCTAssertTrue(Word.isCapital(surfaceForm: "Isıtıcı"))
        XCTAssertFalse(Word.isCapital(surfaceForm: "çin"))
        XCTAssertTrue(Word.isCapital(surfaceForm: "Çin"))
        XCTAssertFalse(Word.isCapital(surfaceForm: "ödül"))
        XCTAssertTrue(Word.isCapital(surfaceForm: "Ödül"))
        XCTAssertFalse(Word.isCapital(surfaceForm: "şişe"))
        XCTAssertTrue(Word.isCapital(surfaceForm: "Şişe"))
        XCTAssertFalse(Word.isCapital(surfaceForm: "üretici"))
        XCTAssertTrue(Word.isCapital(surfaceForm: "Üretici"))
    }

    func testIsPunctuation(){
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "."))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "..."))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "["))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "]"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "\u{2026}"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "%"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "&"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "="))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "\u{0060}\u{0060}"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "\u{0060}"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "''"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "$"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "!"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "?"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: ","))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: ":"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "--"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: ";"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "("))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: ")"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "'"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "\""))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "\u{201C}"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "\u{2018}"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "\u{201D}"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "…"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "\u{25CF}"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "/"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "-"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "+"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "-LRB-"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "-RRB-"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "-LCB-"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "-RCB-"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "-LSB-"))
        XCTAssertTrue(Word.isPunctuationSymbol(surfaceForm: "-RSB-"))
    }

    func testIsHonorific(){
        XCTAssertTrue(Word.isHonorific(surfaceForm: "bay"))
        XCTAssertTrue(Word.isHonorific(surfaceForm: "Bay"))
        XCTAssertTrue(Word.isHonorific(surfaceForm: "BAY"))
        XCTAssertTrue(Word.isHonorific(surfaceForm: "bayan"))
        XCTAssertTrue(Word.isHonorific(surfaceForm: "Bayan"))
        XCTAssertTrue(Word.isHonorific(surfaceForm: "BAYAN"))
    }

    func testIsOrganization(){
        XCTAssertTrue(Word.isOrganization(surfaceForm: "corp"))
        XCTAssertTrue(Word.isOrganization(surfaceForm: "Corp"))
        XCTAssertTrue(Word.isOrganization(surfaceForm: "inc."))
        XCTAssertTrue(Word.isOrganization(surfaceForm: "co."))
        XCTAssertTrue(Word.isOrganization(surfaceForm: "Co."))
    }

    func testIsMoney(){
        XCTAssertTrue(Word.isMoney(surfaceForm: "dolar"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "sterlin"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "paunt"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "ons"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "ruble"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "mark"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "frank"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "sent"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "cent"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "yen"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "Dolar"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "Sterlin"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "Paunt"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "Ons"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "Ruble"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "Mark"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "Frank"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "Sent"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "Cent"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "Yen"))
        XCTAssertTrue(Word.isMoney(surfaceForm: "3000$"))
        XCTAssertFalse(Word.isMoney(surfaceForm: "3000"))
    }

    func testIsTime(){
        XCTAssertTrue(Word.isTime(surfaceForm: "9:1"))
        XCTAssertTrue(Word.isTime(surfaceForm: "9:12"))
        XCTAssertTrue(Word.isTime(surfaceForm: "12:1"))
        XCTAssertTrue(Word.isTime(surfaceForm: "12:13"))
        XCTAssertTrue(Word.isTime(surfaceForm: "1:9:1"))
        XCTAssertTrue(Word.isTime(surfaceForm: "1:9:12"))
        XCTAssertTrue(Word.isTime(surfaceForm: "1:12:1"))
        XCTAssertTrue(Word.isTime(surfaceForm: "2:13:14"))
        XCTAssertTrue(Word.isTime(surfaceForm: "12:9:1"))
        XCTAssertTrue(Word.isTime(surfaceForm: "11:9:12"))
        XCTAssertTrue(Word.isTime(surfaceForm: "10:12:1"))
        XCTAssertTrue(Word.isTime(surfaceForm: "21:13:14"))
        XCTAssertFalse(Word.isTime(surfaceForm: "12"))
        XCTAssertTrue(Word.isTime(surfaceForm: "1:1:1:1"))
        XCTAssertTrue(Word.isTime(surfaceForm: "ocak"))
        XCTAssertTrue(Word.isTime(surfaceForm: "şubat"))
        XCTAssertTrue(Word.isTime(surfaceForm: "mart"))
        XCTAssertTrue(Word.isTime(surfaceForm: "nisan"))
        XCTAssertTrue(Word.isTime(surfaceForm: "mayıs"))
        XCTAssertTrue(Word.isTime(surfaceForm: "haziran"))
        XCTAssertTrue(Word.isTime(surfaceForm: "temmuz"))
        XCTAssertTrue(Word.isTime(surfaceForm: "ağustos"))
        XCTAssertTrue(Word.isTime(surfaceForm: "eylül"))
        XCTAssertTrue(Word.isTime(surfaceForm: "ekim"))
        XCTAssertTrue(Word.isTime(surfaceForm: "kasım"))
        XCTAssertTrue(Word.isTime(surfaceForm: "aralık"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Ocak"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Şubat"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Mart"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Nisan"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Mayıs"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Haziran"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Temmuz"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Ağustos"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Eylül"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Ekim"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Kasım"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Aralık"))
        XCTAssertTrue(Word.isTime(surfaceForm: "pazartesi"))
        XCTAssertTrue(Word.isTime(surfaceForm: "salı"))
        XCTAssertTrue(Word.isTime(surfaceForm: "çarşamba"))
        XCTAssertTrue(Word.isTime(surfaceForm: "perşembe"))
        XCTAssertTrue(Word.isTime(surfaceForm: "cuma"))
        XCTAssertTrue(Word.isTime(surfaceForm: "cumartesi"))
        XCTAssertTrue(Word.isTime(surfaceForm: "pazar"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Pazartesi"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Salı"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Çarşamba"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Perşembe"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Cuma"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Cumartesi"))
        XCTAssertTrue(Word.isTime(surfaceForm: "Pazar"))
        XCTAssertFalse(Word.isTime(surfaceForm: "1234567"))
        XCTAssertFalse(Word.isTime(surfaceForm: "-1234"))
        XCTAssertFalse(Word.isTime(surfaceForm: "1834"))
        XCTAssertFalse(Word.isTime(surfaceForm: "2201"))
        XCTAssertTrue(Word.isTime(surfaceForm: "1934"))
    }
    
    func testUppercase(){
        XCTAssertEqual(Word.uppercase(s: "abcdefghjklmnoprstuvyzçöğüşıi"), "ABCDEFGHJKLMNOPRSTUVYZÇÖĞÜŞIİ")
    }

    func testLowercase(){
        XCTAssertEqual(Word.lowercase(s: "ABCDEFGHJKLMNOPRSTUVYZÇÖĞÜŞIİ"), "abcdefghjklmnoprstuvyzçöğüşıi")
    }

    static var allTests = [
        ("testExample1", testCharCount),
        ("testExample2", testIsCapital),
        ("testExample3", testIsPunctuation),
        ("testExample4", testIsHonorific),
        ("testExample5", testIsOrganization),
        ("testExample6", testIsMoney),
        ("testExample7", testIsTime),
        ("testExample8", testUppercase),
        ("testExample9", testLowercase),
    ]
}
