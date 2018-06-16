//
//  ViewControllerTabs.swift
//  SWFiveStars
//
//  Created by Treinamento on 12/05/2018.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit



class ViewControllerTabs: UIViewController{
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tabBarItem = UITabBarItem(title: "Notas", image: UIImage(named: "atack_img"), tag: 1)
    }

    
    
    
    @IBOutlet weak var finalizar: UIButton!
    
    
    @IBOutlet weak var mob_name: UITextField!
    
    @IBOutlet weak var farm: UITextField!
    
    @IBOutlet weak var gb: UITextField!
    
    @IBOutlet weak var dg: UITextField!
    
    override func viewDidLoad() {
     
       
        super.viewDidLoad()
        self.finalizar.backgroundColor = UIColor.white
        
        // Do any additional setup after loading the view.
    }
    
    
       
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let proxView = segue.destination as? ViewControllerNext else {
                print("Deu errado")
                return
            }
            proxView.mob = self.mob_name.text
            proxView.farm_ = self.farm.text
            proxView.gb_ = self.gb.text
            proxView.dg_ = self.dg.text
        }
        
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    

}
