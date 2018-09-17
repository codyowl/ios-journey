# Introduction to scroll view:

![uiscrollview_introduction](https://user-images.githubusercontent.com/9798362/45407996-abdd1380-b688-11e8-88b8-f9891bff595f.png)


## UIkit method:
 - UIScrollView

## Steps:

## step 1 :
create an image view to represent along with the scroll image <br>
```
  imageView = UIImageView(image: UIImage(named: "Image"))
```

## step 2 :
Create a scroll view with the frame parameter <br>

```
scrollView = UIScrollView(frame: view.bounds)
scrollView.backgroundColor = UIColor.black
```

## step 3 :
add the image view (which is our image) as a subview to the scroll view using addSubview <br>

```
scrollView.addSubview(imageView)
```

## step 4 :
add the scroll view as a subview to the view

```
view.addSubview(scrollView)
```

## Entire code snippet:
```
class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var scrollView: UIScrollView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create an image view to represent along with the scroll image
        
        imageView = UIImageView(image: UIImage(named: "Image"))
       
        // Create a scroll view with the frame parameter
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        
        scrollView.contentSize = imageView.bounds.size
        
        // add the image view (which is our image) as a subview to the scroll view using addSubview
        scrollView.addSubview(imageView)
        
        // add the scroll view as a subview to the view
        view.addSubview(scrollView)
    }

    
}

```




