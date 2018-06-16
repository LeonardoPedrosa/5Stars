//
//  ViewControllerTable.swift
//  SWFiveStars
//
//  Created by Treinamento on 16/06/2018.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class ViewControllerTable: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let meusMobs = ["Ifrit","Theo","Beth","Verad","Chow","Camile"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meusMobs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as UITableViewCell
        cell.textLabel?.text = meusMobs[indexPath.row]
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
