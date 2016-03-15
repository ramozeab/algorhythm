//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by Omar Baez on 1/1/16.
//  Copyright © 2016 Omar Baez. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {


    var playlist: Playlist?
    
    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!

    @IBOutlet weak var playlistArtists0: UILabel!
    @IBOutlet weak var playlistArtists1: UILabel!
    @IBOutlet weak var playlistArtists2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        if playlist != nil {
           playlistCoverImage.image = playlist!.largeIcon
           playlistCoverImage.backgroundColor =
            playlist!.backgroundColor
            playlistTitle.text = playlist!.title
            playlistDescription.text = playlist!.description

            playlistArtists0.text = playlist!.artists[0]
            playlistArtists1.text = playlist!.artists[1]
            playlistArtists2.text = playlist!.artists[2]

        }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}