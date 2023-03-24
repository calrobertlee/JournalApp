//
//  ContentView.swift
//  Shared
//
//  Created by C.R. Lee on 12/29/22.
//

import SwiftUI


struct ContentView: View {
    let viewModel = JournalEntryView()
    let journal = Journal()

    var body: some View {
        VStack {
            Text("Journal Entries")
                .fontWeight(.bold)
                .padding(.all, 20)
            NavigationView {
                List(journal.entries) { entry in
                    NavigationLink(destination: EntryView(entry: entry)) {
                        VStack(alignment: .leading) {
                            Text(entry.title)
                                .fontWeight(.semibold)
                            Text(entry.entryText)
                                .fontWeight(.light)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
        }
    }
}

struct EntryView: View {
    @State private var editedText: String
    
    let entry: Journal.JournalEntry
    
    init(entry: Journal.JournalEntry) {
        self.entry = entry
        self._editedText = State(initialValue: entry.entryText)
    }
    
    var body: some View {
        VStack {
            Text(entry.title)
                .fontWeight(.semibold)
                .padding([.horizontal, .bottom], 10)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextEditor(text: $editedText)
                .foregroundColor(.black)
                .padding([.horizontal, .bottom], 10)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Button(action: {
                let updatedEntry = Journal.JournalEntry(title: entry.title, entryText: editedText, date: entry.date, id: entry.id)
                var journal = Journal()
                journal.saveJournalEntry(updatedEntry)
            }) {
                Text("Save")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear {
            editedText = entry.entryText
        }
    }
}


































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
