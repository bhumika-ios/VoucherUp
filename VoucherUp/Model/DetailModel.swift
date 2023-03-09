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
    let about: String
    
}
let detailModel = [
    DetailModel(imageName: "BI1", name: "PIZZA HUT", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565", about: "Started in 1981 with our first outlet at Jalan Jelita, Pizza Hut Singapore is now the largest pizza chain restaurant with 77 outlets. We have an unmatched passion for and celebration of our pizzas. We aim to deliver not just a wide array of pizzas, pastas and other quality foods that are always fresh, but also a casual atmosphere that is fun and friendly. All these without compromising what good restaurants have always stood for service and customer satisfaction"),
    DetailModel(imageName: "BI2", name: "PIZZA", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565", about: "Started in 1981 with our first outlet at Jalan Jelita, Pizza Hut Singapore is now the largest pizza chain restaurant with 77 outlets. We have an unmatched passion for and celebration of our pizzas. We aim to deliver not just a wide array of pizzas,All these without compromising what good restaurants have always stood for service and customer satisfaction"),
    DetailModel(imageName: "BI1", name: "PIZZA Eat", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565", about: " We have an unmatched passion for and celebration of our pizzas. We aim to deliver not just a wide array of pizzas, pastas and other quality foods that are always fresh, but also a casual atmosphere that is fun and friendly. All these without compromising what good restaurants have always stood for service and customer satisfaction"),
    DetailModel(imageName: "BI1", name: "PIZZA HUT", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565", about: "Started in 1981 with our first outlet at Jalan Jelita, Pizza Hut Singapore is now the largest pizza chain restaurant with 77 outlets. We have an unmatched passion for and celebration of our pizzas. We aim to deliver not just a wide array of pizzas, pastas and other quality foods that are always fresh, but also a casual atmosphere that is fun and friendly. "),
    DetailModel(imageName: "BI2", name: "PIZZA HUT", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565", about: "Started in 1981 with our first outlet at Jalan Jelita, Pizza Hut Singapore is now the largest pizza chain restaurant with 77 outlets. but also a casual atmosphere that is fun and friendly. All these without compromising what good restaurants have always stood for service and customer satisfaction"),
    DetailModel(imageName: "BI1", name: "PIZZA HUT", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565", about: "Started in 1981 with our first outlet at Jalan Jelita, Pizza Hut Singapore is now the largest pizza chain restaurant with  array of pizzas, pastas and other quality foods that are always fresh, but also a casual atmosphere that is fun and friendly. All these without compromising what good restaurants have always stood for service and customer satisfaction"),
    DetailModel(imageName: "BI2", name: "PIZZA HUT", address: "4 Tample central,surat" , type: "FamilyRestaurant", phoneNumber: "6684565", about: "Started in 1981 with our first outlet at Jalan Jelita, Pizza Hut Singapore is now the largest pizza chain restaurant with 77 outlets. We have an unmatched passion for and celebration of our pizzas. We aim to deliver not just a wide array of pizzas, pastas and other quality foods that are always fresh, but also a casual atmosphere that is fun and friendly. All these without compromising what good restaurants have always stood for service and customer satisfaction")
                
]
