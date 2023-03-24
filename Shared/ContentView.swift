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
    @State var entry: Journal.JournalEntry
    @State var editedText: String = ""
    
    var body: some View {
        VStack {
            TextField("Entry title", text: $entry.title)
                .font(.title)
                .padding([.bottom,.horizontal], 5)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextEditor(text: $entry.entryText)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Button("Save") {
                saveEntry()
            }
            .padding(.bottom, 10)
        }
        .padding(.horizontal, 10)
        .onAppear {
            editedText = entry.entryText
        }
        ///It's a way to set the initial value of editedText to the current value of entry.entryText so that the user can start editing from that point.
    }
    
    private func saveEntry() {
       // Save the edited text to your data model
       // For example, you could do something like:
       entry.entryText = editedText
   }
}



































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
