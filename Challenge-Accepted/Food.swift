//
//  Food.swift
//  Challenge-Accepted
//
//  Created by Nguyen Ha Bao Duy on 27/5/15.
//  Copyright (c) 2015 OpenLabProduction. All rights reserved.
//

import UIKit

protocol FoodProtocol:NSObjectProtocol {
    func searchFood(foods : Array);
    func searchFoodFailed(error: NSError, statusCode : Int)
}

class Food: NSObject {
    var objectId = ""
    var name = ""
    var fibre = ""
    var polyunsaturatedFat = ""
    var sodium = ""
    var energy = ""
    var cholesterol = ""
    var fat = ""
    var sugar = ""
    var carbohydrate = ""
    var saturatedFat = ""
    var portion = ""
    var monounsaturatedFat = ""
    var protein = ""
    var potassium  = ""
    
    func setObjectFrom(dictionary: NSDictionary) {
        
    }
    
    func getDictionary() -> NSDictionary {
        var metaDict:Dictionary<String, String> = [
            "fibre" : fibre,
            "polyunsaturated fat" : polyunsaturatedFat,
            "sodium" : sodium,
            "energy" : energy,
            "cholesterol" : cholesterol,
            "fat" : fat,
            "sugar" : sugar,
            "carbohydrate" : carbohydrate,
            "saturated fat" : saturatedFat,
            "portion" : portion,
            "monounsaturated fat" : monounsaturatedFat,
            "protein" : protein,
            "potassium" : potassium
        ]
        
        var dict:Dictionary<String, AnyObject> = [
            "name" : name,
            "meta" : metaDict
        ]
        return dict
    }
    
    static func searchFoodWith(name:String) {
    }
}
