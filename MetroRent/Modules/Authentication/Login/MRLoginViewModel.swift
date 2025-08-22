//
//  MRLoginViewModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/22/25.
//

import Foundation

class MRLoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isRememberMe: Bool = false
}
