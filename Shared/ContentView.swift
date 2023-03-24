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
    let entry: Journal.JournalEntry
    
    var body: some View {
        VStack() {
            Text(entry.title)
                .fontWeight(.semibold)
                .padding([.horizontal, .bottom], 10)
                .frame(maxWidth: .infinity, alignment: .leading)
//                .background(Color.red)
            Text(entry.entryText)
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding([.horizontal, .bottom], 10)
                .frame(maxWidth: .infinity, alignment: .leading)
//                .background(Color.green)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.blue)
    }
}



































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
