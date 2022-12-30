//
//  JournalEntryView.swift
//  JournalApp
//
//  Created by C.R. Lee on 12/29/22.
//

import SwiftUI


class JournalEntryView {
    private let journal = Journal()
    
    var entries: Array<Journal.JournalEntry> {
        return journal.entries
    }
    
    // MARK: - Intent(s)

    func choose(_ entry: Journal.JournalEntry) {
        journal.openJournalEntry(entry)
    }
}
