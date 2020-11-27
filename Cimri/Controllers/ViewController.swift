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
        createRequest()
    }
    
    private func setDelegates() {
        currencyTableView.delegate = self
        currencyTableView.dataSource = self
    }
    
    private func createRequest() {
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=def00ce35213bc2c9791fe578840616c")!
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!)
            } else {
                if data != nil {
                    do {
                        let decoder = JSONDecoder()
                        let response = try decoder.decode(CurrencyModel.self, from: data!)
                        print(response)
                    } catch {
                        print("****************error****************")
                    }
                }
            }
        }
        task.resume()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
