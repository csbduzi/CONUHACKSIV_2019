//
//  ViewController.swift
//  Hangman
//
//  Created by Empire on 2019-01-26.
//  Copyright © 2019 Empire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progess_bar: UIView!
    var viewWidthDividedBy6 : Int = 0
    var viewWidth : Int = 0
    var progressBarWidth : Int = 0
    var chances : Int = 0
    var displayed_chances : Int = 6
    var numberOfChances : Int = 6
    var name_company : String?
    
    @IBOutlet weak var enterBtn: UIButton!
    @IBOutlet weak var restartBtn: UIButton!
    @IBOutlet weak var point_chances: UILabel!
    @IBOutlet weak var inputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        point_chances.text = "\(displayed_chances)/\(numberOfChances)"
        
        // restart button
        restartBtn.isHidden = true
        restartBtn.layer.cornerRadius = 5
        
        // start button
        enterBtn.layer.cornerRadius = 5
        
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateUI(){
     
        let divided_viewWidth = self.view.frame.width / CGFloat(numberOfChances)
        progess_bar.frame.size.width = (divided_viewWidth * CGFloat(chances))
        
    }
    
    @IBAction func pressBtn(_ sender: UIButton) {
        
        if sender.tag == 1{
            
        if(chances<numberOfChances){
        chances=chances+1
        displayed_chances = displayed_chances - 1
        }
        else{
            restartBtn.isHidden = false
        }
        point_chances.text = "\(displayed_chances)/\(numberOfChances)"
        
        updateUI()
       
        }else if sender.tag == 2 {
            // reset the number of the chances 
            chances = 0
            
            point_chances.text = "\(chances)/\(numberOfChances)"
            restartBtn.isHidden = true
        }
    }
    
}

