//
//  ViewController.swift
//  Day 7 - ShareContentWithSocialFramework
//
//  Created by Prashant Gaikwad on 4/1/18.
//  Copyright © 2018 Left Right Mind. All rights reserved.
//

import UIKit
import Social

/*
 
 Twitter : Share With Image,Content and URL.
 Facebook :  Share With Image,Content and URL.
 
 */

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func tweetButtonShare(_ sender: Any) {
    if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
      
      let tweetShare = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
      if let tweetShare = tweetShare {
        tweetShare.setInitialText("Nice Tutorials of iOSDevCenters")
        tweetShare.add(UIImage(named: "iOSDevCenters.jpg")!)
        tweetShare.add(URL(string: "https://iosdevcenters.blogspot.com"))
        self.present(tweetShare, animated: true, completion: nil)
      }
    } else {
      print("Not Available")
    }
  }
  
  @IBAction func facebookButtonShare(_ sender: Any) {
    if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook) {
      
      let facebookShare = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
      if let facebookShare = facebookShare{
        facebookShare.setInitialText("Nice Tutorials of iOSDevCenters")
        facebookShare.add(UIImage(named: "iOSDevCenters.jpg")!)
        facebookShare.add(URL(string: "https://iosdevcenters.blogspot.com"))
        self.present(facebookShare, animated: true, completion: nil)
      }
    } else {
      print("Not Available")
    }
  }


}

