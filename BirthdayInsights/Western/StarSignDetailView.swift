//
//  StarSignDetailView.swift
//  Birthday Insights
//
//  Created by Terje Moe on 24/03/2024.
//

import SwiftUI

struct StarSignDetailView: View {
    
    @Binding var starSign: String
    @Binding var isThirteenStarSigns: Bool
    @State var starPersonsArray:[String] = []
    @State var starInfo: String = ""
    
    var body: some View {
        VStack{
            
            VStack(alignment: .center , spacing:10){
                
                Text("Kjente \(starSign) personer")
                    .font(.largeTitle)
                
                ForEach(starPersonsArray, id: \.self) { person in
                    Text(person)
                        .font(.headline)
                }
                
            }.onAppear{
                isThirteenStarSigns ? famos13(starSign: starSign) : famos(starSign: starSign)
                signinfo(starSign: starSign)
            }
            
            Spacer()
            
            VStack(alignment: .center , spacing:20){
                
                ScrollView{
                    Text(starInfo)
                        .padding()
                        .font(.headline)
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.mint.opacity(0.2))
                        .cornerRadius(10)
                        .padding(10)
                }
                .padding(.top)
                .padding(.top)
            }
        }
        .background(Color.cyan.opacity(0.1))
    }
}
