//
//  SecondScreenController.swift
//  FirstDemo
//
//  Created by Pearson, William on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class SecondScreenController : UIViewController
{
    private lazy var color : ColorTools = ColorTools()
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = color.createRandomColor()
    }
}
