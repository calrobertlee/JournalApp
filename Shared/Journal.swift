//
//  JournalEntries.swift
//  JournalApp
//
//  Created by C.R. Lee on 12/29/22.
//

import Foundation

struct Journal {
    var journalEntries = [JournalEntry]()
    
    mutating func addJournalEntry(entry: JournalEntry) {
        journalEntries.append(entry)
    }
    
    init() {
          let journalEntry = JournalEntry(title: "My Entry", entryText: "This is my journal entry.", date: Date(), id: 1)
          addJournalEntry(entry: journalEntry)
      }
    
    struct JournalEntry: Identifiable {
        var title: String
        var entryText: String
        var date: Date
        var id: Int
        
        init(title: String, entryText: String, date: Date, id: Int) {
            self.title = title
            self.entryText = entryText
            self.date = date
            self.id = id
        }
    }
}


