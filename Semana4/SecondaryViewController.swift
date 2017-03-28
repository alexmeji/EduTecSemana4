//
//  SecondaryViewController.swift
//  Semana4
//
//  Created by Alex Mejicanos on 27/03/17.
//  Copyright © 2017 Alex Mejicanos. All rights reserved.
//

import UIKit

class SecondaryViewController: UIViewController {

    @IBOutlet var imageSet: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageSet?.layer.cornerRadius = (imageSet?.frame.size.height)!/2
        imageSet?.clipsToBounds = true
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
