//
//  JournalEntryView.swift
//  JournalApp
//
//  Created by C.R. Lee on 12/29/22.
//

import SwiftUI


class JournalEntryView {
    private let model = Journal()
    
    var entries: Array<Journal.JournalEntry> {
        return model.journalEntries
    }
    
    // MARK: - Intent(s)

    func choose(_ entry: Journal.JournalEntry) {
        model.openJournalEntry(entry)
    }
}
