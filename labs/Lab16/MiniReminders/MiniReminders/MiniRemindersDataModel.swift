//
//  MiniRemindersDataModel.swift
//  MiniReminders
//
//  Created by Yiwei Zhu on 2/27/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import Foundation

class MiniRemindersDataModel{
    var myData: [Item] =
        [Item(pContent: "Sample Reminder",
            pCategory: "Sample Category",
            pDateDue: Date(timeIntervalSinceNow: TimeInterval(0)),
            pDoneFlag: false)]
    
    func addReminder(
        Content: String,
        category: String,
        DateDue: Date,
        doneFlag: Bool){
        self.myData.append(Item(pContent: Content, pCategory: category, pDateDue: DateDue, pDoneFlag: doneFlag))
    }
    
    func getReminders() -> [Item]{
        return self.myData
    }
}

class Item{
    var theContent: String
    var theCategory: String
    var theDateDue: Date
    var theDoneFlag:Bool
    
    init(
        pContent: String,
        pCategory: String,
        pDateDue: Date,
        pDoneFlag: Bool)
    {
        self.theContent = "something"
        self.theCategory = "something"
        self.theDateDue = Date()
        self.theDoneFlag = false
    }
}
