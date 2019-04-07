//
//  ViewController.swift
//  MusicApp
//
//  Created by Nikhil Chauhan on 30/10/18.
//  Copyright © 2018 Nikhil Chauhan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var myAudioPlayer = AVAudioPlayer()
    
    var nowPlayingMusic = ""
    
    var pauseState = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerReady() // making player ready as soon as app is launched
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var nowPlayingLabel: UILabel!
    @IBOutlet weak var NowPlaying: UILabel!
    
    
    let myList = ["Bin tere sanam" , "Dilbar dilbar" , "Kamariya" , "Paniyon sa"]
    
    @IBAction func btnShuffle(_ sender: Any) {
        
      playerReady()
      myAudioPlayer.play()
      NowPlaying.text = nowPlayingMusic
        
    }
    
    @IBAction func btnPause(_ sender: Any) {
        
        if pauseState == 0 {
            
        myAudioPlayer.pause()
        myAudioPlayer.currentTime = 0
        (sender as AnyObject).setTitle("Play", for: .normal)
        pauseState = 1
        NowPlaying.text = "<!--Nothing-!>"
            
        } else{
            
           (sender as AnyObject).setTitle("Stop", for: .normal)
            playerReady()
            myAudioPlayer.play()
            pauseState = 0
            NowPlaying.text = nowPlayingMusic
        }
        
        
    }
    
    
    func playerReady(){
        
        //do{
            // for selecting random music
            let randomNumber = Int(arc4random_uniform(4))
            let selectedMusic = myList[randomNumber]
            nowPlayingMusic = myList[randomNumber] //for displaying current playing music
            
            //audio
            //let myURL = URL(fileURLWithPath:Bundle.main.path(forResource:selectedMusic, ofType:"mp3")!)
            //fuck = try AVAudioPlayer(contentsOf: myURL)
            //fuck.prepareToPlay() //for buffering
            let  sound = Bundle.main.path(forResource: selectedMusic, ofType: "mp3")
        
        do{
            myAudioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
            
        } catch{
            
            print("error aaya BC")
            
        }
        
    }

}

