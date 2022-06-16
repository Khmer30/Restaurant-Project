//
//  OrderConfirmationViewController.swift
//  OrderApp
//
//  Created by Joy Marie on 6/8/22.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    
    
    @IBOutlet var confirmationLabel: UILabel!
    
    var minutesToPrepare: Int
    
    init?(coder: NSCoder, minutesToPrepare: Int) {
        self.minutesToPrepare = minutesToPrepare
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confirmationLabel.text = "Thank you for your order! Your wait time is approximately \(minutesToPrepare) minutes."
    }
    

}
