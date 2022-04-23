//
//  HistoryViewController.swift
//  Unplanned
//
//  Created by David Teran on 4/22/22.
//

import UIKit
import Parse

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITabBarDelegate{
    
    @IBOutlet weak var HistoryTableView: UITableView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var HistoryCell: HistoryCell!
    

    var search = [PFObject]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        HistoryTableView.delegate = self
        HistoryTableView.dataSource = self
        HistoryTableView.layer.cornerRadius = 15
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "History")
        query.includeKey("searches")
        
        query.limit = 15
        
        query.findObjectsInBackground { (search, error) in
            if search != nil {
                self.search = search!
                self.tableView.reloadData()
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return search.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell") as! HistoryCell
        
        let previousSearch = search[indexPath.row]
        let searchName = previousSearch["url"] as! PFQuery
        cell.searchNameLabel.text = searchName
        
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
