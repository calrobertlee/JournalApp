//
//  ContentView.swift
//  Shared
//
//  Created by C.R. Lee on 12/29/22.
//

import SwiftUI

struct ContentView: View {
    var journal = Journal()

    var body: some View {
        VStack {
            Text("Journal Entries")
                .fontWeight(.bold)
                .padding(.all, 20)
            List(journal.journalEntries) { entry in
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
































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
