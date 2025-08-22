//
//  MRSignUpViewModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/23/25.
//

import Foundation

class MRSignUpViewModel: ObservableObject {
    @Published var fullName: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
}
