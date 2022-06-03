//
//  MenuItemDetailViewController.swift
//  OrderApp
//
//  Created by Joy Marie on 6/1/22.
//

import UIKit
@MainActor
class MenuItemDetailViewController: UIViewController {

    let menuItem: MenuItem

    init?(coder: NSCoder, menuItem: MenuItem) {
        self.menuItem = menuItem
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
