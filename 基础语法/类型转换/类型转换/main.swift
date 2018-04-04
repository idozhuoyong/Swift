//
//  main.swift
//  类型转换
//
//  Created by 卓勇 on 2018/4/3.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name;
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
//print(type(of: library))
//
//let dict = [
//    "1":"v1",
//    "2":"v2",
//    "3":"v3",
//]
//print(type(of: dict))

var moveCount = 0
var songCount = 0

for item in library {
    
    if item is Movie {
        moveCount += 1
    } else if item is Song {
        songCount += 1
    }
}
print("moveCount = \(moveCount), songCount = \(songCount)")

for item in library {
    if let move = item as? Movie {
        print("move.name = \(move.name), move.director = \(move.director)")
    } else if let song = item as? Song {
        print("song.name = \(song.name), song.artist = \(song.artist)")
    }
}

