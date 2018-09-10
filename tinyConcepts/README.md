# Alert
![alert](https://user-images.githubusercontent.com/9798362/45214441-17edff00-b2b8-11e8-95ed-ebe472dd1977.png)

## UIKit Methods :  
   - UIAlertController 
   - UIAlertAction 

## sample with button action:
```
@IBAction func pressButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "First alert", message: "Hurray we did it !" , preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Done", style: .default, handler: nil)
        
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        
    }
```   
