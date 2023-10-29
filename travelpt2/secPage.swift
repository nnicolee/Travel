//
//  secPage.swift
//  travelpt2
//
//  Created by Nicole Lee on 10/28/23.
//
import SwiftUI
struct secPage: View {
    var data: Data
    var body: some View {
        ScrollView {
            VStack {
                Image(data.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity, alignment: .top)
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    VStack(alignment: .leading, spacing: 8){
                        Text(data.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(data.amount)
                            .font(.title3)
                            .foregroundColor(.secondary)
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 8){
                    
                        
                        Text("Date")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Text(data.date)
                    }
                }
                .frame(maxWidth: .infinity,  alignment: .leading)
                .padding()
                
            }
            
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
    }
}
struct secPage_Previews: PreviewProvider {
    static var previews: some View {
        if DataList.datas2.isEmpty {
            Text("No data to see")
        } else {
            secPage(data: DataList.datas2.first!)
        }
    }
}
