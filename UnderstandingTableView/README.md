## Introduction to Table views:
![tableview_intro](https://user-images.githubusercontent.com/9798362/45356274-7c72cc00-b5e0-11e8-95de-12a85d96d073.png)

## protocols:
   1.UITableViewDelegates: Response to user events </br>
     
   2.UITableViewDataSource: Access to data cells </br>

## Things to concern:
   TableView is mainly concerned about three things </br>
   1. Number of "sections" in a table view </br>
   2. Number of "rows" in a section </br>
   3. Data source for the created data cells. </br>

# STEPS:
## step 1:
   inherit UITableViewDelegates and UITableViewDataSource protocols in the view controller</br>

   ```
  class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   }
   ```

## step 2:
   Specify the number of sections in the table view </br>
   ```
   func numberOfSections(in tableView: UITableView) -> Int {
        // this method should return the number of sections which is “1” in our case 
	return 1     }
   ```

## step 3:
   Specify the number of rows to displayed on a section 
   ```
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // this method should rather the number of rows to be displayed in a section which is 5 in our case 	
    return 5 // we can use datastrctures length here as well like using “count” methods of an array.     }
   
   ```

## step 4:
   Specify the datasource to be displayed on the rows
   ```
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: <cell_identifier>, for: indexPath)
        
        let programmersList = programmers[indexPath.row]
        
        cell.textLabel?.text = programmersList
        
        return cell
        
    }
    ```

    




   
     
