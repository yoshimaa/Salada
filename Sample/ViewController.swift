//
//  ViewController.swift
//  Salada
//
//  Created by 1amageek on 2016/08/15.
//  Copyright © 2016年 Stamp. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        let group: Group = Group()
        group.name = "iOS Development Team"
        
        group.save { (error, ref) in
            
            do {
                let user: User = User()
                user.name = "john appleseed"
                user.gender = "man"
                user.groups.insert(ref.key)
                user.save({ (error, ref) in
                    group.users.insert(ref.key)
                })
            }
            
            do {
                let user: User = User()
                user.name = "Marilyn Monroe"
                user.gender = "woman"
                user.groups.insert(ref.key)
                user.save({ (error, ref) in
                    group.users.insert(ref.key)
                })
            }
            
        }

        
        
//
//        let group: Group = Group()
//        group.name

//        User.observeSingle(FIRDataEventType.Value) { (results) in
//            results.forEach({ (user) in
//                print(user.age)
//                print(user.name)
//                print(user.gender)
//                print(user.groups)
//                print(user.items)
//            })
//        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
