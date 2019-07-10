//
//  AppDelegate.swift
//  ChatDemo
//
//  Created by Stream on 10/07/2019.
//  Copyright © 2019 Stream.io Inc. All rights reserved.
//

import UIKit
import StreamChat

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Client.config = .init(apiKey: "b67pax5b2wdq")
        Client.shared.set(user: User(id: "proud-mountain-3",
                                     name: "Proud mountain"),
                          token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoicHJvdWQtbW91bnRhaW4tMyJ9.HIxKKB1IiOlFTpI8Xax5gLiP_V4IlaZpt4-1vfYF-_U")
        
        if let chatViewController = window?.rootViewController as? ChatViewController {
            let channel = Channel(id: "general", name: "general")
            chatViewController.channelPresenter = ChannelPresenter(channel: channel)
        }
        
        return true
    }
}
