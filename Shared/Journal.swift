//
//  JournalEntries.swift
//  JournalApp
//
//  Created by C.R. Lee on 12/29/22.
//

import Foundation
import CloudKit


struct Journal {
    var entries = [JournalEntry]()
    
    mutating func addJournalEntry(entry: JournalEntry) {
        entries.append(entry)
    }
    
    // Chooses current journal entry.
    func openJournalEntry(_ entry: JournalEntry) {
        let chosenIndex = index(of: entry)
        var chosenEntry = entries[chosenIndex]
        chosenEntry.isSelected.toggle()
        print("It works!!")
    }
    
    // temporary work around the allow for index to be returned.
    func index(of: JournalEntry) -> Int {
        return 0
    }
    
    // initializer that creates a journal entry and adds it to the array.
    init() {
        let journalEntry = JournalEntry(title: "My Entry", entryText: "This is my journal entry.", date: Date(), id: 1)
        addJournalEntry(entry: journalEntry)
    }
    
    // Journal Entry struct.
    struct JournalEntry: Identifiable {
        var title: String
        var entryText: String
        var date: Date
        var id: Int
        var isSelected: Bool = false
        
        init(title: String, entryText: String, date: Date, id: Int) {
            self.title = title
            self.entryText = entryText
            self.date = date
            self.id = id
        }
    }
}


