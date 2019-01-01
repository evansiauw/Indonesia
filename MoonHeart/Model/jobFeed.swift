//
//  Feed.swift
//  MoonHeart
//
//  Created by Iwan Siauw on 12/21/18.
//  Copyright © 2018 Iwan Siauw. All rights reserved.
//

import UIKit

protocol DocumentSeriliazable {
    init?(Dictionary:[String:Any])
}

struct jobFeed {
    
    var title: String
    var subtitle: String
    var value: String
    var desc: String
    var time: Date
    
    var dictionary:[String:Any]{
        return [
            "title": title,
            "subtitle": subtitle,
            "value": value,
            "desc": desc,
            "time": time
        ]
    }

}

extension jobFeed: DocumentSeriliazable{
    
    init?(Dictionary:[String:Any]){
        guard let title = Dictionary["title"] as? String,
            let subtitle = Dictionary["subtitle"] as? String,
            let value = Dictionary["value"] as? String,
            let desc = Dictionary["desc"] as? String,
            let time = Dictionary["time"] as? Date
            else { return nil}
        
        self.init(title: title, subtitle: subtitle, value: value, desc: desc, time: time)

    }
    
}
