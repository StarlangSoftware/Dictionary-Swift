import XCTest
@testable import Dictionary

final class TxtWordTest: XCTestCase {

    var dictionary : TxtDictionary = TxtDictionary()

    override func setUp(){
        self.dictionary = TxtDictionary()
    }

    func testVerbType(){
        var verbs : [String: Int] = [:]
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            let verbType = (word as! TxtWord).verbType()
            if verbs[verbType] != nil{
                verbs[verbType] = verbs[verbType]! + 1
            } else {
                verbs[verbType] = 1
            }
        }
        XCTAssertEqual(5, verbs["F2P1-NO-REF"])
        XCTAssertEqual(1, verbs["F3P1-NO-REF"])
        XCTAssertEqual(1, verbs["F4P1-NO-REF"])
        XCTAssertEqual(14, verbs["F4PR-NO-REF"])
        XCTAssertEqual(2, verbs["F4PL-NO-REF"])
        XCTAssertEqual(67, verbs["F4PW-NO-REF"])
        XCTAssertEqual(10, verbs["F5PL-NO-REF"])
        XCTAssertEqual(111, verbs["F5PR-NO-REF"])
        XCTAssertEqual(1, verbs["F5PW-NO-REF"])
        XCTAssertEqual(2, verbs["F1P1"])
        XCTAssertEqual(11, verbs["F2P1"])
        XCTAssertEqual(4, verbs["F3P1"])
        XCTAssertEqual(1, verbs["F4P1"])
        XCTAssertEqual(1, verbs["F5P1"])
        XCTAssertEqual(7, verbs["F6P1"])
        XCTAssertEqual(2, verbs["F2PL"])
        XCTAssertEqual(49, verbs["F4PL"])
        XCTAssertEqual(18, verbs["F5PL"])
        XCTAssertEqual(173, verbs["F4PR"])
        XCTAssertEqual(808, verbs["F5PR"])
        XCTAssertEqual(1396, verbs["F4PW"])
        XCTAssertEqual(13, verbs["F5PW"])
    }

    func testIsNominal(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isNominal(){
                count = count + 1
            }
        }
        XCTAssertEqual(30603, count)
    }

    func testIsPassive(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isPassive(){
                count = count + 1
            }
        }
        XCTAssertEqual(10, count)
    }

    func testIsAbbreviation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isAbbreviation(){
                count = count + 1
            }
        }
        XCTAssertEqual(102, count)
    }

    func testIsInterjection(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isInterjection(){
                count = count + 1
            }
        }
        XCTAssertEqual(106, count)
    }

    func testIsDuplicate(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isInterjection(){
                count = count + 1
            }
        }
        XCTAssertEqual(104, count)
    }

    func testIsAdjective(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isAdjective(){
                count = count + 1
            }
        }
        XCTAssertEqual(9687, count)
    }

    func testIsPronoun(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isPronoun(){
                count = count + 1
            }
        }
        XCTAssertEqual(49, count)
    }

    func testIsQuestion(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isQuestion(){
                count = count + 1
            }
        }
        XCTAssertEqual(4, count)
    }

    func testIsVerb(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isVerb(){
                count = count + 1
            }
        }
        XCTAssertEqual(5043, count)
    }

    func testIsPortmanteau(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isPortmanteau(){
                count = count + 1
            }
        }
        XCTAssertEqual(1294, count)
    }

    func testIsDeterminer(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isDeterminer(){
                count = count + 1
            }
        }
        XCTAssertEqual(13, count)
    }

    func testIsConjunction(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isConjunction(){
                count = count + 1
            }
        }
        XCTAssertEqual(52, count)
    }

    func testIsAdverb(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isAdverb(){
                count = count + 1
            }
        }
        XCTAssertEqual(1849, count)
    }

    func testIsPostP(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isPostP(){
                count = count + 1
            }
        }
        XCTAssertEqual(49, count)
    }

    func testIsPortmanteauEndingWithSI(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isPortmanteauEndingWithSI(){
                count = count + 1
            }
        }
        XCTAssertEqual(178, count)
    }

    func testIsPortmanteauFacedVowelEllipsis(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isPortmanteauFacedVowelEllipsis(){
                count = count + 1
            }
        }
        XCTAssertEqual(25, count)
    }

    func testIsPortmanteauFacedSoftening(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isPortmanteauFacedSoftening(){
                count = count + 1
            }
        }
        XCTAssertEqual(348, count)
    }

    func testIsSuffix(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isSuffix(){
                count = count + 1
            }
        }
        XCTAssertEqual(3, count)
    }

    func testIsProperNoun(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isProperNoun(){
                count = count + 1
            }
        }
        XCTAssertEqual(19014, count)
    }

    func testIsPlural(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isPlural(){
                count = count + 1
            }
        }
        XCTAssertEqual(398, count)
    }

    func testIsNumeral(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isNumeral(){
                count = count + 1
            }
        }
        XCTAssertEqual(33, count)
    }

    func testNotObeysVowelHarmonyDuringAgglutination(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).notObeysVowelHarmonyDuringAgglutination(){
                count = count + 1
            }
        }
        XCTAssertEqual(315, count)
    }

    func testObeysAndNotObeysVowelHarmonyDuringAgglutination(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).obeysAndNotObeysVowelHarmonyDuringAgglutination(){
                count = count + 1
            }
        }
        XCTAssertEqual(5, count)
    }

    func testRootSoftenDuringSuffixation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).rootSoftenDuringSuffixation(){
                count = count + 1
            }
        }
        XCTAssertEqual(5530, count)
    }

    func testRootSoftenAndNotSoftenDuringSuffixation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).rootSoftenAndNotSoftenDuringSuffixation(){
                count = count + 1
            }
        }
        XCTAssertEqual(14, count)
    }

    func testVerbSoftenDuringSuffixation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).verbSoftenDuringSuffixation(){
                count = count + 1
            }
        }
        XCTAssertEqual(87, count)
    }

    func testNounSoftenDuringSuffixation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).nounSoftenDuringSuffixation(){
                count = count + 1
            }
        }
        XCTAssertEqual(5444, count)
    }

    func testEndingKChangesIntoG(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).endingKChangesIntoG(){
                count = count + 1
            }
        }
        XCTAssertEqual(26, count)
    }

    func testIsExceptional(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).isExceptional(){
                count = count + 1
            }
        }
        XCTAssertEqual(31, count)
    }

    func testDuplicatesDuringSuffixation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).duplicatesDuringSuffixation(){
                count = count + 1
            }
        }
        XCTAssertEqual(36, count)
    }

    func testDuplicatesAndNotDuplicatesDuringSuffixation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).duplicatesAndNotDuplicatesDuringSuffixation(){
                count = count + 1
            }
        }
        XCTAssertEqual(4, count)
    }

    func testLastIdropsDuringSuffixation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).lastIdropsDuringSuffixation(){
                count = count + 1
            }
        }
        XCTAssertEqual(167, count)
    }

    func testLastIDropsAndNotDropDuringSuffixation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).lastIDropsAndNotDropDuringSuffixation(){
                count = count + 1
            }
        }
        XCTAssertEqual(4, count)
    }

    func testTakesRelativeSuffixKi(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).takesRelativeSuffixKi(){
                count = count + 1
            }
        }
        XCTAssertEqual(16, count)
    }

    func testTakesRelativeSuffixKu(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).takesRelativeSuffixKu(){
                count = count + 1
            }
        }
        XCTAssertEqual(4, count)
    }

    func testLastIdropsDuringPassiveSuffixation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).lastIdropsDuringPassiveSuffixation(){
                count = count + 1
            }
        }
        XCTAssertEqual(11, count)
    }

    func testVowelAChangesToIDuringYSuffixation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).vowelAChangesToIDuringYSuffixation(){
                count = count + 1
            }
        }
        XCTAssertEqual(1301, count)
    }

    func testVowelEChangesToIDuringYSuffixation(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).vowelEChangesToIDuringYSuffixation(){
                count = count + 1
            }
        }
        XCTAssertEqual(2, count)
    }

    func testTakesSuffixIRAsAorist(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if !(word as! TxtWord).takesSuffixIRAsAorist(){
                count = count + 1
            }
        }
        XCTAssertEqual(51, count)
    }

    func testTakesSuffixDIRAsFactitive(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if !(word as! TxtWord).takesSuffixDIRAsFactitive(){
                count = count + 1
            }
        }
        XCTAssertEqual(197, count)
    }

    func testShowsSuRegularities(){
        var count : Int = 0
        for i in 0..<self.dictionary.size(){
            let word = self.dictionary.getWordWithIndex(index: i)
            if (word as! TxtWord).showsSuRegularities(){
                count = count + 1
            }
        }
        XCTAssertEqual(5, count)
    }

    static var allTests = [
        ("testExample1", testVerbType),
        ("testExample2", testIsNominal),
        ("testExample3", testIsPassive),
        ("testExample4", testIsAbbreviation),
        ("testExample5", testIsInterjection),
        ("testExample6", testIsDuplicate),
        ("testExample7", testIsAdjective),
        ("testExample8", testIsPronoun),
        ("testExample9", testIsQuestion),
        ("testExample10", testIsVerb),
        ("testExample11", testIsPortmanteau),
        ("testExample12", testIsDeterminer),
        ("testExample13", testIsConjunction),
        ("testExample14", testIsAdverb),
        ("testExample15", testIsPostP),
        ("testExample16", testIsPortmanteauEndingWithSI),
        ("testExample17", testIsPortmanteauFacedVowelEllipsis),
        ("testExample18", testIsPortmanteauFacedSoftening),
        ("testExample19", testIsSuffix),
        ("testExample20", testIsProperNoun),
        ("testExample21", testIsPlural),
        ("testExample22", testIsNumeral),
        ("testExample23", testNotObeysVowelHarmonyDuringAgglutination),
        ("testExample24", testObeysAndNotObeysVowelHarmonyDuringAgglutination),
        ("testExample25", testRootSoftenDuringSuffixation),
        ("testExample26", testRootSoftenAndNotSoftenDuringSuffixation),
        ("testExample27", testVerbSoftenDuringSuffixation),
        ("testExample28", testNounSoftenDuringSuffixation),
        ("testExample29", testEndingKChangesIntoG),
        ("testExample30", testIsExceptional),
        ("testExample31", testDuplicatesDuringSuffixation),
        ("testExample32", testDuplicatesAndNotDuplicatesDuringSuffixation),
        ("testExample33", testLastIdropsDuringSuffixation),
        ("testExample34", testLastIDropsAndNotDropDuringSuffixation),
        ("testExample35", testTakesRelativeSuffixKi),
        ("testExample36", testTakesRelativeSuffixKu),
        ("testExample37", testLastIdropsDuringPassiveSuffixation),
        ("testExample38", testVowelAChangesToIDuringYSuffixation),
        ("testExample39", testVowelEChangesToIDuringYSuffixation),
        ("testExample40", testTakesSuffixIRAsAorist),
        ("testExample41", testTakesSuffixDIRAsFactitive),
        ("testExample42", testShowsSuRegularities),
    ]
}
