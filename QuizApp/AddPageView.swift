//
//  AddPageView.swift
//  QuizApp
//
//  Created by Kei Miyamoto on 2022/07/17.
//

import SwiftUI

struct AddPageView: View {
    
    @EnvironmentObject var modelData : DBViewModel
    
    var body: some View {
      
        NavigationView {
            
            List{
                Section(header: Text("Title")) {
                    
                    TextField("", text: $modelData.title)
                }
                Section(header: Text("Detail")) {
                    
                    TextField("", text: $modelData.detail)
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}

struct AddPageView_Previews: PreviewProvider {
    static var previews: some View {
        AddPageView()
    }
}
