IDENTIFICATION DIVISION.
PROGRAM-ID. PuffMatchups.
AUTHOR. Bunker Rohrbaugh.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT PlayerFile ASSIGN TO "rank_1.txt"
       ORGANIZATION IS LINE SEQUENTIAL
DATA DIVISION.
FILE SECTION.
FD PlayerFile.
01 PlayerDetails.
       88 EndOfPlayerFile VALUE HIGH-VALUES. 
       02 PlayerName      PIC X(20).
       02 PlayerScore     PIC 9(4).99.
       02 MatchupRecords.
           03 Mario.
               04 Mario-Wins    PIC 99.
               04 Mario-Losses  PIC 99.
           03 Donkey-Kong.
               04 Donkey-Kong-Wins PIC 99.
               04 Donkey-Kong-Losses PIC 99.
           03 Link.
               04 Link-Wins PIC 99.
               04 Link-Losses PIC 99.
           03 Samus.
               04 Samus-Wins PIC 99.
               04 Samus-Losses PIC 99.
           03 Dark-Samus.
               04 Dark-Samus-Wins PIC 99.
               04 Dark-Samus-Losses PIC 99.
           03 Yoshi.
               04 Yoshi-Wins PIC 99.
               04 Yoshi-Losses PIC 99. 
           03 Kirby.
               04 Kirby-Wins PIC 99. 
               04 Kirby-Losses PIC 99. 
           03 Fox.
               04 Fox-Wins PIC 99. 
               04 Fox-Losses PIC 99.
           03 Pikachu.
               04 Pikachu-Wins PIC 99. 
               04 Pikachu-Losses PIC 99. 
           03 Luigi.
               04 Luigi-Wins PIC 99. 
               04 Luigi-Losses PIC 99.
           03 Ness.
               04 Ness-Wins PIC 99. 
               04 Ness-Losses PIC 99.
           03 Captain-Falcon.
               04 Captain-Falcon-Wins PIC 99. 
               04 Captain-Falcon-Losses PIC 99. 
           03 Jigglypuff.
               04 Jigglypuff-Wins PIC 99. 
               04 Jigglypuff-Losses PIC 99. 
           03 Peach.
               04 Peach-Wins PIC 99. 
               04 Peach-Losses PIC 99. 
           03 Daisy.
               04 Daisy-Wins PIC 99. 
               04 Daisy-Losses PIC 99. 
           03 Bowser.
               04 Bowser-Wins PIC 99. 
               04 Bowser-Losses PIC 99. 
           03 Ice-Climbers.
               04 Ice-Climbers-Wins PIC 99. 
               04 Ice-Climbers-Losses PIC 99. 
           03 Sheik.
               04 Sheik-Wins PIC 99. 
               04 Shiek-Losses PIC 99.
           03 Zelda.
               03 Zelda-Wins PIC 99. 
               03 Zelda-Losses PIC 99. 
           03 Dr-Mario.
               04 Dr-Mario-Wins PIC 99. 
               04 Dr-Mario-Losses PIC 99. 
           03 Pichu.
               04 Pichu-Wins PIC 99. 
               04 Pichu-Losses PIC 99.
           03 Falco.
               04 Falco-Wins PIC 99. 
               04 Falco-Losses PIC 99. 
           03 Lucina.
               04 Lucina-Wins PIC 99. 
               04 Lucina-Losses PIC 99. 
           03 Young-Link.
               04 Young-Link-Wins PIC 99. 
               04 Young-Link-Losses PIC 99. 
           03 Ganondorf.
               04 Ganondorf-Wins PIC 99.
               04 Ganondorf-Losses PIC 99. 
           03 Mewtwo.
               04 Mewtwo-Wins PIC 99. 
               04 Mewtwo-Losses PIC 99. 
           03 Roy.
               04 Roy-Wins PIC 99. 
               04 Roy-Losses PIC 99. 
           03 Chrom.
               04 Chrom-Wins PIC 99. 
               04 Chrom-Losses PIC 99. 
           03 Mr-Game-&-Watch.
               04 Mr-Game-&-Watch-Wins PIC 99.
               04 Mr-Game-&-Watch-Losses PIC 99.
           03 Metaknight.
               04 Metaknight-Wins PIC 99. 
               04 Metaknight-Losses PIC 99. 
           03 Pit.
               04 Pit-Wins PIC 99. 
               04 Pit-Losses PIC 99. 
           03 Dark-Pit.
               04 Dark-Pit-Wins PIC 99. 
               04 Dark-Pit-Losses PIC 99. 
           03 Zero-Suit-Samus.
               04 Zero-Suit-Samus-Wins PIC 99. 
               04 Zero-Suit-Samus-Losses PIC 99. 
           03 Wario.
               04 Wario-Wins PIC 99. 
               04 Wario-Losses PIC 99. 
           03 Snake.
               04 Snake-Wins PIC 99. 
               04 Snake-Losses PIC 99. 
           03 Ike.
               04 Ike-Wins PIC 99. 
               04 Ike-Losses PIC 99. 
           03 Pokemon-Trainer.
               04 Pokemon-Trainer-Wins PIC 99. 
               04 Pokemon-Trainer-Losses PIC 99. 
           03 Diddy-Kong.
               04 Diddy-Kong-Wins PIC 99. 
               04 Diddy-Kong-Losses PIC 99.
           03 Lucas.
               04 Lucas-Wins PIC 99.
               04 Lucas-Losses PIC 99.
           03 Sonic.
               04 Sonic-Wins PIC 99. 
               04 Sonic-Losses PIC 99.
           03 King-Dedede.
               04 King-Dedede-Wins PIC 99. 
               04 King-Dedede-Losses PIC 99. 
           03 Olimar.
               04 Olimar-Wins PIC 99. 
               04 Olimar-Losses PIC 99. 
           03 Lucario.
               04 Lucario-Wins PIC 99. 
               04 Lucario-Losses PIC 99. 
           03 ROB.
               04 ROB-Wins PIC 99.
               04 ROB-Losses PIC 99. 
           03 Toon-Link.
               04 Toon-Link-Wins PIC 99. 
               04 Toon-Link-Losses PIC 99.
           03 Wolf.
               04 Wolf-Wins PIC 99.
               04 Wolf-Losses PIC 99.
           03 Villager. 
               04 Villager-Wins PIC 99.
               04 Villager-Losses PIC 99.
           03 Megaman.
               04 Megaman-Wins PIC 99.
               04 Megaman-Losses PIC 99.
           03 Wii-Fit-Trainer.
               04 Wii-Fit-Trainer-Wins PIC 99.
               04 Wii-Fit-Trainer-Losses PIC 99.
           03 Rosalina.
               04 Rosalina-Wins PIC 99.
               04 Rosalina-Losses PIC 99.
           03 Little-Mac.
               04 Little-Mac-Wins PIC 99.
               04 Little-Mac-Losses PIC 99.
           03 Greninja.
               04 Greninja-Wins PIC 99.
               04 Greninja-Losses PIC 99.
           03 Palutena.
               04 Palutena-Wins PIC 99.
               04 Palutena-Losses PIC 99.
           03 Pacman.
               04 Pacman-Wins PIC 99.
               04 Pacman-Losses PIC 99.
           03 Robin.
               04 Robin-Wins PIC 99.
               04 Robin-Losses PIC 99.
           03 Shulk.
               04 Shulk-Wins PIC 99.
               04 Shulk-Losses PIC 99.
           03 Bowser-Jr.
               04 Bowser-Jr-Wins PIC 99.
               04 Bowser-Jr-Losses PIC 99.
           03 Duck-Hunt.
               04 Duck-Hunt-Wins PIC 99.
               04 Duck-Hunt-Losses PIC 99.
           03 Ryu.
               04 Ryu-Wins PIC 99.
               04 Ryu-Losses PIC 99.
           03 Ken.
               04 Ken-Wins PIC 99.
               04 Ken-Losses PIC 99.
           03 Cloud.
               04 Cloud-Wins PIC 99.
               04 Cloud-Losses PIC 99.
           03 Corrin.
               04 Corrin-Wins PIC 99.
               04 Corrin-Losses PIC 99.
           03 Bayonetta.
               04 Bayonetta-Wins PIC 99.
               04 Bayonetta-Losses PIC 99.
           03 Inkling.
               04 Inkling-Wins PIC 99.
               04 Inkling-Losses PIC 99.
           03 Ridley.
               04 Ridley-Wins PIC 99.
               04 Ridley-Losses PIC 99.
           03 Simon.
               04 Simon-Wins PIC 99.
               04 Simon-Losses PIC 99.
           03 Richter.
               04 Richter-Wins PIC 99. 
               04 Richter-Losses PIC 99.
           03 King-Krool.
               04 King-Krool-Wins PIC 99.
               04 King-Krool-Losses PIC 99.
           03 Isabelle.
               04 Isabelle-Wins PIC 99.
               04 Isabelle-Losses PIC 99.
           03 Incineroar.
               04 Incineroar-Wins PIC 99.
               04 Incineroar-Losses PIC 99.
           03 Piranha-Plant.
               04 Piranha-Plant-Wins PIC 99.
               04 Piranha-Plant-Losses PIC 99.
           03 Joker.
               04 Joker-Wins PIC 99.
               04 Joker-Losses PIC 99.
           03 Hero.
               04 Hero-Wins PIC 99.
               04 Hero-Losses PIC 99.
           03 Banjo-&-Kazooie.
               04 Banjo-&-Kazooie-Wins PIC 99.
               04 Banjo-&-Kazooie-Losses PIC 99.
           03 Terry.
               04 Terry-Wins PIC 99.
               04 Terry-Losses PIC 99.
           03 Byleth.
               04 Byleth-Wins PIC 99.
               04 Byleth-Losses PIC 99.
           03 Minmin.
               04 Minmin-Wins PIC 99.
               04 Minmin-Losses PIC 99.
           03 Steve.
               04 Steve-Wins PIC 99.
               04 Steve-Losses PIC 99.
           03 Sephiroth.
               04 Sephiroth-Wins PIC 99.
               04 Sephiroth-Losses PIC 99.
           03 Pyra-Mythra.
               04 Pyra-Mythra-Wins PIC 99.
               04 Pyra-Mythra-Wins PIC 99.
           03 Kazuya.
               04 Kazuya-Wins PIC 99.
               04 Kazyua-Losses PIC 99.
           03 Sora.
               04 Sora-Wins PIC 99.
               04 Sora-Losses PIC 99.
           03 Mii-Brawler.
               04 Mii-Brawler-Wins PIC 99.
               04 Mii-Brawler-Losses PIC 99.
           03 Mii-Swordfighter.
               04 Mii-Swordfighter-Wins PIC 99.
               04 Mii-Swordfighter-Losses PIC 99.
           03 Mii-Gunner.
               04 Mii-Gunner-Wins PIC 99.
               04 Mii-Gunner-Losses PIC 99.
           
       
