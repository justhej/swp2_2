## 2.2 Types

### 2.2.1 Deactivating portals


```Swift
// 2.2.1 
// v- 0

greenPortal.isActive = false
var swis = 0

moveForward()
moveForward()
moveForward()
turnRight()

while !isBlocked{
    moveForward()
    if isOnClosedSwitch{
        toggleSwitch()
        swis += 1
    }; if isBlocked{
        turnLeft()
        turnLeft()
    }; if swis == 2{
        moveForward()
        moveForward()
        moveForward()
        turnLeft()
        if isBlocked{
            toggleSwitch()
            turnLeft()
            turnLeft()
        }
    }; 
    }


////////////////////////////////


```

```Swift
// 2.2.1
// v- 1

greenPortal.isActive = false

func stride(_ n : Int)  {
    for k in 1...n {
        moveForward()
    }
}

func work(){
    stride(3)
    turnLeft()
    turnLeft()
    toggleSwitch()
}

stride(3)
work()
stride(3)
turnRight()
work()
stride(3)
work()


////////////////////////////////


```

```Swift
// 2.2.1
// v- 2

func sprint(){
    for k in 1...3{
    moveForward()
    }
}        

func workIt(){
    turnRight()
    sprint()
    toggleSwitch()
    turnLeft()
    turnLeft()
    sprint()
}

greenPortal.isActive = false
sprint()
for t in 1...3{
    workIt()
}

////////////////////////////////


```


```Swift
// 2.2.1
// v- 3

greenPortal.isActive = false

for step in 1...18{
    moveForward()
    if isOnClosedSwitch{
        toggleSwitch()
        turnLeft()
        turnLeft()
    }
    if step == 9 {
        turnRight()
    }
}


////////////////////////////////


```



```Swift
// 2.2.1
// v- 4

greenPortal.isActive = false


func clearRow(){
    while !isBlocked{
       moveForward()
       }
    (1...2).forEach {_ in turnLeft()}
    toggleSwitch()
}

clearRow()
(1...3).forEach {_ in moveForward() }
turnLeft()
(1...2).forEach {_ in clearRow()}



////////////////////////////////


```

### 2.2.2 Portal on and off


```Swift
// 2.2.
// v- 0

var gems = 0
var swi = 0

while !isBlocked{
    moveForward()
    if isOnGem{
        collectGem()
        gems += 1
    }
    if isBlocked{
        turnLeft()
        turnLeft()
        if isOnGem{
            collectGem()
            gems += 1
        }; while gems < 7{
            moveForward()
            if isBlocked{
                turnLeft()
                turnLeft()
                if gems == 3 {
                    purplePortal.isActive = false
                }; if isOnGem{
                    collectGem()
                    gems += 1
            }
        }; if isOnGem{
            collectGem()
            gems += 1
        }; if gems == 7{
            purplePortal.isActive = true
            
        }
    }; while !isBlocked{
        moveForward()
        if isOnClosedSwitch{
            toggleSwitch()
        }
    }
}
}


////////////////////////////////


```




```Swift
// 2.2.2
// v- 1

purplePortal.isActive = false

(1...6).forEach {_ in moveForward(); isOnGem ? collectGem() : ()}
(1...2).forEach {_ in turnLeft()}
purplePortal.isActive = true
(1...6).forEach {_ in moveForward()}
toggleSwitch()
(1...2).forEach {_ in turnLeft()}
purplePortal.isActive = false
(1...5).forEach {_ in moveForward(); isOnGem ? collectGem() : ()}


////////////////////////////////


```




```Swift
// 2.2.2
// v- 2

purplePortal.isActive = false

for i in 1...6{
    moveForward()
    if isOnGem{
        collectGem()
    }
    if isBlocked{
        for k in 1...2{
            turnLeft()
        }
    }
}
purplePortal.isActive = true

for i in 1...6{
    moveForward()
}
toggleSwitch()
for k in 1...2{
            turnLeft()
        }
purplePortal.isActive = false

for i in 1...5 {
    moveForward()
    if isOnGem{
        collectGem()
    }
}




////////////////////////////////


```




```Swift
// 2.2.2
// v- 3

var gems = 0
purplePortal.isActive = false
while gems < 7 {
    moveForward()
    if isOnGem{
        collectGem()
        gems += 1
    }
    if isBlocked{
        turnLeft()
        turnLeft()
        purplePortal.isActive = true
        if isOnClosedSwitch{
            toggleSwitch()
            purplePortal.isActive = false
        }
    }
   
}



////////////////////////////////


```




```Swift
// 2.2.2
// v- 4

purplePortal.isActive = false

for k in 1...17 {
    moveForward()
    if [3, 4, 5, 6, 15, 16, 17].contains(k) {
    collectGem()
    }
    if [6, 12].contains(k) {
        turnLeft(); turnLeft()
        if isOnClosedSwitch{
            toggleSwitch()
            purplePortal.isActive = false
        }
    }
    if k == 9 {
        purplePortal.isActive = true
    }
}

////////////////////////////////


```




```Swift
// 2.2.2
// v- 5

purplePortal.isActive = false

for k in 1...17 {
    moveForward()
    if [3, 4, 6, 15, 16, 17].contains(k) { collectGem() }
    if [6, 12].contains(k) {
        turnLeft(); turnLeft()
        if isOnClosedSwitch { toggleSwitch(); purplePortal.isActive = false }
    }
    purplePortal.isActive = (k == 9) ? true : purplePortal.isActive
}



////////////////////////////////


```

### 2.2.3 Setting the right portal


```Swift
// 2.2.3
// v- 0

var gems = 0

func moveAndTurn(){
    moveForward()
    if isBlocked{
        turnLeft()
        turnLeft()
    }
}

func basicGemWork(){
    if isOnGem{
        collectGem()
        gems += 1
    } 
}

while gems < 2 {
    moveAndTurn()
    basicGemWork()
    bluePortal.isActive = false
}

while gems < 3 {
    bluePortal.isActive = true
    moveAndTurn()
    basicGemWork()
}

moveForward()

while gems < 4 {
    bluePortal.isActive = false
    pinkPortal.isActive = false
    moveAndTurn()
    basicGemWork()
}




////////////////////////////////


```




```Swift
// 2.2.3
// v- 1

var gems = 0

while gems < 2 {
    moveForward()
        if isOnGem{
            collectGem()
            gems += 1
                turnLeft()
                turnLeft()
                bluePortal.isActive = false
            }
        
        }
bluePortal.isActive = true

while gems < 3 {
    moveForward()
    if isOnGem{
                collectGem()
                gems += 1
                    turnLeft()
                    turnLeft()
}
}
    
while gems < 4 {
    turnLeft()
    turnLeft()
    moveForward()
    if isOnGem{
                   collectGem()
                   gems += 1
}
}

////////////////////////////////


```




```Swift
// 2.2.3
// v- 2

var gems = 0

func turnAround(){
    turnLeft(); turnLeft()
}

func clear(){
    if isOnGem {
        collectGem()
        gems += 1
        turnAround()
    }
}
while gems < 4 {
    moveForward()
    clear()
    if gems == 1 {
       bluePortal.isActive = false 
    }
    else if gems == 2 {
        bluePortal.isActive = true
    }
    else if gems == 3 && !isBlockedRight {
        pinkPortal.isActive = false
        turnAround()
    }
}

////////////////////////////////


```

### 2.2.4 Corners of the world


```Swift
// 2.2.4
// v- 0

turnRight()
var swis = 0
var gems = 0


orangePortal.isActive = false
while swis < 2 {
        moveForward()
        if isBlocked && isBlockedRight && isBlockedLeft{
            turnLeft()
            turnLeft()
    } ; if isOnClosedSwitch{
        toggleSwitch()
        swis += 1
        moveForward()
        orangePortal.isActive = true
        if !isBlockedLeft{
            turnLeft()
        }
    }; 
    }

orangePortal.isActive = false
greenPortal.isActive = false

while gems < 6 {
    moveForward()
    if isBlocked && isBlockedRight && isBlockedLeft{
        turnLeft()
        turnLeft()
        
}; if isOnGem{
    collectGem()
    gems += 1
    moveForward()
    if !isBlockedLeft{
        turnLeft()
    }
}
}

greenPortal.isActive = true
moveForward()
turnLeft()
turnLeft()
moveForward()
greenPortal.isActive = false

while swis < 6 {
    moveForward()
    if  isBlockedLeft{
        turnLeft()
        turnLeft()
    } ; if isOnClosedSwitch{
        toggleSwitch()
        swis += 1
        moveForward()
        orangePortal.isActive = true
        if !isBlockedLeft{
            turnLeft()
        }
    }; 
}





func m1(){
    for i in 1...5{
        moveForward()
        if isBlocked && isBlockedLeft{
            turnLeft()
            turnLeft()
        }
        if !isBlockedRight{
            turnRight()
        }
        if isOnClosedSwitch{
            toggleSwitch()
        }
        if isOnGem{
            collectGem()
        }
    }
}

func m2(){
    for i in 1...7{
        moveForward()
        if isBlocked && isBlockedLeft{
            turnLeft()
            turnLeft()
        }
        if !isBlockedLeft{
            turnLeft()
        }
        if isOnClosedSwitch{
            toggleSwitch()
        }
        if isOnGem{
            collectGem()
        }
    }
}

turnRight()
orangePortal.isActive = false
m1()
orangePortal.isActive = true
moveForward()
orangePortal.isActive = false
m2()
greenPortal.isActive = false
m1()
greenPortal.isActive = true
moveForward()
greenPortal.isActive = false
turnLeft()
m2()


////////////////////////////////


```




```Swift
// 2.2.4
// v- 1


func initialMove(){
    turnLeft()
    (1...2).forEach {_ in moveForward() }
}

func secondaryMove(){
    (1...2).forEach {_ in turnLeft() }
    moveForward()
}

func clear(){
    moveForward()
    isOnClosedSwitch ? toggleSwitch() : collectGem()
    secondaryMove()
    turnLeft()
}

initialMove()
greenPortal.isActive = false

for k in 1...4{
    clear()
}

greenPortal.isActive = true
moveForward()
secondaryMove()
greenPortal.isActive = false
orangePortal.isActive = false

for k in 1...3 {
    clear()
}

(1...3).forEach {_ in moveForward()}

for k in 1...4{
    clear()
}

orangePortal.isActive = true
moveForward()
secondaryMove()
orangePortal.isActive = false 

turnLeft()
for k in 1...2 {
    clear()
}

////////////////////////////////


```





```Swift
// 2.2.4
// v- 2
// Showcasing the importance of comments

// The number of times to repeat a loop
let loopCount = 4

// A function that moves forward and collects or toggles
func collectOrToggle() {
    moveForward()
    isOnClosedSwitch ? toggleSwitch() : collectGem()
}


func turnAround() {
    (1...2).forEach {_ in turnLeft() }
}

// A function that clears a row of tiles
func clearRow() {
    collectOrToggle()
    turnAround()
    moveForward()
    turnLeft()
}

// Move to the first row
turnLeft()
(1...2).forEach {_ in moveForward() }

greenPortal.isActive = false

// Clear four rows
(1...loopCount).forEach {_ in clearRow() }

// Enable the green portal and move to the next row
greenPortal.isActive = true
moveForward()
turnAround()
moveForward()


greenPortal.isActive = false
orangePortal.isActive = false


(1...loopCount - 1).forEach {_ in clearRow() }

// Move to the last row
(1...3).forEach {_ in moveForward() }


(1...loopCount).forEach {_ in clearRow() }


orangePortal.isActive = true
moveForward()
turnAround()
moveForward()

orangePortal.isActive = false


turnLeft()
(1...2).forEach {_ in clearRow() }

////////////////////////////////


```




```Swift
// 2.2.4
// v- 3

let loopCount = 4

func collectOrToggle() {
    moveForward()
    isOnClosedSwitch ? toggleSwitch() : collectGem()
}

func turnAround() {
    (1...2).forEach {_ in turnLeft() }
}

func clearRow() {
    collectOrToggle()
    turnAround()
    moveForward()
    turnLeft()
}

turnLeft()
(1...2).forEach {_ in moveForward() }

greenPortal.isActive = false

(1...loopCount).forEach {_ in clearRow() }

greenPortal.isActive = true
moveForward()
turnAround()
moveForward()

greenPortal.isActive = false
orangePortal.isActive = false

for k in 1...loopCount - 1 {
    clearRow() 
    }



for k in 1...loopCount - 1 {
    moveForward() 
    }


for k in 1...loopCount  {
    clearRow() 
    }


orangePortal.isActive = true
moveForward()
turnAround()
moveForward()

orangePortal.isActive = false

turnLeft()

for k in 1...loopCount - 2 {
    clearRow() 
    }



////////////////////////////////


```




```Swift 
// 2.2.4
// v- 4

orangePortal.isActive = false
greenPortal.isActive = false

turnRight()
moveForward()

func turnAround(){
    turnLeft(); turnLeft()
}

func moveTA(){
    moveForward()
    turnAround()
}


func clear2Blocks(){
    for k in 1...2{
        moveForward()
        turnRight()
        moveForward()
        isOnClosedSwitch ? toggleSwitch() : collectGem()
        turnLeft()
        turnLeft()
    }

}

clear2Blocks()

orangePortal.isActive = true
moveForward()
orangePortal.isActive = false

moveTA()


for k in 1...2{
    clear2Blocks()
}

moveForward()
turnRight()
moveForward()
moveForward()

clear2Blocks()

greenPortal.isActive = true
moveForward()
greenPortal.isActive = false

moveTA()

for k in 1...2{
   clear2Blocks()
}


greenPortal.isActive = false
orangePortal.isActive = false
turnRight()

func turnAround(){
    turnLeft(); turnLeft()
}

//clear action
func clearThem(){
    moveForward()
       if isBlocked{
            turnAround()
            if isOnClosedSwitch{
               toggleSwitch()
               }
            else {
                collectGem()
            }
           moveForward()
           turnLeft()
       }
}


// north side, right
for i in 1...7 {
    clearThem()
}

//teleport
greenPortal.isActive = true
moveForward()
greenPortal.isActive = false

// north side, left
for i in 1...4 {
     clearThem()
}
toggleSwitch()
turnAround()


//teleport
greenPortal.isActive = true
moveForward()
greenPortal.isActive = false
moveForward()

for k in 1...16 {
    clearThem()
}


////////////////////////////////


```





```Swift
// 2.2.4
// v- 5

func turnAround() { turnLeft(); turnLeft() }

func clearThem() {
    moveForward()
    if isBlocked {
        turnAround()
        isOnClosedSwitch ? toggleSwitch() : collectGem()
        moveForward()
        turnLeft()
    }
}

func teleport() {
    greenPortal.isActive = true
    moveForward()
    greenPortal.isActive = false
}

func repeatActionRecursively(_ times: Int, action: () -> Void) {
    if times > 0 {
        action()
        repeatActionRecursively(times - 1, action: action)
    }
}

// north side, right
repeatActionRecursively(7, action: clearThem)

teleport()

// north side, left
repeatActionRecursively(4, action: clearThem)
toggleSwitch()
turnAround()

teleport()
moveForward()

// south side
repeatActionRecursively(16, action: clearThem)




////////////////////////////////


```

### 2.2.5 Random gems everywhere


```Swift
// 2.2.5
// v- 0

let totalGems = randomNumberOfGems
var gems:Int; var steps:Int; (gems, steps) = (0, 0)
func portalConditions(_ a:Bool){
    bluePortal.isActive = a
    pinkPortal.isActive = a
}
while gems < totalGems{
    moveForward()
    steps += 1
    if steps == 4 || steps == 9 || steps == 15 {
        portalConditions(false)
    }
    if steps == 8 || steps == 13 || steps == 19 {
        portalConditions(true)
    }
    if isOnGem{
        collectGem()
        gems += 1
    }
    if isBlocked{
        turnLeft()
        turnLeft()
    }
}



var gemCount = 0
func checkTile() {
    moveForward()
    if isOnGem {
        collectGem()
        gemCount += 1
    }
    if isBlocked {
        turnLeft()
        turnLeft()
        bluePortal.isActive = !bluePortal.isActive
        pinkPortal.isActive = !pinkPortal.isActive
    }
}
while gemCount < totalGems {
    checkTile()
}

////////////////////////////////


```




```Swift
// 2.2.5
// v- 1

let totalGems = randomNumberOfGems

var gems = 0

while gems < totalGems {
    moveForward()
    if isOnGem{
        collectGem()
        gems += 1
    }
    if isBlocked{
        (1...2).forEach {_ in turnLeft()}
        pinkPortal.isActive = !pinkPortal.isActive
        bluePortal.isActive = !bluePortal.isActive
    }
    
    
}



////////////////////////////////


```


