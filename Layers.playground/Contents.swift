//: Playground - noun: a place where people can play

import UIKit

//Challenge 1: Chess Board with Border
let superFrame = CGRect(x: 0, y: 0, width: 750, height: 1334)
let superView2 = UIView(frame: superFrame)
superView2.backgroundColor = .white

let boardFrame = CGRect(x:0, y:0, width: superFrame.width, height: superFrame.width)
let boardView = UIView(frame: boardFrame)
boardView.layer.borderWidth = 15
boardView.layer.borderColor = UIColor.black.cgColor
boardView.clipsToBounds = true

for j in 0..<8 {
    let rowFrame = CGRect(x: 0, y:CGFloat((superFrame.width/8)*CGFloat(j)), width: superFrame.width, height: superFrame.width/8)
    let rowView = UIView(frame: rowFrame)
    for i in 0..<8 {
        let checkFrame = CGRect(x:CGFloat((superFrame.width/8)*CGFloat(i)), y:0, width: superFrame.width/8, height: superFrame.width/8)
        let checkView = UIView(frame: checkFrame)
        if (j%2) == 0{
            if (i%2) == 0 {
                checkView.backgroundColor = .red
            } else {
                checkView.backgroundColor = .white
            }
        } else {
            if (i%2) == 0 {
                checkView.backgroundColor = .white
            } else {
                checkView.backgroundColor = .red
            }
        }
        rowView.addSubview(checkView)
    }
    boardView.addSubview(rowView)
}
superView2.addSubview(boardView)

