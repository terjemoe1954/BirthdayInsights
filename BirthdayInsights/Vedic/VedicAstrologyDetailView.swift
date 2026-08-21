//
//  VedicAstrologyDetailView.swift
//  Birthday Insights
//
//  Created by Codex on 21/02/2026.
//

import SwiftUI

struct VedicAstrologyDetailView: View {
    @Binding var vedicRashiName: String
    @State var vedicIntro: String = ""
    @State var vedicRashis: [VedicRashi] = []
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            if let selectedRashi = vedicRashis.first(where: { $0.name == vedicRashiName }) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack(alignment: .center, spacing: 12) {
                        Image(systemName: selectedRashi.symbolName)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.orange)
                            .padding(6)
                            .background(Color.orange.opacity(0.2))
                            .cornerRadius(10)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(selectedRashi.name)
                                .font(.title2)
                                .bold()
                            Text(selectedRashi.traits)
                                .font(.headline)
                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.orange.opacity(0.2))
                .cornerRadius(12)
                .padding(.horizontal, 10)
            }
            ScrollView {
                Text(vedicIntro)
                    .padding()
                    .font(.headline)
                    .bold()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.orange.opacity(0.25))
                    .cornerRadius(10)
                    .padding(10)
            }
            
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(vedicRashis) { rashi in
                        HStack(alignment: .center, spacing: 12) {
                            Image(systemName: rashi.symbolName)
                                .resizable()
                                .frame(width: 34, height: 34)
                                .foregroundColor(.orange)
                                .padding(6)
                                .background(Color.orange.opacity(0.2))
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(rashi.name)
                                    .font(.headline)
                                    .bold()
                                Text(rashi.traits)
                                    .font(.subheadline)
                            }
                        }
                        .padding(8)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.yellow.opacity(0.15))
                        .cornerRadius(10)
                    }
                }
                .padding(10)
            }
        }
        .onAppear {
            loadVedicInfo()
        }
        .background(Color.orange.opacity(0.1))
    }
}

#Preview {
    VedicAstrologyDetailView(vedicRashiName: .constant("Mesha"))
}
