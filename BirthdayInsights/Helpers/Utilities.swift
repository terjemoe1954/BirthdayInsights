//
//  Utilities.swift
//  Birthday Insights
//
//  Created by Terje Moe on 28/02/2024.
//

import Foundation

func chineseNewYearDate(for year: Int) -> Date? {
    let calendar = Calendar.current
    var components = DateComponents()
    components.year = year
    
    // Lookup table for Chinese New Year dates from 1890 to 2040 (approximate, based on Gregorian dates)
    // Source references approximate CNY dates; for missing years, fallback to Feb 4th.
    let cnyDates: [Int: (Int, Int)] = [
        1890: (1, 31), 1891: (2, 19), 1892: (2, 7), 1893: (1, 27), 1894: (2, 15),
        1895: (2, 4), 1896: (1, 24), 1897: (2, 11), 1898: (1, 31), 1899: (2, 19),
        1900: (2, 8), 1901: (1, 28), 1902: (2, 16), 1903: (2, 5), 1904: (1, 25),
        1905: (2, 13), 1906: (2, 2), 1907: (1, 22), 1908: (2, 10), 1909: (1, 30),
        1910: (2, 18), 1911: (2, 6), 1912: (1, 26), 1913: (2, 14), 1914: (2, 3),
        1915: (1, 23), 1916: (2, 11), 1917: (1, 31), 1918: (2, 19), 1919: (2, 8),
        1920: (1, 28), 1921: (2, 16), 1922: (2, 5), 1923: (1, 25), 1924: (2, 13),
        1925: (2, 2), 1926: (1, 24), 1927: (2, 13), 1928: (2, 2), 1929: (1, 23),
        1930: (2, 10), 1931: (1, 30), 1932: (2, 17), 1933: (2, 6), 1934: (1, 26),
        1935: (2, 14), 1936: (2, 4), 1937: (1, 24), 1938: (2, 11), 1939: (1, 31),
        1940: (2, 19), 1941: (2, 8), 1942: (1, 27), 1943: (2, 15), 1944: (2, 5),
        1945: (1, 25), 1946: (2, 13), 1947: (2, 2), 1948: (1, 22), 1949: (2, 10),
        1950: (1, 29), 1951: (2, 17), 1952: (2, 6), 1953: (1, 27), 1954: (2, 14),
        1955: (2, 3), 1956: (1, 24), 1957: (2, 12), 1958: (1, 31), 1959: (2, 18),
        1960: (2, 8), 1961: (1, 28), 1962: (2, 15), 1963: (2, 5), 1964: (1, 25),
        1965: (2, 13), 1966: (2, 2), 1967: (1, 21), 1968: (2, 9), 1969: (1, 29),
        1970: (2, 6), 1971: (1, 27), 1972: (2, 15), 1973: (2, 3), 1974: (1, 23),
        1975: (2, 11), 1976: (1, 31), 1977: (2, 18), 1978: (2, 7), 1979: (1, 28),
        1980: (2, 16), 1981: (2, 5), 1982: (1, 25), 1983: (2, 13), 1984: (2, 2),
        1985: (2, 20), 1986: (2, 9), 1987: (1, 29), 1988: (2, 17), 1989: (2, 6),
        1990: (1, 27), 1991: (2, 15), 1992: (2, 4), 1993: (1, 23), 1994: (2, 10),
        1995: (1, 31), 1996: (2, 19), 1997: (2, 7), 1998: (1, 28), 1999: (2, 16),
        2000: (2, 5), 2001: (1, 24), 2002: (2, 12), 2003: (2, 1), 2004: (1, 22),
        2005: (2, 9), 2006: (1, 29), 2007: (2, 18), 2008: (2, 7), 2009: (1, 26),
        2010: (2, 14), 2011: (2, 3), 2012: (1, 23), 2013: (2, 10), 2014: (1, 31),
        2015: (2, 19), 2016: (2, 8), 2017: (1, 28), 2018: (2, 16), 2019: (2, 5),
        2020: (1, 25), 2021: (2, 12), 2022: (2, 1), 2023: (1, 22), 2024: (2, 10),
        2025: (1, 29), 2026: (2, 17), 2027: (2, 6), 2028: (1, 26), 2029: (2, 13),
        2030: (2, 3), 2031: (1, 23), 2032: (2, 11), 2033: (1, 31), 2034: (2, 19),
        2035: (2, 8), 2036: (1, 28), 2037: (2, 15), 2038: (2, 4), 2039: (1, 24),
        2040: (2, 12)
    ]
    
    if let (month, day) = cnyDates[year] {
        components.month = month
        components.day = day
    } else {
        // Fallback approximate CNY date: February 4th
        components.month = 2
        components.day = 4
    }
    
    return calendar.date(from: components)
}

func adjustedChineseYear(year: Int, month: Int, day: Int) -> Int {
    let calendar = Calendar.current
    var components = DateComponents()
    components.year = year
    components.month = month
    components.day = day

    guard let birthDate = calendar.date(from: components),
          let cnyDate = chineseNewYearDate(for: year),
          birthDate < cnyDate else {
        return year
    }

    return year - 1
}

extension MainView {
    func alderKlasse() {
        if kjonn == "F" {
            switch fAar {
            case 0...9:
                kjonn = "Barn"
                bilde = "F\(fAar)"
            case 10...12:
                kjonn = "Ung jente"
                bilde = "F\(fAar)"
            case 13...19:
                kjonn = "Tenåring"
                bilde = "F\(fAar)"
            case 20...24:
                kjonn = "Ung kvinne"
                bilde = "F\(fAar)"
            case 25...30:
                kjonn = "Voksen kvinne"
                bilde = "F\(fAar)"
            case 31...35:
                kjonn = "Voksen kvinne"
                bilde = "F35"
            case 36...40:
                kjonn = "Voksen kvinne"
                bilde = "F40"
            case 41...45:
                kjonn = "Voksen kvinne"
                bilde = "F45"
            case 46...50:
                kjonn = "Voksen kvinne"
                bilde = "F50"
            case 51...58:
                kjonn = "Voksen kvinne"
                bilde = "F55"
            case 59...69:
                kjonn = "Erfaren kvinne"
                bilde = "F60"
            case 70...79:
                kjonn = "Senior"
                bilde = "F70"
            case 80...89:
                kjonn = "Senior"
                bilde = "F80"
            case 90...99:
                kjonn = "Senior"
                bilde = "F90"
            default:
                kjonn = "Senior"
                bilde = "F100"
            }
        } else if kjonn == "M" {
            switch fAar {
            case 0...5:
                kjonn = "Barn"
                bilde = "M\(fAar)"
            case 6...12:
                kjonn = "Gutt"
                bilde = "M\(fAar)"
            case 13...19:
                kjonn = "Tenåring"
                bilde = "M\(fAar)"
            case 20...29:
                kjonn = "Mann"
                bilde = "M\(fAar)"
            case 30...35:
                kjonn = "Voksen Mann"
                bilde = "M35"
            case 36...40:
                kjonn = "Voksen Mann"
                bilde = "M40"
            case 41...45:
                kjonn = "Voksen Mann"
                bilde = "M45"
            case 46...50:
                kjonn = "Voksen Mann"
                bilde = "M50"
            case 51...58:
                kjonn = "Voksen Mann"
                bilde = "M55"
            case 59...69:
                kjonn = "Erfaren mann"
                bilde = "M60"
            case 70...79:
                kjonn = "Senior"
                bilde = "M70"
            case 80...89:
                kjonn = "Senior"
                bilde = "M80"
            case 90...99:
                kjonn = "Senior"
                bilde = "M90"
            default:
                kjonn = "Senior"
                bilde = "M100"
            }
        }
    }
    
    func dato(for birthDate: Date) {
        let calendar = Calendar.current
        let date1 = calendar.startOfDay(for: birthDate)
        let date2 = calendar.startOfDay(for: Date())
        
        let diffs = calendar.dateComponents([.year, .month, .day], from: date1, to: date2)
        fAar = diffs.year ?? 0
        fMnd = diffs.month ?? 0
        fDay = diffs.day ?? 0
        
        nextBday = daysUntil(birthday: date1)
    }
    
    func zodiac(month: Int, day: Int) {
        switch (month, day) {
        case (3, 21...31), (4, 1...19):
            starSign = "Væren"
        case (4, 20...30), (5, 1...20):
            starSign = "Tyren"
        case (5, 21...31), (6, 1...21):
            starSign = "Tvillingene"
        case (6, 22...30), (7, 1...22):
            starSign = "Krepsen"
        case (7, 23...31), (8, 1...22):
            starSign = "Løven"
        case (8, 23...31), (9, 1...22):
            starSign = "Jomfruen"
        case (9, 23...30), (10, 1...23):
            starSign = "Vekten"
        case (10, 24...31), (11, 1...21):
            starSign = "Skorpionen"
        case (11, 22...30), (12, 1...21):
            starSign = "Skytten"
        case (12, 22...31), (1, 1...19):
            starSign = "Steinbukken"
        case (1, 20...31), (2, 1...18):
            starSign = "Vannmannen"
        case (2, 19...29), (3, 1...20):
            starSign = "Fiskene"
        default:
            starSign = ""
        }
    }
    
    func zodiac13(month: Int, day: Int) {
        switch (month, day) {
        case (4, 18...30), (5, 1...13):
            starSign = "Væren"
        case (5, 14...31), (6, 1...21):
            starSign = "Tyren"
        case (6, 22...30), (7, 1...20):
            starSign = "Tvillingene"
        case (7, 21...31), (8, 1...10):
            starSign = "Krepsen"
        case (8, 11...31), (9, 1...16):
            starSign = "Løven"
        case (9, 17...30), (10, 1...30):
            starSign = "Jomfruen"
        case (10, 31...31), (11, 1...23):
            starSign = "Vekten"
        case (11, 24...28):
            starSign = "Skorpionen"
        case (11, 29...30), (12, 1...18):
            starSign = "Slangebæreren"
        case (12, 19...31), (1, 1...20):
            starSign = "Skytten"
        case (1, 21...31), (2, 1...16):
            starSign = "Steinbukken"
        case (2, 17...29), (3, 1...11):
            starSign = "Vannmannen"
        case (3, 12...31), (4, 1...17):
            starSign = "Fiskene"
        default:
            starSign = ""
        }
    }
    
    func vedicRashi(month: Int, day: Int) {
        let md = (month * 100) + day
        
        switch md {
        case 414...514:
            vedicRashiName = "Mesha"
        case 515...614:
            vedicRashiName = "Vrishabha"
        case 615...714:
            vedicRashiName = "Mithuna"
        case 715...814:
            vedicRashiName = "Karka"
        case 815...914:
            vedicRashiName = "Simha"
        case 915...1014:
            vedicRashiName = "Kanya"
        case 1015...1114:
            vedicRashiName = "Tula"
        case 1115...1214:
            vedicRashiName = "Vrishchika"
        case 1215...1231, 101...114:
            vedicRashiName = "Dhanu"
        case 115...212:
            vedicRashiName = "Makara"
        case 213...314:
            vedicRashiName = "Kumbha"
        case 315...413:
            vedicRashiName = "Meena"
        default:
            vedicRashiName = ""
        }
    }
    
    func chinese_element(for element: Int) {
        switch element {
        case 0, 1:
            chElementText = "Metall"
        case 2, 3:
            chElementText = "Vann"
        case 4, 5:
            chElementText = "Tre"
        case 6, 7:
            chElementText = "Ild"
        case 8, 9:
            chElementText = "Jord"
        default:
            chElementText = ""
        }
    }
    
    func chinese_zodiac(year: Int) {
        let zodiacIndex = year % 12
                
        switch zodiacIndex {
        case 1: chZodiacText = "Hane"
        case 2: chZodiacText = "Hund"
        case 3: chZodiacText = "Gris"
        case 4: chZodiacText = "Rotte"
        case 5: chZodiacText = "Okse"
        case 6: chZodiacText = "Tiger"
        case 7: chZodiacText = "Hare"
        case 8: chZodiacText = "Drage"
        case 9: chZodiacText = "Slange"
        case 10: chZodiacText = "Hest"
        case 11: chZodiacText = "Geit"
        default: chZodiacText = "Ape"
        }
    }
    
    func daysUntil(birthday: Date) -> Int {
        let cal = Calendar.current
        let today = cal.startOfDay(for: Date())
        let date = cal.startOfDay(for: birthday)
        guard let nextDate = cal.nextDate(after: today, matching: cal.dateComponents([.month, .day], from: date), matchingPolicy: .nextTimePreservingSmallerComponents) else {
            return 0
        }
        return cal.dateComponents([.day], from: today, to: nextDate).day ?? 0
    }

    func totalDaysSinceBirth(for birthDate: Date) -> Int {
        let cal = Calendar.current
        let today = cal.startOfDay(for: Date())
        let date = cal.startOfDay(for: birthDate)
        return cal.dateComponents([.day], from: date, to: today).day ?? 0
    }

    func weekdayString(for birthDate: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "nb_NO")
        formatter.dateFormat = "EEEE"
        return formatter.string(from: birthDate).capitalized
    }

    func seasonString(month: Int, day: Int) -> String {
        switch (month, day) {
        case (3, 1...31), (4, 1...30), (5, 1...31), (6, 1...20):
            return "Vår"
        case (6, 21...30), (7, 1...31), (8, 1...31), (9, 1...22):
            return "Sommer"
        case (9, 23...30), (10, 1...31), (11, 1...30), (12, 1...20):
            return "Høst"
        default:
            return "Vinter"
        }
    }

    func generationLabel(for year: Int) -> String {
        switch year {
        case 2013...:
            return "Generation Alpha"
        case 1997...2012:
            return "Generation Z"
        case 1981...1996:
            return "Millennial"
        case 1965...1980:
            return "Generation X"
        case 1946...1964:
            return "Baby Boomer"
        case 1928...1945:
            return "Silent Generation"
        default:
            return "Tidligere generasjon"
        }
    }
}
