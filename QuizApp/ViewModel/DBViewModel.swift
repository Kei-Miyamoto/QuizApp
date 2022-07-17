//
//  DBViewModel.swift
//  QuizApp
//
//  Created by Kei Miyamoto on 2022/07/17.
//

import SwiftUI

class DBViewModel: ObservableObject {
    
    @Published var title = ""
    @Published var detail = ""
    
    @Published var openNewPage = false
}
