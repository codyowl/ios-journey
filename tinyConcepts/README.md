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

# Image uploader
![image_uploader](https://user-images.githubusercontent.com/9798362/45297674-bb8f1780-b523-11e8-9fd7-3065fa58a0d2.png)

## UIKit Methods:
  - UIImagePickerController()

## code snippet:
  - photo library:

```
    @IBAction func uploadButtonPressed(_ sender: Any) {
        let uploader  = UIImagePickerController()
     
        // to present our uploader
        present(uploader, animated: true, completion: nil)
    }
```
  - camera:
```
@IBAction func cameraButtonPressed(_ sender: Any) {
        let cameraUploader = UIImagePickerController()
        
        cameraUploader.sourceType = .camera
        
        present(cameraUploader, animated: true, completion: nil)
    }
```

