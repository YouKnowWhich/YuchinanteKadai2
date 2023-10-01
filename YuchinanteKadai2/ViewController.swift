//
//  ViewController.swift
//  
//  
//  Created by Yuchinante on 2023/10/01
//  
//

import UIKit

class ViewController: UIViewController {
    // テキストフィールド、セグメンテッドコントロール、ラベルのIBOutlet
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var resultlabel: UILabel!

    // 計算ボタンが押されたときに呼び出されるアクション
    @IBAction func calculationButton(_ sender: Any) {
        // テキストフィールドの値を数値に変換
        let value1 = Int(textField1.text ?? "") ?? 0
        let value2 = Int(textField2.text ?? "") ?? 0

        // 選択されたセグメントのインデックスを取得
        let segmentCalculation = segmentedControl.selectedSegmentIndex

        // 計算結果を格納する変数
        let result: String

        // セグメントに基づいて計算を実行
        switch segmentCalculation {
        case 0:
            result = String(value1 + value2)
        case 1:
            result = String(value1 - value2)
        case 2:
            result = String(value1 * value2)
        case 3:
            // ゼロで割り算する前にチェック
            if value2 == 0 {
                result = "割る数には0以外を入力して下さい"
            } else {
                result = String(value1 / value2)
            }
        default:
            result = "計算不可"
        }

        // 計算結果をラベルに表示
        resultlabel.text = result
    }


}
