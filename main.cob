IDENTIFICATION DIVISION.
PROGRAM-ID. PuffMatchups.
AUTHOR. Bunker Rohrbaugh.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT PlayerFile ASSIGN TO "records.txt"
       ORGANIZATION IS LINE SEQUENTIAL.
*> SELECT Chart ASSIGN TO "result.txt"
*>        ORGANIZATION IS LINE SEQUENTIAL.
DATA DIVISION.
FILE SECTION.
FD PlayerFile.
01 PlayerDetails.
       88 EndOfPlayerFile VALUE HIGH-VALUES. 
       02 PlayerName      PIC X(20).
       02 MatchupRecords.
           03 Mario.
               04 Mario-Name PIC X(5).
               04 Mario-Wins    PIC 99.
               04 Mario-Losses  PIC 99.
           03 Donkey-Kong.
               04 DK-Name PIC X(11).
               04 Donkey-Kong-Wins PIC 99.
               04 Donkey-Kong-Losses PIC 99.
           03 Link.
               04 Link-Name PIC X(4).
               04 Link-Wins PIC 99.
               04 Link-Losses PIC 99.
           03 Samus.
               04 Samus-Name PIC X(5).
               04 Samus-Wins PIC 99.
               04 Samus-Losses PIC 99.
           03 Dark-Samus.
               04 Dark-Samus-Name PIC X(10).
               04 Dark-Samus-Wins PIC 99.
               04 Dark-Samus-Losses PIC 99.
           03 Yoshi.
               04 Yoshi-Name PIC X(5).
               04 Yoshi-Wins PIC 99.
               04 Yoshi-Losses PIC 99. 
           03 Kirby.
               04 Kirby-Name PIC X(5).
               04 Kirby-Wins PIC 99. 
               04 Kirby-Losses PIC 99. 
           03 Fox.
               04 Fox-Name PIC XXX.
               04 Fox-Wins PIC 99. 
               04 Fox-Losses PIC 99.
           03 Pikachu.
               04 Pikachu-Name PIC X(7).
               04 Pikachu-Wins PIC 99. 
               04 Pikachu-Losses PIC 99. 
           03 Luigi.
               04 Luigi-Name PIC X(5).
               04 Luigi-Wins PIC 99. 
               04 Luigi-Losses PIC 99.
           03 Ness.
               04 Ness-Name PIC X(4).
               04 Ness-Wins PIC 99. 
               04 Ness-Losses PIC 99.
           03 Captain-Falcon.
               04 Captian-Falcon-Name PIC X(14).
               04 Captain-Falcon-Wins PIC 99. 
               04 Captain-Falcon-Losses PIC 99. 
           03 Jigglypuff.
               04 Jigglypuff-Name PIC X(10).
               04 Jigglypuff-Wins PIC 99. 
               04 Jigglypuff-Losses PIC 99. 
           03 Peach.
               04 Peach-Name PIC X(5).
               04 Peach-Wins PIC 99. 
               04 Peach-Losses PIC 99. 
           03 Daisy.
               04 Daisy-Name PIC X(5).
               04 Daisy-Wins PIC 99. 
               04 Daisy-Losses PIC 99. 
           03 Bowser.
               04 Bowser-Name PIC X(6).
               04 Bowser-Wins PIC 99. 
               04 Bowser-Losses PIC 99. 
           03 Ice-Climbers.
               04 Ice-Climbers-Name PIC X(12).
               04 Ice-Climbers-Wins PIC 99. 
               04 Ice-Climbers-Losses PIC 99. 
           03 Sheik.
               04 Sheik-Name PIC X(5).
               04 Sheik-Wins PIC 99. 
               04 Shiek-Losses PIC 99.
           03 Zelda.
               04 Zelda-Name PIC X(5).
               04 Zelda-Wins PIC 99. 
               04 Zelda-Losses PIC 99. 
           03 Dr-Mario.
               04 Dr-Mario-Name PIC X(8).
               04 Dr-Mario-Wins PIC 99. 
               04 Dr-Mario-Losses PIC 99. 
           03 Pichu.
               04 Pichu-Name PIC X(5).
               04 Pichu-Wins PIC 99. 
               04 Pichu-Losses PIC 99.
           03 Falco.
               04 Falco-Name PIC X(5).
               04 Falco-Wins PIC 99. 
               04 Falco-Losses PIC 99. 
           03 Marth.
               04 Marth-Name PIC X(5).
               04 Marth-Wins PIC 99.
               04 Marth-Losses PIC 99.
           03 Lucina.
               04 Lucina-Name PIC X(6).
               04 Lucina-Wins PIC 99. 
               04 Lucina-Losses PIC 99. 
           03 Young-Link.
               04 Young-Link-Name PIC X(10).
               04 Young-Link-Wins PIC 99. 
               04 Young-Link-Losses PIC 99. 
           03 Ganondorf.
               04 Ganondorf-Name PIC X(9).
               04 Ganondorf-Wins PIC 99.
               04 Ganondorf-Losses PIC 99. 
           03 Mewtwo.
               04 Mewtwo-Name PIC X(6).
               04 Mewtwo-Wins PIC 99. 
               04 Mewtwo-Losses PIC 99. 
           03 Roy.
               04 Roy-Name PIC XXX.
               04 Roy-Wins PIC 99. 
               04 Roy-Losses PIC 99. 
           03 Chrom.
               04 Chrom-Name PIC X(5).
               04 Chrom-Wins PIC 99. 
               04 Chrom-Losses PIC 99. 
           03 Mr-Game-And-Watch.
               04 Mr-Game-And-Watch-Name PIC X(17).
               04 Mr-Game-And-Watch-Wins PIC 99.
               04 Mr-Game-And-Watch-Losses PIC 99.
           03 Metaknight.
               04 Metaknight-Name PIC X(10).
               04 Metaknight-Wins PIC 99. 
               04 Metaknight-Losses PIC 99. 
           03 Pit.
               04 Pit-Name PIC XXX.
               04 Pit-Wins PIC 99. 
               04 Pit-Losses PIC 99. 
           03 Dark-Pit.
               04 Dark-Pit-Name PIC X(8).
               04 Dark-Pit-Wins PIC 99. 
               04 Dark-Pit-Losses PIC 99. 
           03 Zero-Suit-Samus.
               04 Zero-Suit-Samus-Name PIC X(15).
               04 Zero-Suit-Samus-Wins PIC 99. 
               04 Zero-Suit-Samus-Losses PIC 99. 
           03 Wario.
               04 Wario-Name PIC X(5).
               04 Wario-Wins PIC 99. 
               04 Wario-Losses PIC 99. 
           03 Snake.
               04 Snake-Name PIC X(5).
               04 Snake-Wins PIC 99. 
               04 Snake-Losses PIC 99. 
           03 Ike.
               04 Ike-Name PIC XXX.
               04 Ike-Wins PIC 99. 
               04 Ike-Losses PIC 99. 
           03 Pokemon-Trainer.
               04 Pokemon-Trainer-Name PIC X(15).
               04 Pokemon-Trainer-Wins PIC 99. 
               04 Pokemon-Trainer-Losses PIC 99. 
           03 Diddy-Kong.
               04 Diddy-Kong-Name PIC X(10).
               04 Diddy-Kong-Wins PIC 99. 
               04 Diddy-Kong-Losses PIC 99.
           03 Lucas.
               04 Lucas-Name PIC X(5).
               04 Lucas-Wins PIC 99.
               04 Lucas-Losses PIC 99.
           03 Sonic.
               04 Sonic-Name PIC X(5).
               04 Sonic-Wins PIC 99. 
               04 Sonic-Losses PIC 99.
           03 King-Dedede.
               04 King-Dedede-Name PIC X(11).
               04 King-Dedede-Wins PIC 99. 
               04 King-Dedede-Losses PIC 99. 
           03 Olimar.
               04 Olimar-Name PIC X(6).
               04 Olimar-Wins PIC 99. 
               04 Olimar-Losses PIC 99. 
           03 Lucario.
               04 Lucario-Name PIC X(7).
               04 Lucario-Wins PIC 99. 
               04 Lucario-Losses PIC 99. 
           03 ROB.
               04 ROB-Name PIC XXX.
               04 ROB-Wins PIC 99.
               04 ROB-Losses PIC 99. 
           03 Toon-Link.
               04 Toon-Link-Name PIC X(9).
               04 Toon-Link-Wins PIC 99. 
               04 Toon-Link-Losses PIC 99.
           03 Wolf.
               04 Wolf-Name PIC X(4).
               04 Wolf-Wins PIC 99.
               04 Wolf-Losses PIC 99.
           03 Villager. 
               04 Villager-Name PIC X(8).
               04 Villager-Wins PIC 99.
               04 Villager-Losses PIC 99.
           03 Megaman.
               04 Megaman-Name PIC X(7).
               04 Megaman-Wins PIC 99.
               04 Megaman-Losses PIC 99.
           03 Wii-Fit-Trainer.
               04 Wii-Fit-Trainer-Name PIC X(15).
               04 Wii-Fit-Trainer-Wins PIC 99.
               04 Wii-Fit-Trainer-Losses PIC 99.
           03 Rosalina.
               04 Rosalina-Name PIC X(8).
               04 Rosalina-Wins PIC 99.
               04 Rosalina-Losses PIC 99.
           03 Little-Mac.
               04 Little-Mac-Name PIC X(10).
               04 Little-Mac-Wins PIC 99.
               04 Little-Mac-Losses PIC 99.
           03 Greninja.
               04 Greninja-Name PIC X(8).
               04 Greninja-Wins PIC 99.
               04 Greninja-Losses PIC 99.
           03 Palutena.
               04 Palutena-Name PIC X(8).
               04 Palutena-Wins PIC 99.
               04 Palutena-Losses PIC 99.
           03 Pacman.
               04 Pacman-Name PIC X(6).
               04 Pacman-Wins PIC 99.
               04 Pacman-Losses PIC 99.
           03 Robin.
               04 Robin-Name PIC X(5).
               04 Robin-Wins PIC 99.
               04 Robin-Losses PIC 99.
           03 Shulk.
               04 Shulk-Name PIC X(5).
               04 Shulk-Wins PIC 99.
               04 Shulk-Losses PIC 99.
           03 Bowser-Jr.
               04 Bowser-Jr-Name PIC X(9).
               04 Bowser-Jr-Wins PIC 99.
               04 Bowser-Jr-Losses PIC 99.
           03 Duck-Hunt.
               04 Duck-Hunt-Name PIC X(9).
               04 Duck-Hunt-Wins PIC 99.
               04 Duck-Hunt-Losses PIC 99.
           03 Ryu.
               04 Ryu-Name PIC XXX.
               04 Ryu-Wins PIC 99.
               04 Ryu-Losses PIC 99.
           03 Ken.
               04 Ken-Name PIC XXX.
               04 Ken-Wins PIC 99.
               04 Ken-Losses PIC 99.
           03 Cloud.
               04 Cloud-Name PIC X(5).
               04 Cloud-Wins PIC 99.
               04 Cloud-Losses PIC 99.
           03 Corrin.
               04 Corrin-Name PIC X(6).
               04 Corrin-Wins PIC 99.
               04 Corrin-Losses PIC 99.
           03 Bayonetta.
               04 Bayonetta-Name PIC X(9).
               04 Bayonetta-Wins PIC 99.
               04 Bayonetta-Losses PIC 99.
           03 Inkling.
               04 Inkling-Name PIC X(7).
               04 Inkling-Wins PIC 99.
               04 Inkling-Losses PIC 99.
           03 Ridley.
               04 Ridley-Name PIC X(6).
               04 Ridley-Wins PIC 99.
               04 Ridley-Losses PIC 99.
           03 Simon.
               04 Simon-Name PIC X(5).
               04 Simon-Wins PIC 99.
               04 Simon-Losses PIC 99.
           03 Richter.
               04 Richter-Name PIC X(7).
               04 Richter-Wins PIC 99. 
               04 Richter-Losses PIC 99.
           03 King-K-Rool.
               04 King-K-Rool-Name PIC X(11).
               04 King-K-Rool-Wins PIC 99.
               04 King-K-Rool-Losses PIC 99.
           03 Isabelle.
               04 Isabelle-Name PIC X(8).
               04 Isabelle-Wins PIC 99.
               04 Isabelle-Losses PIC 99.
           03 Incineroar.
               04 Incineroar-Name PIC X(10).
               04 Incineroar-Wins PIC 99.
               04 Incineroar-Losses PIC 99.
           03 Piranha-Plant.
               04 Piranha-Plant-Name PIC X(13).
               04 Piranha-Plant-Wins PIC 99.
               04 Piranha-Plant-Losses PIC 99.
           03 Joker.
               04 Joker-Name PIC X(5).
               04 Joker-Wins PIC 99.
               04 Joker-Losses PIC 99.
           03 Hero.
               04 Hero-Name PIC X(4).
               04 Hero-Wins PIC 99.
               04 Hero-Losses PIC 99.
           03 Banjo-And-Kazooie.
               04 Banjo-And-Kazooie-Name PIC X(17).
               04 Banjo-And-Kazooie-Wins PIC 99.
               04 Banjo-And-Kazooie-Losses PIC 99.
           03 Terry.
               04 Terry-Name PIC X(5).
               04 Terry-Wins PIC 99.
               04 Terry-Losses PIC 99.
           03 Byleth.
               04 Byleth-Name PIC X(6).
               04 Byleth-Wins PIC 99.
               04 Byleth-Losses PIC 99.
           03 Minmin.
               04 Minmin-Name PIC X(6).
               04 Minmin-Wins PIC 99.
               04 Minmin-Losses PIC 99.
           03 Steve.
               04 Steve-Name PIC X(5).
               04 Steve-Wins PIC 99.
               04 Steve-Losses PIC 99.
           03 Sephiroth.
               04 Sephiroth-Name PIC X(9).
               04 Sephiroth-Wins PIC 99.
               04 Sephiroth-Losses PIC 99.
           03 Pyra-Mythra.
               04 Pyra-Mythra-Name PIC X(11).
               04 Pyra-Mythra-Wins PIC 99.
               04 Pyra-Mythra-Losses PIC 99.
           03 Kazuya.
               04 Kazuya-Name PIC X(6).
               04 Kazuya-Wins PIC 99.
               04 Kazyua-Losses PIC 99.
           03 Sora.
               04 Sora-Name PIC X(4).
               04 Sora-Wins PIC 99.
               04 Sora-Losses PIC 99.
           03 Mii-Brawler.
               04 Mii-Brawler-Name PIC X(11).
               04 Mii-Brawler-Wins PIC 99.
               04 Mii-Brawler-Losses PIC 99.
           03 Mii-Swordfighter.
               04 Mii-Swordfighter-Name PIC X(16).
               04 Mii-Swordfighter-Wins PIC 99.
               04 Mii-Swordfighter-Losses PIC 99.
           03 Mii-Gunner.
               04 Mii-Gunner-Name PIC X(10).
               04 Mii-Gunner-Wins PIC 99.
               04 Mii-Gunner-Losses PIC 99.

WORKING-STORAGE SECTION.
01 SetCountTable.
       02 CharacterSets OCCURS 86 TIMES.
           03 CharacterName PIC X(18).
           03 CharacterSetWins PIC 9(4).
           03 CharacterSetLosses PIC 9(4).

01 CharacterNum PIC 99.

01 SetAverage PIC 99.99
      
PROCEDURE DIVISION.
Begin.
   MOVE ZEROS TO SetCountTable
   MOVE "Mario" TO CharacterName(1)
   MOVE "Donkey Kong" TO CharacterName(2)
   MOVE "Link" TO CharacterName(3)
   MOVE "Samus" TO CharacterName(4)
   MOVE "Dark Samus" TO CharacterName(5)
   MOVE "Yoshi" TO CharacterName(6)
   Move "Kirby" TO CharacterName(7)
   Move "Fox" TO CharacterName(8)
   MOVE "Pikachu" TO CharacterName(9)
   Move "Luigi" TO CharacterName(10)
   Move "Ness" TO CharacterName(11)
   MOVE "Captain Falcon" TO CharacterName(12)
   Move "Jigglypuff" TO CharacterName(13)
   Move "Peach" TO CharacterName(14)
   MOVE "Daisy" TO CharacterName(15)
   MOVE "Bowser" TO CharacterName(16)
   MOVE "Ice Climbers" TO CharacterName(17)
   MOVE "Sheik" TO CharacterName(18)
   MOVE "Zelda" TO CharacterName(19)
   MOVE "Dr. Mario" TO CharacterName(20)
   MOVE "Pichu" TO CharacterName(21)
   MOVE "Falco" TO CharacterName(22)
   MOVE "Marth" TO CharacterName(23)
   MOVE "Lucina" TO CharacterName(24)
   MOVE "Young Link" TO CharacterName(25)
   MOVE "Ganondorf" TO CharacterName(26)
   MOVE "Mewtwo" TO CharacterName(27)
   MOVE "Roy" TO CharacterName(28)
   MOVE "Chrom" TO CharacterName(29)
   MOVE "Mr. Game and Watch" TO CharacterName(30)
   MOVE "Metaknight" TO CharacterName(31)
   MOVE "Pit" TO CharacterName(32)
   MOVE "Dark Pit" TO CharacterName(33)
   MOVE "Zero Suit Samus" TO CharacterName(34)
   MOVE "Wario" TO CharacterName(35)
   MOVE "Snake" TO CharacterName(36)
   MOVE "Ike" TO CharacterName(37)
   MOVE "Pokemon Trainer" TO CharacterName(38)
   MOVE "Diddy Kong" TO CharacterName(39)
   MOVE "Lucas" TO CharacterName(40)
   MOVE "Sonic" TO CharacterName(41)
   MOVE "King Dedede" TO CharacterName(42)
   MOVE "Olimar" TO CharacterName(43)
   Move "Lucario" TO CharacterName(44)
   MOVE "R.O.B." TO CharacterName(45)
   MOVE "Toon Link" TO CharacterName(46)
   MOVE "Wolf" TO CharacterName(47)
   MOVE "Villager" TO CharacterName(48)
   MOVE "Megaman" TO CharacterName(49)
   MOVE "Wii Fit Trainer" TO CharacterName(50)
   MOVE "Rosalina" TO CharacterName(51)
   MOVE "Little Mac" TO CharacterName(52)
   MOVE "Greninja" TO CharacterName(53)
   MOVE "Palutena" TO CharacterName(54)
   MOVE "Pacman" TO CharacterName(55)
   MOVE "Robin" TO CharacterName(56)
   MOVE "Shulk" TO CharacterName(57)
   MOVE "Bowser Jr." TO CharacterName(58)
   MOVE "Duck Hunt" TO CharacterName(59)
   MOVE "Ryu" TO CharacterName(60)
   Move "Ken" TO CharacterName(61)
   MOVE "Cloud" TO CharacterName(62)
   MOVE "Corrin" TO CharacterName(63)
   MOVE "Bayonetta" TO CharacterName(64)
   MOVE "Inkling" TO CharacterName(65)
   MOVE "Ridley" TO CharacterName(66)
   MOVE "Simon" TO CharacterName(67)
   MOVE "Richter" TO CharacterName(68)
   MOVE "King K. Rool" TO CharacterName(69)
   MOVE "Isabelle" TO CharacterName(70)
   MOVE "Incineroar" TO CharacterName(71)
   MOVE "Piranha Plant" TO CharacterName(72)
   MOVE "Joker" TO CharacterName(73)
   Move "Hero" TO CharacterName(74)
   MOVE "Banjo and Kazooie" TO CharacterName(75)
   MOVE "Terry" TO CharacterName(76)
   MOVE "Byleth" TO CharacterName(77)
   MOVE "Minmin" TO CharacterName(78)
   MOVE "Steve" TO CharacterName(79)
   MOVE "Sephiroth" TO CharacterName(80)
   MOVE "Pyra/Mythra" TO CharacterName(81)
   MOVE "Kazuya" TO CharacterName(82)
   MOVE "Sora" TO CharacterName(83)
   MOVE "Mii Brawler" TO CharacterName(84)
   MOVE "Mii Swordfighter" TO CharacterName(85)
   MOVE "Mii Gunner" TO CharacterName(86)



   OPEN INPUT PlayerFile
   READ PlayerFile
     AT END SET EndOfPlayerFile TO TRUE
   END-READ
   PERFORM UNTIL EndOfPlayerFile

       DISPLAY Megaman
   *> There's almost certainly a better way to do this, but with how I originally setup the FD, I'm not really sure how.
      ADD Mario-Wins TO CharacterSetWins(1)
      Add Mario-Losses TO CharacterSetLosses(1)

      ADD Donkey-Kong-Wins TO CharacterSetWins(2)
      ADD Donkey-Kong-Losses TO CharacterSetLosses(2)

      ADD Link-Wins TO CharacterSetWins(3)
      ADD Link-Losses TO CharacterSetLosses(3)

      ADD Samus-Wins TO CharacterSetWins(4)
      ADD Samus-Losses TO CharacterSetLosses(4)

      ADD Dark-Samus-Wins TO CharacterSetWins(5)
      ADD Dark-Samus-Losses TO CharacterSetLosses(5)

      ADD Yoshi-Wins TO CharacterSetWins(6)
      ADD Yoshi-Losses TO CharacterSetLosses(6)

      ADD Kirby-Wins TO CharacterSetWins(7)
      ADD Kirby-Losses TO CharacterSetLosses(7)

      ADD Fox-Wins TO CharacterSetWins(8)
      ADD Fox-Losses TO CharacterSetLosses(8)

      ADD Pikachu-Wins TO CharacterSetWins(9)
      ADD Pikachu-Losses TO CharacterSetLosses(9)

      ADD Luigi-Wins TO CharacterSetWins(10)
      ADD Luigi-Losses TO CharacterSetLosses(10)

      ADD Ness-Wins TO CharacterSetWins(11)
      ADD Ness-Losses TO CharacterSetLosses(11)

      ADD Captain-Falcon-Wins TO CharacterSetWins(12)
      ADD Captain-Falcon-Losses TO CharacterSetLosses(12)

      ADD Jigglypuff-Wins TO CharacterSetWins(13)
      ADD Jigglypuff-Losses TO CharacterSetLosses(13)

      ADD Peach-Wins TO CharacterSetWins(14)
      ADD Peach-Losses TO CharacterSetLosses(14)

      ADD Daisy-Wins TO CharacterSetWins(15)
      ADD Daisy-Losses TO CharacterSetLosses(15)

      ADD Bowser-Wins TO CharacterSetWins(16)
      ADD Bowser-Losses TO CharacterSetLosses(16)

      ADD Ice-Climbers-Wins TO CharacterSetWins(17)
      ADD Ice-Climbers-Losses TO CharacterSetLosses(17)

      ADD Sheik-Wins TO CharacterSetWins(18)
      ADD Sheik-Wins TO CharacterSetLosses(18)

      ADD Zelda-Wins TO CharacterSetWins(19)
      ADD Zelda-Losses TO CharacterSetLosses(19)

      ADD Dr-Mario-Wins TO CharacterSetWins(20)
      ADD Dr-Mario-Losses TO CharacterSetLosses(20)

      ADD Pichu-Wins TO CharacterSetWins(21)
      ADD Pichu-Losses TO CharacterSetLosses(21) 

      ADD Falco-Wins TO CharacterSetWins(22)
      ADD Falco-Losses TO CharacterSetLosses(22)

      ADD Marth-Wins TO CharacterSetWins(23)
      ADD Marth-Losses TO CharacterSetLosses(23)

      ADD Lucina-Wins TO CharacterSetWins(24)
      ADD Lucina-Losses TO CharacterSetLosses(24)

      ADD Young-Link-Wins TO CharacterSetWins(25)
      ADD Young-Link-Losses TO CharacterSetLosses(25)

      ADD Ganondorf-Wins TO CharacterSetWins(26)
      ADD Ganondorf-Losses TO CharacterSetLosses(26)

      ADD Mewtwo-Wins TO CharacterSetWins(27)
      ADD Mewtwo-Losses TO CharacterSetLosses(27)

      ADD Roy-Wins TO CharacterSetWins(28)
      ADD Roy-Losses TO CharacterSetLosses(28)

      ADD Chrom-Wins TO CharacterSetWins(29)
      ADD Chrom-Losses TO CharacterSetLosses(29)

      ADD Mr-Game-And-Watch-Wins TO CharacterSetWins(30)
      ADD Mr-Game-And-Watch-Losses TO CharacterSetLosses(30)

      ADD Metaknight-Wins TO CharacterSetWins(31)
      ADD Metaknight-Losses TO CharacterSetLosses(31)

      ADD Pit-Wins TO CharacterSetWins(32)
      ADD Pit-Losses TO CharacterSetLosses(32)

      ADD Dark-Pit-Wins TO CharacterSetWins(33)
      ADD Dark-Pit-Losses TO CharacterSetLosses(33)

      ADD Zero-Suit-Samus-Wins TO CharacterSetWins(34)
      ADD Zero-Suit-Samus-Losses TO CharacterSetLosses(34)

      ADD Wario-Wins TO CharacterSetWins(35)
      ADD Wario-Losses TO CharacterSetLosses(35)

      ADD Snake-Wins TO CharacterSetWins(36)
      ADD Snake-Losses TO CharacterSetLosses(36)

      ADD Ike-Wins TO CharacterSetWins(37)
      ADD Ike-Losses TO CharacterSetLosses(37)

      ADD Pokemon-Trainer-Wins TO CharacterSetWins(38)
      ADD Pokemon-Trainer-Losses TO CharacterSetLosses(38)

      ADD Diddy-Kong-Wins TO CharacterSetWins(39)
      ADD Diddy-Kong-Losses TO CharacterSetLosses(39)

      ADD Lucas-Wins TO CharacterSetWins(40)
      ADD Lucas-Losses TO CharacterSetLosses(40)

      ADD Sonic-Wins TO CharacterSetWins(41)
      ADD Sonic-Losses TO CharacterSetLosses(41)

      ADD King-Dedede-Wins TO CharacterSetWins(42)
      ADD King-Dedede-Losses TO CharacterSetLosses(42)

      ADD Olimar-Wins TO CharacterSetWins(43)
      ADD Olimar-Losses TO CharacterSetLosses(43)

      ADD Lucario-Wins TO CharacterSetWins(44)
      ADD Lucario-Losses TO CharacterSetLosses(44)

      ADD ROB-Wins TO CharacterSetWins(45)
      ADD ROB-Losses TO CharacterSetLosses(45)

      ADD Toon-Link-Wins TO CharacterSetWins(46)
      ADD Toon-Link-Losses TO CharacterSetLosses(46)

      ADD Wolf-Wins TO CharacterSetWins(47)
      ADD Wolf-Losses TO CharacterSetLosses(47)

      ADD Villager-Wins TO CharacterSetWins(48)
      ADD Villager-Wins TO CharacterSetLosses(48)

      ADD Megaman-Wins TO CharacterSetWins(49)
      ADD Megaman-Losses TO CharacterSetLosses(49)

      ADD Wii-Fit-Trainer-Wins TO CharacterSetWins(50)
      ADD Wii-Fit-Trainer-Losses TO CharacterSetLosses(50)

      ADD Rosalina-Wins TO CharacterSetWins(51)
      ADD Rosalina-Losses TO CharacterSetLosses(51)

      ADD Little-Mac-Wins TO CharacterSetWins(52)
      ADD Little-Mac-Losses TO CharacterSetLosses(52)

      ADD Greninja-Wins TO CharacterSetWins(53)
      ADD Greninja-Losses TO CharacterSetLosses(53)

      ADD Palutena-Wins TO CharacterSetWins(54)
      ADD Palutena-Losses TO CharacterSetLosses(54)

      ADD Pacman-Wins TO CharacterSetWins(55)
      ADD Pacman-Losses TO CharacterSetLosses(55)

      ADD Robin-Wins TO CharacterSetWins(56)
      ADD Robin-Losses TO CharacterSetLosses(56)

      ADD Shulk-Wins TO CharacterSetWins(57)
      ADD Shulk-Wins TO CharacterSetLosses(57)

      ADD Bowser-Jr-Wins TO CharacterSetWins(58)
      ADD Bowser-Jr-Losses TO CharacterSetLosses(58)

      ADD Duck-Hunt-Wins TO CharacterSetWins(59)
      ADD Duck-Hunt-Losses TO CharacterSetLosses(59)

      ADD Ryu-Wins TO CharacterSetWins(60)
      ADD Ryu-Losses TO CharacterSetLosses(60)

      ADD Ken-Wins TO CharacterSetWins(61)
      ADD Ken-Losses TO CharacterSetLosses(61)

      ADD Cloud-Wins TO CharacterSetWins(62)
      ADD Cloud-Losses TO CharacterSetLosses(62)

      ADD Corrin-Wins TO CharacterSetWins(63)
      ADD Corrin-Losses TO CharacterSetLosses(63)

      ADD Bayonetta-Wins TO CharacterSetWins(64)
      ADD Bayonetta-Losses TO CharacterSetLosses(64)

      ADD Inkling-Wins TO CharacterSetWins(65)
      ADD Inkling-Losses TO CharacterSetLosses(65)

      ADD Ridley-Wins TO CharacterSetWins(66)
      ADD Ridley-Losses TO CharacterSetLosses(66)

      ADD Simon-Wins TO CharacterSetWins(67)
      ADD Simon-Losses TO CharacterSetLosses(67)

      ADD Richter-Wins TO CharacterSetWins(68)
      ADD Richter-Losses TO CharacterSetLosses(68)

      ADD King-K-Rool-Wins TO CharacterSetWins(69)
      ADD King-K-Rool-Losses TO CharacterSetLosses(69)

      ADD Isabelle-Wins TO CharacterSetWins(70)
      ADD Isabelle-Losses TO CharacterSetLosses(70)

      ADD Incineroar-Wins TO CharacterSetWins(71)
      ADD Incineroar-Wins TO CharacterSetLosses(71)

      ADD Piranha-Plant-Wins TO CharacterSetWins(72)
      ADD Piranha-Plant-Losses TO CharacterSetLosses(72)

      ADD Joker-Wins TO CharacterSetWins(73)
      ADD Joker-Losses TO CharacterSetLosses(73)

      ADD Hero-Wins TO CharacterSetWins(74)
      ADD Hero-Losses TO CharacterSetLosses(74)

      ADD Banjo-And-Kazooie-Wins TO CharacterSetWins(75)
      ADD Banjo-And-Kazooie-Losses TO CharacterSetLosses(75)

      ADD Terry-Wins TO CharacterSetWins(76)
      ADD Terry-Wins TO CharacterSetLosses(76)

      ADD Byleth-Wins TO CharacterSetWins(77)
      ADD Byleth-Losses TO CharacterSetLosses(77)

      ADD Minmin-Wins TO CharacterSetWins(78)
      ADD Minmin-Losses TO CharacterSetLosses(78)

      ADD Steve-Wins TO CharacterSetWins(79)
      ADD Steve-Losses TO CharacterSetLosses(79)

      ADD Sephiroth-Wins TO CharacterSetWins(80)
      ADD Sephiroth-Losses TO CharacterSetLosses(80)

      ADD Pyra-Mythra-Wins TO CharacterSetWins(81)
      ADD Pyra-Mythra-Losses TO CharacterSetLosses(81)

      ADD Kazuya-Wins TO CharacterSetWins(82)
      ADD Kazyua-Losses TO CharacterSetLosses(82)

      ADD Sora-Wins TO CharacterSetWins(83)
      ADD Sora-Losses TO CharacterSetLosses(83)

      ADD Mii-Brawler-Wins TO CharacterSetWins(84)
      ADD Mii-Brawler-Losses TO CharacterSetLosses(84)

      ADD Mii-Swordfighter-Wins TO CharacterSetWins(85)
      ADD Mii-Swordfighter-Losses TO CharacterSetLosses(85)

      ADD Mii-Gunner-Wins TO CharacterSetWins(86)
      ADD Mii-Gunner-Losses TO CharacterSetLosses(86)

      READ PlayerFile
        AT END SET EndOfPlayerFile TO TRUE
      END-READ
   END-PERFORM

   PERFORM PrintResults
   

   CLOSE PlayerFile
   STOP RUN.

   
   PrintResults.
       Perform Varying CharacterNum FROM 1 BY 1
               UNTIL CharacterNum GREATER THAN 86
           COMPUTE SetAverage = (CharacterSetWins(CharacterNum) / (CharacterSetLosses(CharacterNum) + CharacterSetWins(CharacterNum))) * 100
           DISPLAY CharacterName(CharacterNum) ": " SetAverage
           END-PERFORM.