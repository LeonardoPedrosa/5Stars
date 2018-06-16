//
//  ViewController.swift
//  SWFiveStars
//
//  Created by Treinamento on 12/05/2018.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var name: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button.backgroundColor = UIColor.white
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func save(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Usuario", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)

        
        newUser.setValue(name.text, forKey: "name")
        do {
            try context.save()
        } catch {
            print("Salvo com sucesso")
        }
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Usuario")
        
        //DELETANDO DADOS DO COREDATA
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: request)
        
        let persistentContainer = (UIApplication.shared.delegate as! AppDelegate).persistentContainer
        
        do {
            try persistentContainer.viewContext.execute(deleteRequest)
        } catch let error as NSError {
            print(error)
        }
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                print(data.value(forKey: "name") as! String)
                
            }
            
        } catch {
            
            print("Falhou")
        }


    }
    
    

}

        


