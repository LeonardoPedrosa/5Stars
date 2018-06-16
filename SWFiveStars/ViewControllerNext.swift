//
//  ViewControllerNext.swift
//  SWFiveStars
//
//  Created by Treinamento on 16/06/2018.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class ViewControllerNext: UIViewController {
    
    @IBOutlet weak var Scroll: UIScrollView!
    @IBOutlet weak var mobname: UILabel!
    @IBOutlet weak var farm_nota: UILabel!
    @IBOutlet weak var gb_nota: UILabel!
    @IBOutlet weak var dg_nota: UILabel!
    
    
    var mob: String!
    var farm_: String!
    var gb_: String!
    var dg_: String!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Scroll.isDirectionalLockEnabled = true //nao permite que role para direcoes diferentes
        self.Scroll.alwaysBounceHorizontal = false //nao permite que role na horizontal

        
        
        mobname.text = mob
        farm_nota.text = farm_
        gb_nota.text = gb_
        dg_nota.text = dg_

        // Do any additional setup after loading the view.
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
