//
//  TableViewController.swift
//  UISearchController
//
//  Created by imac on 5/5/17.
//  Copyright © 2017 imac. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UISearchBarDelegate,UISearchResultsUpdating {
    
    
    
    func updateSearchResults(for searchController: UISearchController) {
        if (searchController.searchBar.text!.characters.count == 0) {
            filteredListCanndies = listCanndies;
            tableView.reloadData()
            return
        }
//        filteredListCanndies = listCanndies.filter({ (data) -> Bool in
//           return data.nameCatory.filter({ (candy) -> Bool in
//                candy.nameCandy.contains(searchController.searchBar.text!)
//            }).count > 0
//        })
        filteredListCanndies = []
        for data in listCanndies {
            let candies = data.nameCatory.filter({ (candy) -> Bool in
                candy.nameCandy.contains(searchController.searchBar.text!)
            })
            if (candies.count > 0) {
                filteredListCanndies.append(Data(nameCanndy: candies))
            }
        }
        print(filteredListCanndies.count)
        tableView.reloadData()
    }

    
    @IBOutlet weak var tableView: UITableView!
    
        var listCanndies : [Data] = {
        var listCandys = Data.listCandy()
        return listCandys
        
    }()
    
    var filteredListCanndies = [Data]()
    
    
//    func filterContentForSearchText(searchText: String, scope: String = "All") {
//        filteredPhones = ListCanndys.filter { candy in
//       //     return candy.nameCatory.nameCandy.lowercaseString.containsString(searchText.lowercaseString)
//        }
//        
//        tableView.reloadData()
//    }
    

    
    let searchController = UISearchController(searchResultsController : nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        filteredListCanndies = self.listCanndies
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        // 4
        tableView.tableHeaderView = searchController.searchBar
        // 5
        searchController.searchBar.barTintColor = UIColor(red: 52.0/255.0, green: 200.0/255.0, blue: 114.0/255.0, alpha: 1.0)
        searchController.searchBar.tintColor = UIColor.white
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
//        tableView.rowHeight = 160
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return filteredListCanndies.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredListCanndies[section].nameCatory.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = filteredListCanndies[indexPath.section].nameCatory[indexPath.row].categoryCandy
        cell.detailTextLabel?.text = filteredListCanndies[indexPath.section].nameCatory[indexPath.row].nameCandy
        // Configure the cell...

        return cell
    }
    var temp = ""
    var temp1 = ""
    var temp2 = ""
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        temp = filteredListCanndies[indexPath.section].nameCatory[indexPath.row].categoryCandy
        temp1 = filteredListCanndies[indexPath.section].nameCatory[indexPath.row].nameCandy
        temp2 = filteredListCanndies[indexPath.section].nameCatory[indexPath.row].image
        guard let controller = self.storyboard?.instantiateViewController(withIdentifier: "SubTableViewController") as? SubTableViewController else {
            return
        }
        
        controller.Detail = temp
        controller.detiltle = temp1
        controller.Image = temp2
        self.navigationController?.pushViewController(controller, animated: true)
        //
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    

}
//extension TableViewController: UISearchResultsUpdating {
//    func updateSearchResultsForSearchController(searchController: UISearchController) {
//        // To do: Implement search method
//    }
//}

