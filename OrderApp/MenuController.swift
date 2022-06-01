//
//  MenuController.swift
//  OrderApp
//
//  Created by Joy Marie on 6/2/22.
//

import Foundation

class MenuController {
    
    let baseURL = URL(string: "http://localhost:8080/")!


    enum MenuControllerError: Error, LocalizedError {
        case categoriesNotFound
        case menuItemsNotFound
        case orderRequestFailed
            
    }

    func fetchCategories() async throws -> [String] {
        let categoriesURL = baseURL.appendingPathComponent("categories")
        let (data, response) = try await URLSession.shared.data(from: categoriesURL)
    }
        
    func fetchMenuItems(forCategory categoryName: String) async throws -> [MenuItem] {
        let baseMenuURL = baseURL.appendingPathComponent("menu")
        var components = URLComponents(url: baseMenuURL, resolvingAgainstBaseURL: true)!
        components.queryItems = [URLQueryItem(name: "category", value: categoryName)]
        let menuURL = components.url!
        let (data, response) = try await URLSession.shared.data(from: menuURL)
    }

    typealias MinutesToPrepare = Int

    func submitOrder(forMenuIDs menuIDs: [Int]) async throws -> MinutesToPrepare {
        let menuIdsDict = ["menuIds": menuIDs]
        let jsonEncoder = JSONEncoder()
        let jsonData = try? jsonEncoder.encode(menuIdsDict)
        
        let orderURL = baseURL.appendingPathComponent("order")
        var request = URLRequest(url: orderURL)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
    }
}


