# Steps

step 1: Create a cocoa touch class file in the name “FirstViewController” <br>
step 2 : Create another cocoa touch class file in the name “SecondViewController” <br>
step 3 : Create two view controllers  on the story board.Assign “FirstViewController” and “SecondViewController” Respectively.  <br>
step 4 : Create a navigation controller between first and second view controller <br>
step 5 : Create a button on first navigation controller <br>
step 6 : Create an “IBACTION” for the button  which is on “FirstViewController” <br>
step 7 : on the “SecondViewController” create a variable called “textPassedFromFirstViewController” <br>
step 8 : Create a label and add an IBOUTLET for it on “SecondViewController" <br>
step 9 : on viewDidLoad() add codes to assign text to the table <br>
step 10 : on “FirstViewController” IBACTION method add codes to pass the data and assign it the the string variable which will be showed on the “SecondViewController” label as an optional value  <br>
step 11 : Create an instance for the second view controller <br>
          Access the property of the second view controller and assign a string value to it
          call the pushViewController and pass the second view controller instance along with it. 
          
          ```
            @IBAction func PassButtonPressed(_ sender: Any) {
                  // Creating instance for second view controller
                  // specifying the second view controller name by passing it as an arugment for nibName
                  let svc = SecondViewController(nibName: "SecondViewController", bundle: nil)
                  svc.PassedText = "From FVC"

                  // code to navigate from one view controller to another
                  // Passing second view controller instance as an argument to "push view controller"
                  navigationController?.pushViewController(svc, animated: true)
            }
            ```
