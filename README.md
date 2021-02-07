For Developers
============
You can also see [Java](https://github.com/starlangsoftware/Dictionary), [Python](https://github.com/starlangsoftware/Dictionary-Py), [Cython](https://github.com/starlangsoftware/Dictionary-Cy), [C#](https://github.com/starlangsoftware/Dictionary-CS), or [C++](https://github.com/starlangsoftware/Dictionary-CPP) repository.

## Requirements

* Xcode Editor
* [Git](#git)

### Git

Install the [latest version of Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

## Download Code

In order to work on code, create a fork from GitHub page. 
Use Git for cloning the code to your local or below line for Ubuntu:

	git clone <your-fork-git-link>

A directory called Dictionary-Swift will be created. Or you can use below link for exploring the code:

	git clone https://github.com/starlangsoftware/Dictionary-Swift.git

## Open project with XCode

To import projects from Git with version control:

* XCode IDE, select Clone an Existing Project.

* In the Import window, paste github URL.

* Click Clone.

Result: The imported project is listed in the Project Explorer view and files are loaded.


## Compile

**From IDE**

After being done with the downloading and opening project, select **Build** option from **Product** menu. After compilation process, user can run Dictionary-Swift.

Detailed Description
============

+ [TxtDictionary](#txtdictionary)
+ [TxtWord](#txtword)
+ [SyllableList](#syllablelist)

## TxtDictionary

Dictionary is used in order to load Turkish dictionary or a domain specific dictionary. In addition, misspelled words and the true forms of the misspelled words can also be loaded. 

To load the Turkish dictionary and the misspelled words dictionary,

	a = TxtDictionary()
	
To load the domain specific dictionary and the misspelled words dictionary,

	init(fileName: String, misspelledFileName: String, comparator: @escaping (Word, Word) throws -> Bool)

And to see if the dictionary involves a specific word, Word getWord is used.

	func getWord(name: String) -> Word?

## TxtWord

The word features:
To see whether the TxtWord class of the dictionary is a noun or not,

	func isNominal() -> Bool

To see whether it is an adjective,

	func isAdjective() -> Bool

To see whether it is a portmanteau word,

	func isPortmanteau() -> Bool

To see whether it obeys vowel harmony,

	func notObeysVowelHarmonyDuringAgglutination() -> Bool

And, to see whether it softens when it get affixes, the following is used.

	func rootSoftenDuringSuffixation() -> Bool

## SyllableList

To syllabify the word, SyllableList class is used.

	init(word: String)
