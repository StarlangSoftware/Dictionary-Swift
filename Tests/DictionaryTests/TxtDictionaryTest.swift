import XCTest
@testable import Dictionary

final class TxtDictionaryTest: XCTestCase {

    var dictionary : TxtDictionary = TxtDictionary()

    override func setUp(){
        self.dictionary = TxtDictionary()
    }

    func testGetCorrectForm(){
        for i in 0..<self.dictionary.size(){
            XCTAssertTrue(self.dictionary.getCorrectForm(misspelledWord: self.dictionary.getWordWithIndex(index: i).getName()).count == 0)
        }
    }

    func testPrepareTrie(){
        let trie : Trie = self.dictionary.prepareTrie()
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "bana").contains(Word(name: "ben")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "sana").contains(Word(name: "sen")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "metni").contains(Word(name: "metin")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "ağzı").contains(Word(name: "ağız")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "ayrıldı").contains(Word(name: "ayır")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "buyruldu").contains(Word(name: "buyur")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "ahdi").contains(Word(name: "ahit")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "kaybı").contains(Word(name: "kayıp")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "kutbu").contains(Word(name: "kutup")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "ademelmaları").contains(Word(name: "ademelması")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "ağaçküpeleri").contains(Word(name: "ağaçküpesi")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "ağaçlığı").contains(Word(name: "ağaçlık")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "sumağı").contains(Word(name: "sumak")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "deveboyunları").contains(Word(name: "deveboynu")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "gökcisimleri").contains(Word(name: "gökcismi")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "gökkuşakları").contains(Word(name: "gökkuşağı")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "hintarmutları").contains(Word(name: "hintarmudu")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "hintpirinçleri").contains(Word(name: "hintpirinci")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "sudolapları").contains(Word(name: "sudolabı")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "yiyor").contains(Word(name: "ye")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "diyor").contains(Word(name: "de")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "depoluyor").contains(Word(name: "depola")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "dışlıyor").contains(Word(name: "dışla")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "fiyongu").contains(Word(name: "fiyonk")))
        XCTAssertTrue(trie.getWordsWithPrefix(surfaceForm: "gongu").contains(Word(name: "gonk")))
    }

    static var allTests = [
        ("testExample1", testGetCorrectForm),
        ("testExample2", testPrepareTrie),
    ]
}
