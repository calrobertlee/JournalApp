//
//  JournalEntries.swift
//  JournalApp
//
//  Created by C.R. Lee on 12/29/22.
//

import Foundation

class Journal {
    var journalEntries = [JournalEntry]()
    
    func addJournalEntry(entry: JournalEntry) {
        journalEntries.append(entry)
    }
    
    func deleteJournalEntry(at index: Int) {
        guard index >= 0 && index < journalEntries.count else {
            return
        }
       
        journalEntries.remove(at: index)
    }

    func updateJournalEntry(at index: Int, newEntry: JournalEntry) {
        guard index < journalEntries.count else {
            return
        }
        
        journalEntries[index] = newEntry
    }
    
    func retrieveJournalEntry(withTitle title: String) -> JournalEntry? {

        for entry in journalEntries {
            if entry.title == title {
                return entry
            }
        }
        return nil
    }
    
    func saveJournalEntries() {
//        let database = FirebaseDatabase.database().reference()
//        database.child("JournalEntries").setValue(journalEntries)
    }
    
 
    
    class JournalEntry: Identifiable {
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
        let journalEntry = JournalEntry(title: "My Entry", entryText: "This is my journal entry.", date: Date(), id: 1)
    }
}
