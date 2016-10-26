//
//  ViewController.swift
//  Login
//
//  Created by mac pro mgxc2 on 9/21/16.
//  Copyright © 2016 PIRATE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_pass: UITextField!
    @IBOutlet weak var tf_user: UITextField!
    
    @IBAction func act_dangnhap(_ sender: AnyObject) {
        if let pass = user[tf_user.text!]
        {
            if pass == tf_pass.text
            {
            print("dang nhap thanh cong")
                let tabBar = self.storyboard?.instantiateViewController(withIdentifier: "tabBar")
                self.navigationController?.pushViewController(tabBar!, animated: true)
            }
            else
            {
                print("mat khau khong dung")
            }
        }
        else{
            print(("tai khoan khong ton tai"))
        }
    }
    
    var user = ["duy":"123", "hiep" : "345" , "cong" : "456"]
    
    
    @IBAction func btn_dsnd(_ sender: AnyObject) {
    for (tendangnhap , matkhau) in user
    {
        print("Ten dang nhap la : \(tendangnhap)  Mat khau la : \(matkhau)")
        //print("Mat khau la : \(matkhau)")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user ["tung"] = "234"
       // let values = user.values
        let key = user.keys
        for key in key
        {
            print(key)
            
        }
    }
}

