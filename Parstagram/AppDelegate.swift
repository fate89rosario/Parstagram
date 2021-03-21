//
//  AppDelegate.swift
//  Parstagram
//
//  Created by Fate  on 3/12/21.
//

import UIKit
import Parse

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
 //var window: UIWindow?


    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
         //work on it !!!!!
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        /*Parse.initialize(with: ParseClientConfiguration(block: {(configuration: ParseMutableClientConfiguration) -> Void in configuration.applicationId = "Parstagram"
            configuration.server = "https://whispering-stream-51370.herokuapp.com/parse "
        }))*/
        // Override point for customization after application launch.

        // --- Copy this only
        
        let parseConfig = ParseClientConfiguration {
                $0.applicationId = "HNENyVofiNGtXnBPt7CtZhpaGVgQRE3egWWwVAn0" // <- UPDATE
                $0.clientKey = "s2SoTRuADTBRN78RmtXseLT4dZmf1PKnRCWDofsA" // <- UPDATE
                $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)
        
        // --- end copy
        


        return true
    }


}

