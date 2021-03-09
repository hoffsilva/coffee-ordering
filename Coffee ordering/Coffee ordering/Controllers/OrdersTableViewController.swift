//
//  OrdersTableViewController.swift
//  Coffee ordering
//
//  Created by Hoff Henry Pereira da Silva on 08/03/21.
//

import UIKit

class OrdersTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateOrders()
    }
    
    private func populateOrders() {
        
        let getOrdersURL = URL(string: "https://guarded-retreat-82533.herokuapp.com/orders")!
        let ordersResource = Resource<[Order]>(url: getOrdersURL)
        
        Webservice().load(resource: ordersResource) { (result) in
            switch result {
            case .success(let orders):
                print(orders)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
}
