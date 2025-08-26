//
//  MRProfileScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import SwiftUI

struct MRProfileScreen: View {
    @StateObject private var viewModel = MRProfileViewModel()
    
    var body: some View {
        List {
            Section {
                
                MRProfileHeaderView() {
                    
                }
            }
            .listRowInsets(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
            .listRowSeparator(.hidden)
            Section(header: Text("General")) {
                ForEach(viewModel.General) { menu in
                    MRProfileHomeRowView(menu: menu)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            viewModel.handleSelection(of: menu)
                        }
                }
            }
            
            Section(header: Text("Support")) {
                ForEach(viewModel.support) { menu in
                    MRProfileHomeRowView(menu: menu)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            viewModel.handleSelection(of: menu)
                        }
                }
            }
            
        }
        .listStyle(.insetGrouped)
        .navigationBarTitle(MRStrings.profile.title)
        .navigationBarTitleDisplayMode(.inline)
        .alert("Are you sure you want to logout?", isPresented: $viewModel.showLogoutAlert) {
            Button("Cancel", role: .cancel) { }
            Button("Logout", role: .destructive) {
                Task {
                    await viewModel.confirmLogout()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        MRProfileScreen()
    }
}
