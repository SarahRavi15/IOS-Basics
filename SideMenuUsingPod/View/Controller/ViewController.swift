//
//  ViewController.swift
//  SideMenuUsingPod
//
//  Created by Saranya Manoj on 05/04/23.
//
import SideMenu
import UIKit
struct Menu1 {
    let simage : UIImage?
    let sname : String?
}
class ViewController: UIViewController {
    var menu : SideMenuNavigationController?
    override func viewDidLoad() {
        super.viewDidLoad()
        menu = SideMenuNavigationController(rootViewController: SampleSideMenuViewController())
        menu?.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: (self.view))
    }
    @IBAction func didTapMenu() {
        present(menu!,animated: true)
    }

}
class SampleSideMenuViewController: UITableViewController {
//    @IBOutlet weak var sidemenuTable: UITableView!
    var menuList1 : [Menu1] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "SideMenuTableViewCell", bundle: nil), forCellReuseIdentifier: "SideMenuTableViewCell")
            tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.tableHeaderView?.backgroundColor = UIColor.init(coder: <#T##NSCoder#>)
        
            menuList1.append(Menu1(simage: UIImage(named: "Home"), sname: "Home"))
            menuList1.append(Menu1(simage: UIImage(named: "Edit"), sname: "Edit Profile"))
            menuList1.append(Menu1(simage: UIImage(named: "Friends"), sname: "Friends"))
            menuList1.append(Menu1(simage: UIImage(named: "List"), sname: "My List"))
            menuList1.append(Menu1(simage: UIImage(named: "My Files"), sname: "My Files"))
            menuList1.append(Menu1(simage: UIImage(named: "Settings"), sname: "Settings"))
        tableView.reloadData()
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuList1.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuTableViewCell", for: indexPath) as! SideMenuTableViewCell
        let dict = menuList1[indexPath.row]
        cell.sidemenuImage.image = dict.simage
        cell.sidemenuName.text = dict.sname
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
}
    


