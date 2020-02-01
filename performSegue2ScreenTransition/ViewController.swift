//
//  ViewController.swift
//  performSegue2ScreenTransition
//
//  Created by 佐藤翔馬 on 2020/02/01.
//  Copyright © 2020 Shoma Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
        
        count = count + 1
        
        label.text = String(count)
        
        //countの変数を渡す。
        if count == 10 {
            performSegue(withIdentifier: "next", sender: nil)
            
        }
        
    }
    
    //上記のperformSeguen関数が呼ばれたら、下記のprepareが呼ばれる。
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
            //let 変数名:画面遷移先の画面の名前 = segue.destination as! 画面遷移先の画面の名前
            //asは行先を示している。
        
        nextVC.count2 = count
        //上記の変数名.が持つ変数 = 渡したいものが入った変数
        //大きな箱の中に、渡したい画像とか、文字とかを箱に入れるイメージ。
        //nextVC.画面遷移先(NextViewController)が持っている変数 = 渡したい値
        
    }

    

    
    
    
    
}

