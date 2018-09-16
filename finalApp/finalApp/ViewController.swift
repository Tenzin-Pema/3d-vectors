//
//  ViewController.swift
//  finalApp
//
//  Created by Epsilon on 6/4/18.
//  Copyright © 2018 epsilon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBAction func by2(_ sender: Any) {
        performSegue(withIdentifier: "det2", sender: self)
    }
    
    @IBAction func by3(_ sender: Any) {
        performSegue(withIdentifier: "det3", sender: self)
    }
    
    @IBAction func eq2(_ sender: Any) {
        performSegue(withIdentifier: "sys2", sender: self)
    }
    
    @IBAction func eq3(_ sender: Any) {
        performSegue(withIdentifier: "sys3", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class det2: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var a1: UITextField!
    @IBOutlet weak var a2: UITextField!
    @IBOutlet weak var b1: UITextField!
    @IBOutlet weak var b2: UITextField!
    @IBAction func push(_ sender: Any) {
        guard let ay1 = a1?.text, let AA1 = Double(ay1) else {
            firstAns.text = "All fields must be completed"
            return
        }
        guard let ay2 = a2?.text, let AA2 = Double(ay2) else {
            firstAns.text = "All fields must be completed"
            return
        }
        guard let bee1 = b1?.text, let BB1 = Double(bee1) else {
            firstAns.text = "All fields must be completed"
            return
        }
        guard let bee2 = b2?.text, let BB2 = Double(bee2) else {
            firstAns.text = "All fields must be completed"
            return
        }
        
        let ans = (AA1*BB2)-(AA2*BB1)
        let answer = String(ans)
        firstAns.text = "\(answer)"
    }
    @IBOutlet weak var firstAns: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class det3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var a1: UITextField!
    @IBOutlet weak var a2: UITextField!
    @IBOutlet weak var a3: UITextField!
    @IBOutlet weak var b1: UITextField!
    @IBOutlet weak var b2: UITextField!
    @IBOutlet weak var b3: UITextField!
    @IBOutlet weak var c1: UITextField!
    @IBOutlet weak var c2: UITextField!
    @IBOutlet weak var c3: UITextField!
    @IBAction func push(_ sender: Any) {
        guard let ay1 = a1?.text, let AA1 = Double(ay1) else {
            firstAns.text = "All fields must be completed"
            return
        }
        guard let ay2 = a2?.text, let AA2 = Double(ay2) else {
            firstAns.text = "All fields must be completed"
            return
        }
        guard let ay3 = a3?.text, let AA3 = Double(ay3) else {
            firstAns.text = "All fields must be completed"
            return
        }
        guard let bee1 = b1?.text, let BB1 = Double(bee1) else {
            firstAns.text = "All fields must be completed"
            return
        }
        guard let bee2 = b2?.text, let BB2 = Double(bee2) else {
            firstAns.text = "All fields must be completed"
            return
        }
        guard let bee3 = b3?.text, let BB3 = Double(bee3) else {
            firstAns.text = "All fields must be completed"
            return
        }
        guard let cee1 = c1?.text, let CC1 = Double(cee1) else {
            firstAns.text = "All fields must be completed"
            return
        }
        guard let cee2 = c2?.text, let CC2 = Double(cee2) else {
            firstAns.text = "All fields must be completed"
            return
        }
        guard let cee3 = c3?.text, let CC3 = Double(cee3) else {
            firstAns.text = "All fields must be completed"
            return
        }
        //assign det3 to the determinant
        let det3 = (AA1*BB2*CC3) + (AA2*BB3*CC1 ) + (AA3*BB1*CC2) - (AA3*BB2*CC1) - (AA1*BB3*CC2) - (AA2*BB1*CC3)
        
        //to send det3 back to string
        let dettext = String(det3)
        
        firstAns.text = "\(dettext)"
    }
    @IBOutlet weak var firstAns: UILabel!
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
class twoSys: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var a1: UITextField!
    @IBOutlet weak var a2: UITextField!
    
    //b
    @IBOutlet weak var b1: UITextField!
    @IBOutlet weak var b2: UITextField!
    
    
    //answers
    @IBOutlet weak var line1: UITextField!
    @IBOutlet weak var line2: UITextField!
    
    @IBOutlet weak var firstAns: UILabel!
    @IBOutlet weak var YLabel: UILabel!

    @IBAction func push(_ sender: Any) {
        
    
    guard let ay1 = a1?.text, let AA1 = Double(ay1) else {
    firstAns.text = "All fields must be completed"
    return
    }
    guard let ay2 = a2?.text, let AA2 = Double(ay2) else {
     firstAns.text = "All fields must be completed"
    return
    }
    guard let bee1 = b1?.text, let BB1 = Double(bee1) else {
     firstAns.text = "All fields must be completed"
    return
    }
    guard let bee2 = b2?.text, let BB2 = Double(bee2) else {
    firstAns.text = "All fields must be completed"
    return
    }
    guard let el1 = line1?.text, let LL1 = Double(el1) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let el2 = line2?.text, let LL2 = Double(el2) else {
            firstAns.text = "All fields must be completed"
            return
        }
    
        let Get = (AA1*BB2)-(AA2*BB1)
        
        //solving for x
        let x = (LL1*BB2)-(AA2*LL2)
        let EX = x/Get
        let xText = String(EX)
        firstAns.text = "\(xText)"
        //solving for y
        let y = (AA1*LL2)-(LL1*BB1)
        let why = y/Get
        let yText = String(why)
        YLabel.text = "\(yText)"
    
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}





class threeSys: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var a1: UITextField!
    @IBOutlet weak var a2: UITextField!
    @IBOutlet weak var a3: UITextField!
    @IBOutlet weak var b1: UITextField!
    @IBOutlet weak var b2: UITextField!
    @IBOutlet weak var b3: UITextField!
    @IBOutlet weak var c1: UITextField!
    @IBOutlet weak var c2: UITextField!
    @IBOutlet weak var c3: UITextField!
    @IBOutlet weak var firstAns: UILabel!
    @IBOutlet weak var YLabel: UILabel!
    @IBOutlet weak var ZLabel: UILabel!
    @IBOutlet weak var line1: UITextField!
    @IBOutlet weak var line2: UITextField!
    @IBOutlet weak var line3: UITextField!
    
    @IBAction func push(_ sender: Any) {
        
    guard let ay1 = a1?.text, let AA1 = Double(ay1) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let ay2 = a2?.text, let AA2 = Double(ay2) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let ay3 = a3?.text, let AA3 = Double(ay3) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let bee1 = b1?.text, let BB1 = Double(bee1) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let bee2 = b2?.text, let BB2 = Double(bee2) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let bee3 = b3?.text, let BB3 = Double(bee3) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let cee1 = c1?.text, let CC1 = Double(cee1) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let cee2 = c2?.text, let CC2 = Double(cee2) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let cee3 = c3?.text, let CC3 = Double(cee3) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let el1 = line1?.text, let LL1 = Double(el1) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let el2 = line2?.text, let LL2 = Double(el2) else {
            firstAns.text = "All fields must be completed"
            return
        }
    guard let el3 = line3?.text, let LL3 = Double(el3) else {
            firstAns.text = "All fields must be completed"
            return
        }
    let det = (AA1*BB2*CC3) + (AA2*BB3*CC1) + (AA3*BB1*CC2) - (AA3*BB2*CC1) - (AA1*BB3*CC2) - (AA2*BB1*CC3)
        
        //solving for x
        let x = (LL1*BB2*CC3) + (AA2*BB3*LL3) + (AA3*LL2*CC2) - (AA3*BB2*LL3) - (LL1*BB3*CC2) - (AA2*LL2*CC3)
        let EX = x/det
        let xText = String(EX)
        firstAns.text = "\(xText)"
        //solving for y
        let y = (AA1*LL2*CC3) + (LL1*BB3*CC1) + (AA3*BB1*LL3) - (AA3*LL2*CC1) - (AA1*BB3*LL3) - (LL1*BB1*CC3)
        let why = y/det
        let yText = String(why)
        YLabel.text = "\(yText)"
        //solving for z
        let z = (AA1*BB2*LL3) + (AA2*LL2*CC1) + (LL1*BB1*CC2) - (LL1*BB2*CC1) - (AA1*LL2*CC2) - (AA2*BB1*LL3)
        let zee = z/det
        let zText = String(zee)
        ZLabel.text = "\(zText)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

