//
//  ThirdScreenController.swift
//  FirstDemo
//
//  Created by Pearson, William on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ThirdScreenController: UIViewController
{
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var firstSlider: UISlider!
    @IBOutlet weak var firstImage: UIImageView!
    
    private lazy var color : ColorTools = ColorTools()
    private var imageCounter : Int = 0
   
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        view.backgroundColor = color.createRandomColor()
    }
    
    public override func didReceiveMemoryWarning() -> Void
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func firstButtonMethod(_ sender: UIButton)
    {
        changeImage()
        view.backgroundColor = color.createRandomColor()
    }
    
    private func changeImage() -> Void
    {
        if (imageCounter > 2)
        {
            imageCounter = 0
        }
        
        if (imageCounter == 0)
        {
            firstImage.image = UIImage(named: "Hunter")
        }
        else if (imageCounter == 1)
        {
            firstImage.image = UIImage(named: "Destiny1")
        }
        else
        {
            firstImage.image = UIImage(named: "DestinyLogo")
        }
        
        imageCounter += 1
    }
    
    @IBAction func secondButtonMethod(_ sender: UIButton)
    {
        
    }
    
    @IBAction func firstSliderMethod(_ sender: UISlider)
    {
    
    }
}
