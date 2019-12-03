# Swifty Ninja (SpriteKit)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![IDE: Xcode](https://img.shields.io/badge/IDE-Xcode%2011-blue.svg)](https://developer.apple.com/xcode/)
[![Language: Swift](https://img.shields.io/badge/Language-Swift-red.svg)](https://swift.org/blog/)
[![Game Technology: SpriteKit](https://img.shields.io/badge/Game%20Technology-SpriteKit-purple)](https://developer.apple.com/spritekit/)

## Description
Draw shapes in SpriteKit while making a fun and tense slicing game

### Steps to clean a new SpriteKit project.
* On `GameScene.sks`
  * Delete the **Hello World `Node`**
  * On `attributes inspector` from `GameScene.sks`:
    * Change the `anchor point` for **`X`:0 `Y`:0**.
    * Change the size for **W:1024** **H:768** to match iPad `landscape` size.
        > Although there are iPads much bigger, `SpriteKit` takes care of it, so don't worry about this size.
* Delete `Actions.sks`, move it to trash.
* On `GameScene.swift`
  * Delete the two properties
  * Delete all the code inside `didMove(to:)`
  * Delete the other methods

## Tags
The application was created in step-by-step, so if you want to look through each part, here are some tags that goes through the developing path.

### [Setting up](https://github.com/fdorado985/SwiftyNinja/tree/setting-up)
| Screenshot 01 |
| ------------- |
| ![screenshot01](.screenshots/screenshot01.png) |

### [Basics quick start: SKShapeNode](https://github.com/fdorado985/SwiftyNinja/tree/basics-quick-start-skshapenode)
| Screenshot 02 |
| ------------- |
| ![screenshot02](.screenshots/screenshot02.png) |