//
//  Playlist.swift
//  Algorhythm
//
//  Created by Omar Baez on 1/14/16.
//  Copyright © 2016 Omar Baez. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {


    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()

    init(index: Int) {
        let musicLibrary = MusicLibrary().library
        let playlistDictionary = musicLibrary[index]

        title = playlistDictionary["title"] as! String!
        description = (playlistDictionary["description"] as! String)

        let iconName = playlistDictionary["icon"] as? String!
        icon = UIImage(named: iconName!)


        let largeIconName = playlistDictionary["largeIcon"] as! String
        largeIcon = UIImage(named: largeIconName)!


        artists = (playlistDictionary["artists"] as? [String])!

        if let colorDictionary = playlistDictionary["backgroundColor"] as? [String: Double] {
            backgroundColor = rgbColorFromDictionary(colorDictionary)
        }
    }

    func rgbColorFromDictionary(colorDictionary: [String: Double]) -> UIColor {

        let red = colorDictionary["red"]
        let green = colorDictionary["green"]
        let blue = colorDictionary["blue"]
        let alpha = colorDictionary["alpha"]

        print("----- \(red) \(green) \(blue) \(alpha) color: \(colorDictionary)")

        return UIColor(red: CGFloat(red!/255.0), green: CGFloat(green!/255.0), blue: CGFloat(blue!/255.0), alpha: CGFloat(alpha!))
    }



}
