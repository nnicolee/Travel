//
//  IndivPlan.swift
//  travelpt2
//
//  Created by Angie Baik on 10/29/23.
//

import SwiftUI

struct IndivPlan: View {
    var datas: [Data] = DataList.datas2
    var newdatas: [Data] = DataList.datas2
    

    var body: some View {
        ScrollView {
            VStack {
                Image("placeholder")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity, alignment: .top)
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    VStack(alignment: .leading, spacing: 8){
                        List(datas, id:\.id) { data in
                            Text(data.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            Text(data.location)
                            .font(.title2)
                            .foregroundColor(.secondary)
                            Text(data.friends)
                            .font(.title2)
                            .foregroundColor(.secondary)
                            Text(data.budget)
                            .font(.title2)
                            .foregroundColor(.secondary)
                        }
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Contact")
                            .font(.title)
                            .fontWeight(.semibold)
                                                
                        
                        Spacer()

                        
                        Text("Next Meeting")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Text("TBD")
                        
                        Spacer()

                        Text("Bucket list")
                            .font(.title)
                            .fontWeight(.semibold)
                        
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

struct IndivPlan_Previews: PreviewProvider {
    static var previews: some View {
        IndivPlan()
    }
}

// IndivPlan(plan: dataList.datas2.first())/
