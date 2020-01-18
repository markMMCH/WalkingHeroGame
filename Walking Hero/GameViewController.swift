 

import UIKit
import SpriteKit
import AVFoundation
import SCLAlertView
import GameKit
import CoreData
 
let appDelegate = UIApplication.shared.delegate as? AppDelegate
 
class GameViewController: UIViewController {
    
    var musicPlayer: AVAudioPlayer!
     
    

    var gcEnabled = Bool()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        SCLAlertView().showNotice("How to play?", subTitle: "Put your finger on the screen so that the pole becomes longer")

        let scene = StickHeroGameScene(size:CGSize(width: DefinedScreenWidth, height: DefinedScreenHeight))
        
    
        let skView = self.view as! SKView

        
       
        skView.ignoresSiblingOrder = true
        

        scene.scaleMode = .aspectFill
        scene.viewController = self
        skView.presentScene(scene)
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        musicPlayer = setupAudioPlayerWithFile("bg_country", type: "mp3")
        musicPlayer.numberOfLoops = -1
        musicPlayer.play()
 
    }
  
    
    func setupAudioPlayerWithFile(_ file:NSString, type:NSString) -> AVAudioPlayer  {
        let url = Bundle.main.url(forResource: file as String, withExtension: type as String)
        var audioPlayer:AVAudioPlayer?
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: url!)
        } catch {
            print("NO AUDIO PLAYER")
        }
        return audioPlayer!
    }

}
