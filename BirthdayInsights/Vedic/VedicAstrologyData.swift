//
//  VedicAstrologyData.swift
//  Birthday Insights
//
//  Created by Codex on 21/02/2026.
//

import SwiftUI

struct VedicRashi: Identifiable {
    let id = UUID()
    let name: String
    let symbolName: String
    let traits: String
}

extension VedicAstrologyDetailView {
    func loadVedicInfo() {
        vedicIntro = "Vedic astrology bruker rashi (månetegn) for å beskrive personlighet og livsretning. Her er en enkel oversikt over de 12 rashi med ikoner og korte beskrivelser."
        
        vedicRashis = [
            VedicRashi(name: "Mesha", symbolName: "flame.fill", traits: "Modig, direkte, energisk."),
            VedicRashi(name: "Vrishabha", symbolName: "leaf.fill", traits: "Stabil, lojal, komfortsøkende."),
            VedicRashi(name: "Mithuna", symbolName: "wind", traits: "Nysgjerrig, rask, tilpasningsdyktig."),
            VedicRashi(name: "Karka", symbolName: "drop.fill", traits: "Beskyttende, sensitiv, intuitiv."),
            VedicRashi(name: "Simha", symbolName: "sun.max.fill", traits: "Selvsikker, varm, uttrykksfull."),
            VedicRashi(name: "Kanya", symbolName: "wrench.and.screwdriver.fill", traits: "Analytisk, hjelpsom, presis."),
            VedicRashi(name: "Tula", symbolName: "scale.3d", traits: "Balansert, diplomatisk, sosial."),
            VedicRashi(name: "Vrishchika", symbolName: "bolt.fill", traits: "Intens, fokusert, robust."),
            VedicRashi(name: "Dhanu", symbolName: "arrow.up.right", traits: "Optimistisk, eventyrlysten, ærlig."),
            VedicRashi(name: "Makara", symbolName: "mountain.2.fill", traits: "Disiplinert, tålmodig, ambisiøs."),
            VedicRashi(name: "Kumbha", symbolName: "sparkles", traits: "Uavhengig, oppfinnsom, humanitær."),
            VedicRashi(name: "Meena", symbolName: "moon.stars.fill", traits: "Kreativ, empatisk, drømmende.")
        ]
    }
}
