# Passing Data between viewcontrollers with delegates

## Storyboard

![passing_data_with_delegates](https://user-images.githubusercontent.com/9798362/45141748-632ee180-b1d4-11e8-9935-9b6f7a7dbc91.png)

# steps

## step 1 :
Create a protocol outside the class of your view controller 
  ```
  protocol <delegate_name> {
	definitions 	
        ex: fun sample_delegate(someparameter : String) // note : here protocol method don’t need bodies means braces
   }
 ``` 

## step 2:
Create a property for the delegate in uiviewcontroller inherited class var <delegate_variable> = <delegate_name> ?= nil  

## step 3 :
Create a property for the delegate in uiviewcontroller inherited class 
```
var <delegate_variable> = <delegate_name> ?= nil 
```
Now create a button to use our delegate which is “add” in our case

inside IBAction of add button 
```
{
     If <delegate_variable> != nil {
          If ourTextField.text != nil {
               let textDataVariable = ourTextFieldOutlet.text!
               <delegat_variable>.sample_delegate(someparameter : textDataVariable)                                                                                       
                dismiss()
}}}
```

## step 4 :
On the other view controller inherit it main class along with the created delegate.
```
      class ViewControllerClass : UiViewController, <delegate_name> { 	definitions }
```

## step 5 :
import the delegate method in our view controller class
```
       fun sample_delegate(data: String){
         ourUiLabel.text = data
          } 
```

## step 6 : 
create a prepare segue on first view controller and check segue identifier.

create an instance for second view controller and assign the delegate variable we created in our second class as 
```
       let viewControllerInstance = segue.destination as! SecondViewController              
       viewControllerInstance.<delegate_variable> = self
 ```


