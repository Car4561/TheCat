//
//  CoreDataManager.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 31/08/22.
//

import Foundation
import CoreData
import UIKit

class CoreDataManager {

    private var managedContext:NSManagedObjectContext!
    private var fetchBreed:NSFetchRequest<NSManagedObject>!

    public static var shared = CoreDataManager()
    
    private init() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else  {return}
        managedContext = appDelegate.persistentContainer.viewContext
        setupManager()
    }
    private func setupManager() {
        fetchBreed = NSFetchRequest<NSManagedObject>(entityName:  Entity.breed.rawValue)
    }
    
    func fetchBreeds()->[BreedData]? {
        guard fetchBreed != nil  else  {return nil}
        var dataBreeds: [NSManagedObject] = []
        var breedsList: [BreedData] = []
        do {
            dataBreeds = try managedContext.fetch(fetchBreed)
            dataBreeds.forEach { item in
            guard let name = item.value(forKey: "name") as? String,
                  let date = item.value(forKey: "date") as? Date,
                  let voting = item.value(forKey: "voting") as? Int,
                  let url = item.value(forKey: "url") as? String else  {return}
                let breed = BreedData(name: name, date: date, url: url, voting: Voting(rawValue: voting))
                breedsList.append(breed)
            }

            breedsList.sort(by: { $0.date > $1.date })
            return breedsList
        }catch let error {
            print(error)
            return nil
        }
    }
    
  
    func saveBreed(_ breed: BreedData) {
       guard let breedEntity = NSEntityDescription.entity(forEntityName: Entity.breed.rawValue, in: managedContext
        ) else {return}
        
        let breedObject = NSManagedObject(entity: breedEntity, insertInto: managedContext)
        breedObject.setValue(breed.name, forKey: "name")
        breedObject.setValue(breed.url, forKey: "url")
        breedObject.setValue(breed.date, forKey: "date")
        breedObject.setValue(breed.voting?.rawValue, forKey: "voting")
        
        do {
            try managedContext.save()
        }
        catch
        {
            print ("There was an error")
        }
    }
    
}

enum Entity:String {
    case breed = "BreedEntity"
}
