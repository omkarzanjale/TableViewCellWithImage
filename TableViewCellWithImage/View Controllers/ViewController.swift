//
//  ViewController.swift
//  TableViewCellWithImage
//
//  Created by Mac on 01/09/21.
//
/*
Program - On custom cell display users name and its contack no with image
*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView : UITableView!
    
    let names = ["Harry","Priya","Sam","John","Cera","Ronny","Paddy"]
    let conctacts = ["2135434567","6423765435","4327645344","6434365345","9754764567","7689439658","7598356243"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.dataSource = self
        myView.delegate = self
        myView.tableFooterView = UIView()
    }
}
//
//MARK: UITableViewDelegate
//
extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
}
//
//MARK: UITableViewDataSource
//
extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = myView?.dequeueReusableCell(withIdentifier: "CustomTableViewCell",for:indexPath)as? CustomTableViewCell {
            let namesArray = names[indexPath.row]
            cell.nameLabel.text = namesArray
            cell.contactLabel.text = conctacts[indexPath.row]
            cell.img.image = UIImage(named: namesArray)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 10, width: tableView.frame.width-10, height: 50))
        let headerLabel = UILabel()
        headerLabel.frame = CGRect.init(x: 10, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
        headerLabel.text = "Users"
        headerLabel.font = .systemFont(ofSize: 32)
        headerLabel.textColor = .systemRed
        headerLabel.backgroundColor = .purple
        headerLabel.textAlignment = .center
        headerLabel.font = .boldSystemFont(ofSize: CGFloat(40))
        headerView.addSubview(headerLabel)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}
