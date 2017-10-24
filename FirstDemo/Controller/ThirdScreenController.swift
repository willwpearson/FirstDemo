//
//  ThirdScreenController.swift
//  FirstDemo
//
//  Created by Pearson, William on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

class ThirdScreenController: UIViewController
{
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var firstSlider: UISlider!
    @IBOutlet weak var firstImage: UIImageView!
    
    private lazy var color : ColorTools = ColorTools()
    private var imageCounter : Int = 0
    private var soundPlayer : AVAudioPlayer?
   
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        view.backgroundColor = color.createRandomColor()
        loadAudioFile()
        // Do any additional setup after loading the view.
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
    
    private func playMusicFile() -> Void
    {
        if let isPlaying = soundPlayer?.isPlaying
        {
            if (isPlaying)
            {
                soundPlayer?.pause()
            }
            else
            {
                soundPlayer?.play()
            }
        }
        
//        if((soundPlayer?.isPlaying)!)
//        {
//            soundPlayer?.pause()
//        }
//        else
//        {
//            soundPlayer?.play()
//        }
    }
    
    private func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsset(name: "PickleRick")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                firstSlider.maximumValue = Float ((soundPlayer?.duration)!)
                Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }
            catch
            {
                print("Audio File Load Error")
            }
        }
    }
    
    @objc private func updateSlider() -> Void
    {
        firstSlider.value = Float ((soundPlayer?.currentTime)!)
    }
    
    @IBAction func secondButtonMethod(_ sender: UIButton)
    {
        playMusicFile()
        view.backgroundColor = color.createRandomColor()
    }
    
    @IBAction func firstSliderMethod(_ sender: UISlider)
    {
        let seekTime = Double (firstSlider.value)
        soundPlayer?.currentTime = seekTime
    }
}
