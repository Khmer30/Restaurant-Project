//
//  MenuItemDetailViewController.swift
//  OrderApp
//
//  Created by Joy Marie on 6/1/22.
//

import UIKit
@MainActor
class MenuItemDetailViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var detailTextLabel: UILabel!
    @IBOutlet var addToOrderButton: UIButton!
    
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
        updateUI()

    }
    
    func updateUI() {
        nameLabel.text = menuItem.name
        priceLabel.text = menuItem.price.formatted(.currency(code: "usd"))
        detailTextLabel.text = menuItem.detailText
    }
}
