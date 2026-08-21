//
//  MainView.swift
//  Birthday Insights
//
//  Created by Terje Moe on 07/01/2024.
//

import SwiftUI

struct MainView: View {
    @State var starSign: String = ""
    @State var fAar: Int = 0
    @State var fMnd: Int = 0
    @State var fDay: Int = 0
    @State var kjonn: String = ""
    @State var bilde: String = "Family"
    @State var chZodiacText: String = ""
    @State var chElementText: String = ""
    @State var nextBday: Int = 0
    @State private var starSignIsTapped: Bool = false
    @State private var chineseZodiacIsTapped: Bool = false
    @State private var isThirteenStarSigns: Bool = false
    @State var vedicRashiName: String = ""
    @State private var vedicAstrologyIsTapped: Bool = false
    @State private var selectedBirthDate: Date = Date()
    @State private var selectedGender: Int = 0 // 0 for kvinne, 1 for mann
    @State private var daysLived: Int = 0
    @State private var birthWeekday: String = ""
    @State private var birthSeason: String = ""
    @State private var generationName: String = ""

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Fødselsdagsinnsikt")
                            .font(.largeTitle)
                            .bold()
                        Text("Se alder, neste bursdag og nyttige dato- og kalenderinnsikter basert på fødselsdatoen din.")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }

                    VStack(spacing: 12) {
                        DatePicker("Fødselsdato", selection: $selectedBirthDate, in: ...Date(), displayedComponents: .date)
                            .datePickerStyle(.compact)
                            .labelsHidden()
                            .frame(maxWidth: .infinity)

                        Picker("Kjønn", selection: $selectedGender) {
                            Text("Kvinne").tag(0)
                            Text("Mann").tag(1)
                        }
                        .pickerStyle(.segmented)
                    }
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .onChange(of: selectedBirthDate) {
                        updateFromSelection()
                    }
                    .onChange(of: selectedGender) {
                        updateFromSelection()
                    }

                    Image(bilde)
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .frame(height: 260)
                        .scaledToFit()
                        .cornerRadius(24)
                        .accessibilityHidden(true)

                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                        InsightCard(title: "Livsfase", value: kjonn, detail: "\(fAar) år")
                        InsightCard(title: "Neste bursdag", value: "\(nextBday) dager", detail: "Til \(fAar + 1)-årsdagen")
                        InsightCard(title: "Levd så langt", value: "\(daysLived) dager", detail: "\(fMnd) måneder og \(fDay) dager siden sist årsdag")
                        InsightCard(title: "Født på", value: birthWeekday, detail: birthSeason)
                        InsightCard(title: "Generasjon", value: generationName, detail: "Basert på fødselsår")
                        InsightCard(title: "Vestlig stjernetegn", value: starSign, detail: "Sekundær referanse")
                    }

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Kalender- og kulturreferanser")
                            .font(.headline)
                        Text("Disse tegnene vises som ekstra oppslag og er ikke hovedformålet med appen.")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }

                    HStack(spacing: 12) {
                        InsightSymbolCard(
                            imageName: starSign.isEmpty ? "Bomb2" : starSign,
                            title: "Vestlig",
                            subtitle: starSign.isEmpty ? "Ikke valgt" : starSign
                        )
                        .onTapGesture {
                            starSignIsTapped = true
                        }

                        InsightSymbolCard(
                            imageName: chZodiacText.isEmpty ? "Bomb2" : chZodiacText,
                            title: "Kinesisk",
                            subtitle: chZodiacText.isEmpty ? "Ikke valgt" : "\(chElementText) \(chZodiacText)"
                        )
                        .onTapGesture {
                            chineseZodiacIsTapped = true
                        }

                        InsightSymbolCard(
                            imageName: vedicRashiName.isEmpty ? "Bomb2" : vedicRashiName,
                            title: "Vedisk",
                            subtitle: vedicRashiName.isEmpty ? "Ikke valgt" : vedicRashiName
                        )
                        .onTapGesture {
                            vedicAstrologyIsTapped = true
                        }
                    }

                    VStack(alignment: .leading, spacing: 10) {
                        Toggle(isOn: $isThirteenStarSigns) {
                            Text("Vis alternativ modell med 13 stjernetegn")
                                .font(.headline)
                        }
                        .tint(.blue)

                        Text(isThirteenStarSigns ? "Alternativ modell aktivert" : "Standardmodell med 12 stjernetegn")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .onChange(of: isThirteenStarSigns) {
                        updateFromSelection()
                    }
                }
                .navigationDestination(isPresented: $starSignIsTapped) {
                    StarSignDetailView(starSign: $starSign, isThirteenStarSigns: $isThirteenStarSigns)
                }
                .navigationDestination(isPresented: $chineseZodiacIsTapped) {
                    ChineseZodiacDetailView(chZodiacText: $chZodiacText, chElementText: $chElementText)
                }
                .navigationDestination(isPresented: $vedicAstrologyIsTapped) {
                    VedicAstrologyDetailView(vedicRashiName: $vedicRashiName)
                }
            }
            .navigationTitle("Birthday Insights")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gearshape")
                    }
                    .accessibilityLabel("Settings")
                }
            }
        }
        .onAppear {
            updateFromSelection()
        }
    }
    
    private func updateFromSelection() {
        let calendar = Calendar.current
        let day = calendar.component(.day, from: selectedBirthDate)
        let month = calendar.component(.month, from: selectedBirthDate)
        let year = calendar.component(.year, from: selectedBirthDate)
        let adjustedYear = adjustedChineseYear(year: year, month: month, day: day)
        
        kjonn = selectedGender == 0 ? "F" : "M"
        
        dato(for: selectedBirthDate)
        alderKlasse()
        daysLived = totalDaysSinceBirth(for: selectedBirthDate)
        birthWeekday = weekdayString(for: selectedBirthDate)
        birthSeason = seasonString(month: month, day: day)
        generationName = generationLabel(for: year)
        isThirteenStarSigns ? zodiac13(month: month, day: day) : zodiac(month: month, day: day)
        chinese_zodiac(year: adjustedYear)
        chinese_element(for: adjustedYear % 10)
        vedicRashi(month: month, day: day)
    }
}

private struct InsightCard: View {
    let title: String
    let value: String
    let detail: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.caption)
                .foregroundStyle(.secondary)
            Text(value)
                .font(.headline)
                .bold()
            Text(detail)
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, minHeight: 96, alignment: .leading)
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

private struct InsightSymbolCard: View {
    let imageName: String
    let title: String
    let subtitle: String

    var body: some View {
        VStack(spacing: 10) {
            Image(imageName)
                .resizable()
                .frame(width: 72, height: 72)
                .scaledToFit()
                .cornerRadius(18)
            Text(title)
                .font(.headline)
            Text(subtitle)
                .font(.caption)
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, minHeight: 170, alignment: .top)
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

#Preview {
    MainView()
}
