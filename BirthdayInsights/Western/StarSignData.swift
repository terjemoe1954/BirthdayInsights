//
//  StaSignData.swift
//  Birthday Insights
//
//  Created by Terje Moe on 25/03/2024.
//

import SwiftUI

extension StarSignDetailView {
    func famos(starSign:String) {
        switch starSign {
        case "Vannmannen":
            starPersonsArray = ["Justin Timberlake (31. januar)", "Cristiano Ronaldo (5. februar)", "Jennifer Aniston (11. februar)", "Robbie Williams (13. februar)","Paris Hilton (17. februar)", "Wolfgang Amadeus Mozart (27. januar)", "Thomas Edison (11. februar)", "Ferdinand Magellan (3. februar)", "Supakpat Sunwirach (25. Januar", "Shakira (2. februar)"]
        case "Væren":
            starPersonsArray = ["Reese Witherspoon (22. mars)","Keira Knightley (26. mars)","Mariah Carey (27. mars)", "Leonardo da Vinci (15. april)","Céline Dion (30. mars)","Charlie Chaplin (16. april)","Eddie Murphy (3.april)","JenniferGarner(17.april)", "Kourtney Kardashian (18. april)", "Clyde Barrow (24. mars)"]
        case "Krepsen":
            starPersonsArray = ["Lana Del Rey (21. juni)", "Meryl Streep (22. juni)", "Diana Spencer (1. juli)", "Julius Caesar (13. juli)","Pamela Anderson (1. juli)", "Lindsay Lohan (2. juli)", "Margot Robbie (2. juli)", "Tom Cruise (3. juli)", "Tom Hanks (9. juli)", "50 Cent (6. juli)"]
        case "Steinbukken":
            starPersonsArray = ["Al Capone (17. januar)", "Kit Harington (26. december)", "Jude Law (29. december)", "Bradley Cooper (5. januar)","Kim Jong-un (8. januar)", "Elvis Presley (8. januar)", "Kate Moss (16. januar)", "Michelle Obama (17. januar)", "Dolly Parton (19. januar)", "Blue Ivy Carter (7. januar)"]
        case "Tvillingene":
            starPersonsArray = ["Donald Trump (14. juni)", "Morgen Freeman (1. juni)", "Angelina Jolie (4. juni)", "Liam Neeson (7. juni)","Kanye West (8. juni)", "Mary-Kate Olsen (13. juni)", "Ashley Olsen (13. juni)", "Lucy Hale (14. juni)", "Neil Patrick Harris (15. juni)", "Nicole Kidman (20. juni)"]
        case "Løven":
            starPersonsArray = ["Jennifer Lopez (24. juli)", "Matt LeBlanc (25. juli)", "Taylor Momsen (26. juli)", "Napoléon Bonaparte (15. august)","Nikolaj Coster-Waldau (27. juli)", "J.K. Rowling (31. juli)", "Harry Potter (31. juli)", "Barack Obama (4. august)", "Bill the Butcher (24. juli)", "Halle Berry (14. august)"]
        case "Vekten":
            starPersonsArray = ["Avril Lavigne (27. september)", "Mahatma Gandhi (2. oktober)", "Gwen Stefani (3. oktober)", "Kate Winslet (5. oktober)","Brigitte Bardot (28. september)", "Bruno Mars (8. oktober)", "Bella Thorne (8. oktober)", "Cardi B (11. oktober)", "Zac Efron (18. oktober)", "Kim Kardashian (21. oktober)"]
        case "Fiskene":
            starPersonsArray = ["Rihanna (20. februar)", "Drew Barrymore (22. februar)", "Albert Einstein (14. mars)", "Justin Bieber (1. mars)","Daniel Craig (2. mars)", "Camilla Cabello (3. mars)", "Bruce Willis (19. mars)", "Tanya Moe (2.mars)", "Eva Longoria (15. mars)", "Simone Biles (14. mars)"]
        case "Skytten":
            starPersonsArray = ["Miley Cyrus (23. november)", "Bruce Lee (27. november)", "Britney Spears (2. desember)", "Frank Sinatra (12. desember)","Tyra Banks (4. desember)", "Jay-Z (4. desember)", "Bubber (11. desember)", "Taylor Swift (13. desember)", "Brad Pitt (18. desember)", "Walt Disney (5. desember) "]
        case "Skorpionen":
            starPersonsArray = ["Ryan Reynolds (23. oktober)", "Drake (24. oktober)", "Katy Perry (25. oktober)", "Julia Roberts (28. oktober)","Frank Ocean (28. oktober)", "Leonardo Dicaprio (11. november)", "Demi Moore (11. november)", "Anne Hathaway (12. november)", "Charles Manson (12. november)", "Emma Stone (6. november)"]
        case "Tyren":
            starPersonsArray = ["Gigi Hadid (23. april)", "Kelly Clarkson (24. april)", "Channing Tatum (26. april)", "Katherine Langford (29. april)","Jamie Dornan (1. mai)", "David Beckham (2. mai)", "Audrey Hepburn (4. mai)", "Homer Simpson (12. mai)", "George Clooney (6. mai)", "Cher (20. mai)"]
        case "Jomfruen":
            starPersonsArray = ["Blake Lively (25. august)", "Chris Pine (26. august)", "Melissa McCarthy (26. august)", "Cameron Diaz (30. august)","Beyoncé (4. september)", "Michael Jackson (29. august)", "Mother Teresa (26. august)", "Jesse James (5. september)", "Adam Sandler (9. september)", "Pink (8. september)"]
        default:
            break
        }
    }
    
    func famos13(starSign:String) {
        switch starSign {
            
        case "Væren":
            starPersonsArray = ["Kourtney Kardashian (18. april)","Gigi Hadid (23. april)","Kelly Clarkson (24. april)", "Channing Tatum (26. april)","Katherine Langford (29. april)","Jamie Dornan (1. mai)","David Beckham (2. mai)","Audrey Hepburn (4. mai)","George Clooney (6. mai)","Homer Simpson (12. mai)"]
            
        case "Tyren":
            starPersonsArray = ["Morgen Freeman (1. juni)","Angelina Jolie (4. juni)","Liam Neeson (7. juni)","Kanye West (8. juni)","Lucy Hale (14. juni)","Cher (20. mai)","Donald Trump (14. juni)","Neil Patrick Harris (15. juni)","Nicole Kidman (20. juni)","Lana Del Rey (21. juni)"]
            
        case "Tvillingene":
            starPersonsArray = ["Meryl Streep (22. juni)","Diana Spencer (1. juli)","Pamela Anderson (1. juli)","Lindsay Lohan (2. juli)","Margot Robbie (2. juli)","Tom Cruise (3. juli)","50 Cent (6. juli)","Tom Hanks (9. juli)","Julius Caesar (13. juli)"]
            
        case "Krepsen":
            starPersonsArray = ["Jennifer Lopez (24. juli)","Bill the Butcher (24. juli)","Matt LeBlanc (25. juli)","Taylor Momsen (26. juli)","Nikolaj Coster-Waldau (27. juli)","J.K. Rowling (31. juli)","Harry Potter (31. juli)","Barack Obama (4. august)"]
            
        case "Løven":
            starPersonsArray = ["Napoléon Bonaparte (15. august)","Halle Berry (14. august)","Blake Lively (25. august)","Chris Pine (26. august)","Mother Teresa (26. august)","Melissa McCarthy (26. august)","Cameron Diaz (30. august)","Michael Jackson (29. august)","Beyoncé (4. september)","Jesse James (5. september)","Pink (8. september)","Adam Sandler (9. september)"]
            
        case "Jomfruen":
            starPersonsArray = ["Avril Lavigne (27. september)","Brigitte Bardot (28. september)","Mahatma Gandhi (2. oktober)","Gwen Stefani (3. oktober)","Kim Kardashian (21. oktober)","Drake (24. oktober)","Julia Roberts (28. oktober)","Frank Ocean (28. oktober)"]
            
        case "Vekten":
            starPersonsArray = ["Emma Stone (6. november)","Leonardo Dicaprio (11. november)","Demi Moore (11. november)","Anne Hathaway (12. november)","Charles Manson (12. november)","Miley Cyrus (23. november)"]
            
        case "Skorpionen":
            starPersonsArray = ["Bruce Lee (27. november)","Sarah Hyland (November 24)","Christina Applegate (November 25)","Tina Turner (November 26)","Bill Nye (November 27)","Anna Faris (November 29)"]
            
        case "Slangebæreren":
            starPersonsArray = ["Britney Spears (2. desember)", "Tyra Banks (4. desember)","Walt Disney (5. desember) ","Frank Sinatra (12. desember)","Taylor Swift (13. desember)","Brad Pitt (18. desember)"]
            
        case "Skytten":
            starPersonsArray = ["Kim Jong-un (8. januar)","Elvis Presley (8. januar)","Kate Moss (16. januar)","Al Capone (17. januar)","Michelle Obama (17. januar)","Dolly Parton (19. januar)"]
            
        case "Steinbukken":
            starPersonsArray = ["Wolfgang Amadeus Mozart (27. januar)","Justin Timberlake (31. januar)","Shakira (2. februar)","Ferdinand Magellan (3. februar)","Cristiano Ronaldo (5. februar)","Jennifer Aniston (11. februar)","Thomas Edison (11. februar)","Robbie Williams (13. februar)"]
            
        case "Vannmannen":
            starPersonsArray = ["Paris Hilton (17. februar)","Rihanna (20. februar)","Drew Barrymore (22. februar)","Justin Bieber (1. mars)","Daniel Craig (2. mars)","Camilla Cabello (3. mars)"]
            
        case "Fiskene":
            starPersonsArray = ["Albert Einstein (14. mars)","Bruce Willis (19. mars)","Reese Witherspoon (22. mars)","Clyde Barrow (24. mars)","Mariah Carey (27. mars)","Céline Dion (30. mars)","Eddie Murphy (3.april)","Leonardo da Vinci (15. april)","Charlie Chaplin (16. april)","JenniferGarner(17.april)"]
            
        default:
            break
        }
    }
    
    
    func signinfo(starSign:String) {
        switch starSign {
        case "Vannmannen":
            starInfo = "Stjernetegnet Vannmannen, med det latinske navnet Aquarius, er et veldig vennlig, høflig og rolig menneske, som Hund elsker å overraske ved å gjøre noe uforutsigbart. Vannmannen er blant annet morsom, blid, selvstendig, diplomatisk og sympatisk."
            
        case "Væren":
            starInfo = "Stjernetegnet Væren – som har det latinske navnet Aries – er en vennlig person, som samtidig har en fremoverlent holdning og ikke er redd for å heve stemmen. Du elsker å snakke - og noen ganger så mye at andre kan finne det vanskelig å komme til ordet."
            
        case "Krepsen":
            starInfo = "Krepsen, med det latinske navnet Cancer er et familiemenneske som elsker å være i et forhold. Det er ikke overraskende hvis andre ser på deg som en blid og rolig person. Utover det er du en følsom sjel. Bekymringer kan virkelig gå inn på deg, men godt humør får deg raskt til hektene igjen. Du hater å bli kritisert og blir lett såret."
            
        case "Steinbukken":
            starInfo = "Stjernetegnet Steinbukken, med det latinske navnet Capricorn, er en målbevisst og ambisiøs person, som kan virke harmløs, men som samtidig har ben i nesen. Du er fascinert av suksess og elsker å jobbe deg mot toppen!"
            
        case "Tvillingene":
            starInfo = "Stjernetegnet Tvillingene – hvis latinske navn er Gemini – er en person med mye energi. Du er veldig sosial og synes det kan være vanskelig å stå stille - det skal helst skje noe hele tiden. Skulle det oppstå en diskusjon kan du snakke deg ut av hva som helst."
            
        case "Løven":
            starInfo = "Stjernetegnet Løven, med det latinske navnet Leo, er en energisk person som liker å være midtpunktet i de fleste situasjoner. Du er en fantastisk, lojal venn og elsker å gi gode råd."
            
        case "Vekten":
            starInfo = "Stjernetegnet Vekten, som har det latinske navnet Libra, er en veldig oppmerksom person. Du har det best når andre har det godt - derfor er du også den ideelle lytter når folk har bruk for å snakke."
            
        case "Fiskene":
            starInfo = "Stjernetegnet Fiskene, med det latinske navnet Pisces, er et stjernetegn fylt med følelser. Du byr gjerne på deg selv og andre mennesker kan alltid regne med at du kommer med gode råd. Du vil gjerne leve livet på din egen måte og ha lov til å drømme - og dem kan du lett flykte inn i når du synes virkeligheten er litt utfordrende."
            
        case "Skytten":
            starInfo = "Stjernetegnet Skytten, med det latinske navnet Sagittarius, er en svært direkte person. Du sier ofte hva du tenker, selvfølgelig i god tro. Du er rastløs og hater å sitte eller stå stille, det er absolutt ikke deg. Du vil helst at det skjer noe hele tiden og er åpen for å prøve nye ting."
            
        case "Skorpionen":
            starInfo = "Stjernetegnet Skorpionen, med det latinske navnet Scorpio, er en svært selvsikker person som ikke er redd for å være rett frem. Du er selektiv når det kommer til vennskap, men til gjengjeld er du ekstremt lojal overfor de vennene du har. Du er opptatt av rettferdighet, men allikevel elsker du å få siste ord."
            
        case "Tyren":
            starInfo = "Stjernetegnet Tyren, med det latinske navnet Taurus, er en meget rolig og tålmodig person, men med antydning til en skjult styrke. Du er et hjemmemenneske som elsker å slappe av i hjemlige, hyggelige omgivelser og ting skal helst være som de pleier. Utover det har Tyren stor kjærlighet til kunst og musikk, og de er oftest veldig kreative og handy."
            
        case "Jomfruen":
            starInfo = "Stjernetegnet Jomfruen, med det latinske navnet Virgo, er en veldig generøs og perfeksjonistisk person som ikke alltid er veldig snakkesalig. Du trives godt i eget selskap og selskapelige sammenhenger er ikke der man oftest finner personer født i Jomfruens tegn. Jomfruer er dessuten svært renslige av seg og sørger alltid for at huset ser fint ut før de drar hjemmefra."
            
        case "Slangebæreren":
            starInfo = "Stjernetegnet Slangebæreren det 13nde Stjernetegnet. Generelt er de glade, har rikelig med karisma og en sterk følelse av rettferdighet. Negative egenskaper er sjalusi og kortherdet. Ophiuchuses er veldig flinke til å utsette, kan noen ganger være rastløse og er ofte kritiske. Sosiale merkelapper er ikke Ophiuchuses greie, og de kan være ganske hemmelighetsfulle"
            
        default:
            break
        }
    }
    
    
    
}
