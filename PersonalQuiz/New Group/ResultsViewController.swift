import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultNavigationItem: UINavigationItem!
    @IBOutlet var resultView: [UILabel]!
    var results: [AnimalType: Int]!
    var userAnimal: AnimalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: true)

        userAnimal = resultShowed(resultDictionary: results)
        
        resultView.first?.text = "Вы - \(userAnimal.rawValue)"
        resultView.last?.text = userAnimal.definition
        print(userAnimal.rawValue)
    }
}

func resultShowed(resultDictionary: [AnimalType : Int]) -> AnimalType {
    var userAnimalType: AnimalType = resultDictionary.first!.key
    for animal in resultDictionary.keys {
        if userAnimalType != resultDictionary.first?.key {
            userAnimalType = animal
        }
        let count = resultDictionary[animal] ?? 0
        if count > resultDictionary[userAnimalType] ?? 0 {
            userAnimalType = animal
        }
    }
    return userAnimalType
}

