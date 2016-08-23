//
//  ViewController.swift
//  ADD
//
//  Created by michael on 7/31/16.
//  Copyright © 2016 Notify. All rights reserved.
//

import UIKit
import GoogleMobileAds


class ViewController: UIViewController,GADBannerViewDelegate {

    @IBOutlet weak var Banner: GADBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Banner.hidden=true
       Banner.delegate=self
       Banner.adUnitID="ca-app-pub-4531669743476292/2547837963"
        Banner.rootViewController = self
        Banner.loadRequest(GADRequest())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func adViewDidReceiveAd(bannerView: GADBannerView!) {
        Banner.hidden=false
    }

    func adView(bannerView: GADBannerView!, didFailToReceiveAdWithError error: GADRequestError!) {
        Banner.hidden = true
    }
}

