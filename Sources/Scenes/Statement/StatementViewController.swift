//
//  StatementViewController.swift
//  miniBanking_account
//
//  Created by Romulo Basso Krebs on 26/10/21.
//

import UIKit

import miniBanking_core

protocol StatementDisplayerProtocol: AnyObject {
    
}


class StatementViewController: UITableViewController,
                               StatementDisplayerProtocol {
    
    private var businessHandler: StatementBusinessHandlerProtocol?
    
    func setup(businessHandler: StatementBusinessHandlerProtocol) {
        self.businessHandler = businessHandler
    }
    
    private var statementItemsArr: [StatementItem] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadStatementItems()

        
    }
    
    /// <#Description#>
    func loadStatementItems(){
        
        
       
        
        let fileURL =   AccountModule.bundle.url(forResource: "extrato.json", withExtension: nil).unsafelyUnwrapped
        let jsonData = try!  Data(contentsOf: fileURL)
        do{
            statementItemsArr = try JSONDecoder().decode([StatementItem].self, from: jsonData)
            print(statementItemsArr)
        }catch {
            print(error.localizedDescription)
        }
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return statementItemsArr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = statementItemsArr[indexPath.row].valor

        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
