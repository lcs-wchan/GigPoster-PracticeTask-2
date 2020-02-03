//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)

// Begin your solution here...

// draw background
canvas.fillColor = yellow
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//// draw grid
//canvas.drawShapesWithBorders = true
//canvas.drawShapesWithFill = false
//for y in stride (from: 0, through: 600, by: 50){
//    for x in stride (from: 0, through: 400, by: 50){
//        canvas.drawRectangle(at: Point(x: x, y: y), width: 50, height: 50)
//    }
//}

// draw brown parallelograms
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true


// loop
for y in stride (from: 50, through: 325, by: 175){
    for x in stride (from: -130, through: 380, by: 160){
    
        var brownParallelogram: [Point] = []
        brownParallelogram.append(Point(x: x, y: y))
        brownParallelogram.append(Point(x: x+150, y: y))
        brownParallelogram.append(Point(x: x+200, y: y+100))
        brownParallelogram.append(Point(x: x+50, y: y+100))
        
        if x == -130 || x == 190{
            canvas.fillColor = brown
        }
        if x == 30 || x == 350{
            canvas.fillColor = purple
        }
        
        canvas.drawCustomShape(with: brownParallelogram)
    }
}

// draw red parallelograms
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = lightRed
for x in stride (from: -130, through: 380, by: 160){
    var redParallelogram: [Point] = []
    redParallelogram.append(Point(x: x, y: 140))
    redParallelogram.append(Point(x: x+150, y: 140))
    redParallelogram.append(Point(x: x+200, y: 240))
    redParallelogram.append(Point(x: x+50, y: 240))
    
    
    canvas.drawCustomShape(with: redParallelogram)
    
}

// draw text
canvas.drawText(message: "friday, april 13 1984", at: Point(x: 17, y: 420), size: 10)
canvas.drawText(message: "advance $6.50, door $7.50", at: Point(x: 17, y: 410), size: 10)
canvas.drawText(message: "no age limit", at: Point(x: 17, y: 400), size: 10)

canvas.drawText(message: "all olympic auditorium", at: Point(x: 150, y: 420), size: 10)
canvas.drawText(message: "1801 a. grand ave.", at: Point(x: 150, y: 410), size: 10)
canvas.drawText(message: "los angeles, california", at: Point(x: 150, y: 400), size: 10)

canvas.drawText(message: "with the tourist", at: Point(x: 275, y: 420), size: 10)
canvas.drawText(message: "muti death cooperations", at: Point(x: 275, y: 410), size: 10)
canvas.drawText(message: "new regime & red scare", at: Point(x: 275, y: 400), size: 10)

canvas.drawText(message: "subhumans", at: Point(x: 17, y: 330), size: 50)


/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.
 
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */

/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.
 
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas
