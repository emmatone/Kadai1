//
//  ContentView.swift
//  EmmaKadai1
//
//  Created by EmmaTone on 2022/12/13.
//

import SwiftUI

struct ContentView: View {

    @State var inputText1: String = ""
    @State var inputText2: String = ""
    @State var inputText3: String = ""
    @State var inputText4: String = ""
    @State var inputText5: String = ""
    @State var resultText = "Label"

    var body: some View {

        VStack(alignment: .leading, spacing: 15) {
            Text("課題1\n5つの数字を足し算するアプリ")
                .font(.headline)

            // 入力欄
            Group {
                TextField("", text: $inputText1)
                TextField("", text: $inputText2)
                TextField("", text: $inputText3)
                TextField("", text: $inputText4)
                TextField("", text: $inputText5)
            }
            .frame(width: 120)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)

            // 計算ボタン
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                // 入力
                let inputNumber1 = Int(inputText1) ?? 0
                let inputNumber2 = Int(inputText2) ?? 0
                let inputNumber3 = Int(inputText3) ?? 0
                let inputNumber4 = Int(inputText4) ?? 0
                let inputNumber5 = Int(inputText5) ?? 0
                
                // 処理（足し算）
                let resultNumber = inputNumber1 + inputNumber2 + inputNumber3 + inputNumber4 + inputNumber5

                // 出力
                resultText = String(resultNumber)
            }
            .buttonStyle(.borderedProminent)

            // 計算結果表示欄
            Text("\(resultText)")
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
