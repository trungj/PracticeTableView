//
//  ViewController.swift
//  baitapTableView
//
//  Created by trung on 09/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var data: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        data = fakedata()
        tableView.register(UINib(nibName: "ZaloChatCell", bundle: nil), forCellReuseIdentifier: "ZaloChatCell")
        
    }


}

extension ViewController : UITableViewDelegate {
    
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ZaloChatCell", for: indexPath) as! ZaloChatCell
        let user = data[indexPath.row]
        cell.avaImage.image = UIImage(named: "\(user.ava)")
        cell.nameLbl.text = user.name
        cell.mesLbl.text = user.mes
        cell.phoneImg.image = UIImage(systemName: "phone.fill")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
}

