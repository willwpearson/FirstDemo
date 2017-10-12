//
//  ViewController.swift
//  FirstDemo
//
//  Created by Pearson, William on 10/6/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var firstButton: UIButton!
    
    @IBAction func firstMethod(_ sender: UIButton)
    {
        if (firstButton.backgroundColor == .orange)
        {
            firstButton.backgroundColor = .black
        }
        else
        {
            firstButton.backgroundColor = .orange
        }
        view.backgroundColor = createRandomColor()
    }
    
    private func createRandomColor() -> UIColor
    {
        let newColor :UIColor
        let redValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.0)
        let blueValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1.0))
        
        return newColor
    }
    
    @IBOutlet weak var firstSwitch: UISwitch!
    
    @IBAction func switchMethod(_ sender: Any)
    {
        if(firstSwitch.isOn)
        {
            view.backgroundColor = .black
        }
        else
        {
            view.backgroundColor = createRandomColor()
        }
    }
    
    @IBOutlet weak var firstSlider: UISlider!
    
    @IBAction func sliderMethod(_ sender: Any)
    {
        if(firstSlider.value > 0.5)
        {
            view.backgroundColor = createRandomColor()
        }
        else
        {
            view.backgroundColor = .white
        }
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

