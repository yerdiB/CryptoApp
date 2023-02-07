//
//  PortfolioDataService.swift
//  CryptoApp
//
//  Created by Yerdaulet Ismanaliyev on 07.02.2023.
//

import Foundation
import CoreData

class PortfolioDataService {
    
    private let container: NSPersistentContainer
    private let containerName: String = "PortfolioContainer"
    private let entityName: String = "PortfolioEntity"
    
    @Published var savedEntities: [PortfolioEntity] = []
    
    init() {
        self.container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { (_, error) in
            if let error = error {
                print("Error loading Core Data! \(error)")
            }
        }
    }
    
    private func getPortfolio() {
        let request = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        do{
            savedEntities = try container.viewContext.fetch(request)
        } catch let error{
            print("Error fetching Portfolio Entities. \(error)")
        }
    }
    
    private func add(coin: CoinModel, amount: Double) {
        let entity = PortfolioEntity(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
    }
    
    private func save() {
        do {
            try container.viewContext.save()
        } catch let error{
            print("Error saving to Core Data. \(error)")
        }
    }
}
