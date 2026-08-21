import SwiftUI

enum AppearanceSelection: String, CaseIterable, Identifiable {
    case system
    case light
    case dark
    
    var id: String { rawValue }
    var title: String {
        switch self {
        case .system: return "System"
        case .light: return "Light"
        case .dark: return "Dark"
        }
    }
    
    var colorScheme: ColorScheme? {
        switch self {
        case .system: return nil
        case .light: return .light
        case .dark: return .dark
        }
    }
}

struct SettingsView: View {
    @AppStorage("appearanceSelection") private var appearanceSelectionRaw: String = AppearanceSelection.system.rawValue
    
    private var selectionBinding: Binding<AppearanceSelection> {
        Binding {
            AppearanceSelection(rawValue: appearanceSelectionRaw) ?? .system
        } set: { newValue in
            appearanceSelectionRaw = newValue.rawValue
        }
    }
    
    var body: some View {
        Form {
            Section("Appearance") {
                Picker("Theme", selection: selectionBinding) {
                    ForEach(AppearanceSelection.allCases) { option in
                        Text(option.title).tag(option)
                    }
                }
                .pickerStyle(.segmented)
                .accessibilityLabel("App Appearance")
                .accessibilityHint("Choose between System, Light, or Dark appearance")
            }
            Section("Contact") {
                Link(destination: URL(string: Constants.web)!,
                     label: {
                    Label("Les VG", systemImage: "globe")
                })
                HStack {
                    Image(systemName: "envelope")
                    Link("Kontakt meg via mail",
                         destination: URL(string: Constants.email)!)
                }
                HStack {
                    Image(systemName: "phone")
                    Link("Ring meg",
                         destination: URL(string: Constants.phone)!)
                }
            }
        }
        .navigationTitle("Settings")
        .preferredColorScheme(AppearanceSelection(rawValue: appearanceSelectionRaw)?.colorScheme)
    }
}

#Preview {
    NavigationStack { SettingsView() }
}
