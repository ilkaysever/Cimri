//
//  ViewController.swift
//  Cimri
//
//  Created by ilkay sever on 27.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currencyTableView: UITableView!
    
    var currencyData: CurrencyModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegates()
        fetchCurrencies()
    }
    
    private func setDelegates() {
        currencyTableView.delegate = self
        currencyTableView.dataSource = self
        currencyTableView.register(CurrencyTableViewCell.self)
    }
    
    func fetchCurrencies() {
        RequestManager.shared.getCurrency(accesKey: "def00ce35213bc2c9791fe578840616c") { (currency, error) in
            if currency != nil {
                self.currencyData = currency
            } else {
                print(error!)
            }
            
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
        //return currencyData.rates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell: CurrencyTableViewCell = tableView.dequeueReusableCell(for: indexPath)
        //cell.fillCurrencyCell(responseCurrency: currencyData)
        //return cell
        return UITableViewCell()
    }
    
}
