//
//  DetailModel.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 09/03/23.
//

import Foundation

struct DetailModel: Identifiable{
    var id = UUID()
    
    let imageName: String
    let name:String
    let address: String
    let type : String
    let phoneNumber: String
    
}
let detailModel = [
                    DetailModel(imageName: "BI1", name: "PIZZA HUT", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565"),
                    DetailModel(imageName: "BI1", name: "PIZZA", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565"),
                    DetailModel(imageName: "BI1", name: "PIZZA Eat", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565"),
                    DetailModel(imageName: "BI1", name: "PIZZA HUT", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565"),
                    DetailModel(imageName: "BI1", name: "PIZZA HUT", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565"),
                    DetailModel(imageName: "BI1", name: "PIZZA HUT", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565"),
                    DetailModel(imageName: "BI1", name: "PIZZA HUT", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565")
                
]
