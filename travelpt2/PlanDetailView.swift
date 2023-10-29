//
//  PlanDetailView.swift
//  travelpt2
//
//  Created by CatherineWang on 10/29/23.
//

import SwiftUI

struct PlanDetailView: View {
    var plan: Data
    var body: some View {
        ScrollView {
            VStack {
                Image(plan.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity, alignment: .top)
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    VStack(alignment: .leading, spacing: 8){
                        Text(plan.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Name")
                            .font(.title3)
                            .foregroundColor(.secondary)
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text(plan.location)
                        Text("Location")
                            .font(.title)
                            .fontWeight(.semibold)
        
                        
                        Spacer()
                        
                        Text(plan.friends)
                        
                        Text("Friends")
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

struct PlanDetailView_Previews: PreviewProvider {
    static var previews: some View {
        if DataList.datas2.isEmpty {
            Text("No plans to see")
        } else {
            PlanDetailView(plan: DataList.datas2.first!)
        }
    }
}

