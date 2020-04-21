//
//  User.swift
//  ChefOnline
//
//  Created by Karen Mirakyan on 4/21/20.
//  Copyright © 2020 Karen Mirakyan. All rights reserved.
//

import SwiftUI
import Firebase

struct User: View {
    
    @Binding var isPresented: Bool
    @EnvironmentObject var profileViewModel : ProfileViewModel
    
    var body: some View {
        ZStack {
            if self.profileViewModel.userIsLoggedIn == false {
                Login()
            } else if Auth.auth().currentUser != nil {
                Profile( isPresented: self.$isPresented )
            }
            else {
                Profile(isPresented: self.$isPresented)
            }
        }
    }
}

struct User_Previews: PreviewProvider {
    static var previews: some View {
        User(isPresented: .constant(false))
    }
}
