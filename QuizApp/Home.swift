//
//  Home.swift
//  QuizApp
//
//  Created by Kei Miyamoto on 2022/07/17.
//

import SwiftUI

struct Home: View {
    
    
    @StateObject var modelData = DBViewModel()
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
            }
            .navigationTitle("Realm DB")
            .toolbar {
                
                ToolbarItem(placement:
                    .navigationBarTrailing) {
                            
                        Button(action: {modelData.openNewPage.toggle()}){
                        Image(systemName: "plus")
                            .font(.title2)
                        }
                    }
                }
            .sheet(isPresented: $modelData.openNewPage, content: {
                AddPageView()
                    .environmentObject(modelData)
            })
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
