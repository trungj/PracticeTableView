//
//  ContactViewController.swift
//  baitapTableView
//
//  Created by trung on 09/11/2022.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var data: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        data = fakedata()
        tableView.register(UINib(nibName: "ZaloContact", bundle: nil), forCellReuseIdentifier: "ZaloContact")
        
    }


}

extension ContactViewController : UITableViewDelegate {
    
}

extension ContactViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ZaloContact", for: indexPath) as! ZaloContact
        let user = data[indexPath.row]
        cell.avaImg.image = UIImage(named: "\(user.ava)")
        cell.nameLbl.text = user.name
       
        cell.phoneImg.image = UIImage(systemName: "phone.fill")
        cell.CamImg.image = UIImage(systemName: "video.fill")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
   
    
    
}
