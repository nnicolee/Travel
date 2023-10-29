//
//  receipt.swift
//  travelpt2
//
//  Created by CatherineWang on 10/29/23.
//

import SwiftUI

struct receipt: View {
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var result = 0.0

    var body: some View {
        ZStack {
            Color.white // Background color
                .ignoresSafeArea()

            VStack {
                Text("Receipt")
                    .font(.largeTitle)
                    .padding(.top, 20)
                
                Rectangle()
                    .fill(Color.black)
                    .frame(height: 2)
                    .padding(.top, 10)

                HStack {
                    Spacer()
                    Text("Date: \(getCurrentDate())")
                        .font(.caption)
                }
                .padding(10)
                
                HStack {
                    Text("Item 1:")
                    TextField("Enter the first item", text: $number1)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }

                HStack {
                    Text("Item 2:")
                    TextField("Enter the second item", text: $number2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }

                Rectangle()
                    .fill(Color.black)
                    .frame(height: 2)
                    .padding(.top, 10)

                Button("Calculate") {
                    if let num1 = Double(number1), let num2 = Double(number2) {
                        result = num1 + num2
                    } else {
                        result = 0.0 // Handle invalid input
                    }
                }
                .font(.title)
                .padding()

                Text("Total: $\(result, specifier: "%.2f")")
                    .font(.title)
                    .padding()

                Spacer()
            }
            .padding()
        }
    }

    func getCurrentDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy HH:mm"
        return formatter.string(from: Date())
    }
}
struct receipt_Previews: PreviewProvider {
    static var previews: some View {
        receipt()
    }
}



