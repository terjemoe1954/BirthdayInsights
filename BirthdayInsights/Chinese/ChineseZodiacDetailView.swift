//
//  ChinesZodiacDetailView.swift
//  Birthday Insights
//
//  Created by Terje Moe on 25/03/2024.
//

import SwiftUI

struct ChineseZodiacDetailView: View {
    @Binding var chZodiacText: String
    @Binding var chElementText: String
    @State var chineseZodiacInfo: String = ""
    @State var chineseElementInfo: String = ""
    var body: some View {
        VStack{
            VStack(alignment: .center , spacing:20){
                
                ScrollView{
                    Text(chineseZodiacInfo)
                        .padding()
                        .font(.headline)
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.red.opacity(0.3))
                        .cornerRadius(10)
                        .padding(10)
                }
                
            }
            .onAppear{
                chineseZodiacInfo(chZodiacText: chZodiacText)
            }
         
            VStack(alignment: .center , spacing:20){
                
                ScrollView{
                    Text(chineseElementInfo)
                        .padding()
                        .font(.headline)
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.red.opacity(0.3))
                        .cornerRadius(10)
                        .padding(10)
                }
                
            }
            .onAppear{
                chineseElementInfo(chElementText: chElementText)
            }
            
        }
        .background(Color.orange.opacity(0.3))
        
    }
}
