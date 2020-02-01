//
//  NextViewController.swift
//  performSegue2ScreenTransition
//
//  Created by 佐藤翔馬 on 2020/02/01.
//  Copyright © 2020 Shoma Sato. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    //値を渡しながら画面遷移する。
    
    
    @IBOutlet weak var label2: UILabel!
    
    var count2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label2.text = String(count2)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
