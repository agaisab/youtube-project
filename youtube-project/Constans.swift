//
//  Constans.swift
//  youtube-project
//
//  Created by Ł.B Morapel on 18/03/2021.
//

import Foundation

struct Constans {
    
    static var API_KEY = "AIzaSyD34Tdhu18vWzGnOpgGy8E3QUrZVrYjj1Y"
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constans.PLAYLIST_ID)&key=\(API_KEY)"
}
