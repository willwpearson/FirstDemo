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
    
    private lazy var colorTool : ColorTools = ColorTools()
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
        view.backgroundColor = colorTool.createRandomColor()
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
            view.backgroundColor = colorTool.createRandomColor()
        }
    }
    
    @IBOutlet weak var firstSlider: UISlider!
    
    @IBAction func sliderMethod(_ sender: Any)
    {
        if(firstSlider.value <= 1)
        {
            view.backgroundColor = colorTool.createRandomColor()
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

