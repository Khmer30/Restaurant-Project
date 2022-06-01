//
//  Order.swift
//  OrderApp
//
//  Created by Joy Marie on 6/1/22.
//

import Foundation


struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
