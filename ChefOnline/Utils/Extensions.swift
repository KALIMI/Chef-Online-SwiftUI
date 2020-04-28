//
//  Extensions.swift
//  ChefOnline
//
//  Created by Karen Mirakyan on 4/28/20.
//  Copyright © 2020 Karen Mirakyan. All rights reserved.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

