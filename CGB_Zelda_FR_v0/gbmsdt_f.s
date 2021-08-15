        KANJI
  ;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  ;%                                               %
  ;%      GAME BOY                                 %
  ;%                                               %
  ;%                                               %
  ;%         ＊   LEGEND OF SHIBAHARA  ＊          %
  ;%                                               %
  ;%                                               %
  ;%      MESSAGE DATA  おフランス                 %
  ;%                                               %
  ;%                                               %
  ;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;  WED ：  End of message. 
;
;  WE2 ：  End of Asking.
;
;  Each line must have 16 characters except for the last one (fill with spaces)
;
;  The apostrophe (') within a message should be represented as a caret (^)
;  Player name= #####
;**************************************************************

;===============================================================
BANK14  GROUP   $14
;;;;;;;;;        ORG     $5C00
;===============================================================

MS00; Tarin, Marin's father
;
;                0123456789ABCDEF
	DB	'H* mon gars,    '
	DB	'attends un peu! '
	DB	'J^ai qu<qu^     '
	DB	'chose % te dire!'
        DB      WED
;
MS01; Marin
;
;                0123456789ABCDEF
	DB	'Ah! Enfin...    '
	DB	'J^ai cru que tu '
	DB	'n^allais jamais '
	DB	'te r*veiller.   '
	DB	'Tu devais       '
	DB	'cauchemarder.   '
	DB	'Quoi? Zelda??   '
	DB	'Tu dois <tre    '
	DB	'encore patraque!'
	DB	'Je suis Marine! '
	DB	'Tu es sur l^/le '
	DB	'Cocolint!'
        DB      WED
;
MS02; Marin
;
;                0123456789ABCDEF
	DB	'Suis la route   '
	DB	'du Sud, vers    '
	DB	'la plage l% o=  '
	DB	'je t^ai trouv*. '
	DB	'Depuis que tu   '
	DB	'as *chou* ici,  '
	DB	'des monstres    '
	DB	'terribles r]dent'
	DB	'dans le coin.   '
	DB	'Sois prudent...'
        DB      WED
;
MS03; Marin (next to weathercock, singing)
;
;                0123456789ABCDEF
	DB	'Bonjour #####!  '
	DB	'Tarkin est parti'
	DB	'dans la for<t   '
	DB	'chercher des    '
	DB	'champignons.    '
	DB	'Moi,je pr*f+re  '
	DB	'chanter.        '
	DB	'Ecoute ceci:    '
	DB	'c^est la Ballade'
	DB	'du Poisson-R<ve.'
        DB      WED
;
MS04; Marin (when you have the ocarina)
;
;                0123456789ABCDEF
	DB	'Mais c^est un   '
	DB	'Ocarina         '
	DB	'que tu as l%!   '
	DB	'Veux-tu en      '
	DB	'jouer pendant   '
	DB	'que je chante?'
        DB      WED
;
MS05; Marin (after you learn her song)
;
;                0123456789ABCDEF
	DB	'J^adore chanter!'
	DB	'Et toi #####,   '
	DB	'qu^est-ce que   '
	DB	'tu aimes?'
        DB      WED
;
MS06; Marin (after you meet Tarin)
;
;                0123456789ABCDEF
	DB	'#####, Tarkin   '
	DB	'fait la sieste  '
	DB	'% la maison.    '
	DB	'Je pr*f+re      '
	DB	'chanter. Oui!   '
	DB	'Pourquoi pas    '
	DB	'la Ballade      '
	DB	'du Poisson-R<ve?'
        DB      WED
;
; VARIOUS OCCASIONS
;
MS07;  Boss door
;
;                0123456789ABCDEF
	DB	'Evidemment!     '
	DB	'C^est ferm*!    '
	DB	'Tu dois trouver '
	DB	'la cl* du Boss.'
        DB      WED
;
MS08; Power Chip (Piece of Power)
;
;                0123456789ABCDEF
	DB	'Un Fragment     '
	DB	'de Puissance!!! '
	DB	'Tu peux sentir  '
	DB	'l^*nergie       '
	DB	'envahir         '
	DB	'ton corps!'
        DB      WED
;
; RACCOON TARIN EVENT
;
MS09; Witch
;
;                0123456789ABCDEF
	DB	'Tu m^apportes   '
	DB	'le Champignon   '
	DB	'qui endort. Bon!'
	DB	'Dare dare!      '
	DB	'Je te concocte  '
	DB	'une mixture!!'
        DB      WED
;
MS0A; Tarin (after becoming human again)
;
;                0123456789ABCDEF
	DB	'J^ai croqu* dans'
	DB	'un champignon.  '
	DB	'Et j^suis devenu'
	DB	'un raton-laveur!'
	DB	'Apr+s, j^sais   '
	DB	'plus trop,      '
	DB	'mais c^*tait    '
	DB	'trop rigolo!!'
        DB      WED
;
MS0B; Tarin (talk to again)
;
;                0123456789ABCDEF
	DB	'Oh l% l%!! J^me '
	DB	'sens tout dr]le!'
	DB	'Faut m^reposer  '
	DB	'avant d^rentrer.'
        DB      WED
;
MS0C; Witch (without mushroom)
;
;                0123456789ABCDEF
	DB	'C^est une perte '
	DB	'de temps!       '
	DB	'Pour ma poudre, '
	DB	'il me faut      '
	DB	'le Champignon   '
	DB	'de la for<t.'
        DB      WED
;
MS0D; Raccoon
;                0123456789ABCDEF
;
	DB	'J^suis un raton-'
	DB	'laveur espi+gle.'
	DB	'Et j^aime pas   '
	DB	'du tout c^qu^est'
	DB	'poudreux...'
        DB      WED
;
MS0E; When you use the mushroom as an item
;
;                0123456789ABCDEF
	DB	'Si tu brandis   '
	DB	'le Champignon,  '
	DB	'un ar]me subtil '
	DB	'se r*pandra!'
        DB      WED
;
MS0F; When you first find the mushroom
;
;                0123456789ABCDEF
	DB	'Tu as trouv*    '
	DB	'le Champignon!  '
	DB	'Un ar]me subtil '
	DB	'exalte ton sens '
	DB	'de l^odorat.'
        DB      WED
;
MS10; Tarin talking in his sleep
;
;                0123456789ABCDEF
	DB	'ZZZ...ZZZ...    '
	DB	'Qu<qu^ chose    '
	DB	'que t^as pas    '
	DB	'compris?        '
	DB	'T*l*phone %     '
	DB	'P*p* le Ramollo.'
	DB	'ZZZ...ZZZ...'
        DB      WED
;
MS11;  Tarin when he comes back from woods
;
;                0123456789ABCDEF
	DB	'Je suis *reint*!'
	DB	'J^vais faire    '
	DB	'un p^tit somme. '
	DB	'ZZZ...ZZZ...'
        DB      WED
;
MS12;  Talking Tree
;
;                0123456789ABCDEF
	DB	'Quelle surprise!'
	DB	'Ecoute-moi bien,'
	DB	'car je vais te  '
	DB	'dire un secret: '
	DB	'avec ton *p*e,  '
	DB	'frappe les murs '
	DB	'des labyrinthes.'
	DB	'Si le son est   '
	DB	'creux, d*truis  '
	DB	'ce mur avec     '
	DB	'une Bombe!'
        DB      WED
;
MS13;  When you learn Marin's song
;
;                0123456789ABCDEF
	DB	'Tu as appris    '
	DB	'la Ballade      '
	DB	'du Poisson-R<ve.'
	DB	'La jolie chanson'
	DB	'de Marine est   '
	DB	'grav*e en toi.'
        DB      WED
;
MS14;  If MS16 = YES
;
	DB	'Tu fredonneras  '
	DB	'cette chanson   '
	DB	'de temps % autre'
	DB	'pour ne pas     '
	DB	'l^oublier!'
        DB      WED
;
MS15;  If MS16 = NO
;
	DB	'Je t^en prie!   '
	DB	'Apprends-la.    '
	DB	'C^est ma chanson'
	DB	'pr*f*r*e!!'
        DB      WED
;
MS16;  
;
	DB	'Alors,comment   '
	DB	'tu la trouves?  '
	DB	'N^est-elle pas  '
	DB	'*mouvante?      '
	DB	'Sauras-tu t^en  '
	DB	'souvenir?       '
        DB      '    Oui  Non'
        DB      WE2
;
MS17;  Tracy
;
	DB	'Je suis Monique '
	DB	'la Lunatique.   '
	DB	'Je vends des    '
	DB	'rem+des secrets '
	DB	'qui te feront   '
	DB	'p*ter la forme!'
        DB      WED
;
MS18;  When you don't have medicine -1
;
	DB	'Mon secret co\te'
	DB	'28 rubis.       '
	DB	'Tu es int*ress*?'
        DB      '    Oui  Non'
        DB      WE2
;
MS19;  When you don't have medicine -2
;
	DB	'Mon secret co\te'
	DB	'42 rubis.       '
	DB	'Tu es int*ress*?'
        DB      '    Oui  Non'
        DB      WE2
;
MS1A;  When you buy the medicine
;
	DB	'Merci bien!     '
	DB	'Voil%, je viens '
	DB	'de l^appliquer  '
	DB	'sur toi!        '
	DB	'Ce rem+de agira '
	DB	'si tu perds     '
	DB	'tes Coeurs!     '
	DB	'Reviens quand   '
	DB	'tu veux!!'
        DB      WED
;
MS1B;  When you don't have enough money
;
	DB	'Tu plaisantes?? '
	DB	'Reviens plut]t  '
	DB	'quand tu auras  '
	DB	'de l^argent...'
        DB      WED
;
MS1C;  When you already have medicine
;
        DB      '... ... ... ... '
	DB	'Non, je ne t^en '
	DB	'vendrai pas!!'
        DB      WED
;
MS1D;  When you don't buy the medicine
;
	DB	'Fl\te, zut!!    '
	DB	'Je voulais juste'
	DB	'te rendre plus  '
	DB	'puissant!       '
	DB	'Tu n^es qu^une  '
	DB	'poule mouill*e!'
        DB      WED
;
MS1E;  When you don't have the medicine -3
;
	DB	'Tu es un amour! '
	DB	'Pour la peine,  '
	DB	'tu ne paieras   '
	DB	'que 7 rubis!'
        DB      WED
;
MS1F;  When Marin comes with you
;
	DB	'Marine          '
	DB	'se joint % toi! '
	DB	'C^est la chance '
	DB	'da ta vie!?'
        DB      WED
;
MS20;  Fox
;
        DB      'GRRR...'
        DB      WED
;
MS21;  Raccoon Tarin, before entering loop in forest
;
	DB	'H* h*! Tu vas   '
	DB	'te perdre dans  '
	DB	'la For<t. Hi hi!'
	DB	'Bien fait!!'
        DB      WED
;
MS22;  Dog's bark
;
	DB	'Wouf Wouf!      '
	DB	'Wouf Wouf!'
        DB      WED
;
MS23;  Small Dog
;
	DB	'Ouaf Ouaf!      '
	DB	'Ouaf Ouaf!'
        DB      WED
;
MS24;   Fairy Spring
;
	DB	'Je vais panser  '
	DB	'tes blessures   '
	DB	'et remonter     '
	DB	'ton *nergie.    '
	DB	'Ferme les yeux.'
        DB      WED
;
MS25;  Crying Bird (Medium Boss in Level 7)
;
	DB	'Sale type! Tu as'
	DB	'battu mes gars! '
	DB	'Tu vas le payer!'
	DB	'Je saurai te    '
	DB	'retrouver!!'
        DB      WED
;
MS26;  Bird's story
;
	DB	'Alors petit?    '
	DB	'Tu cherches     '
	DB	'la bagarre?     '
	DB	'Allez les gars, '
	DB	'd*barrassez-moi '
	DB	'de cet avorton!'
        DB      WED
;
MS27;  PAPAHL
;
	DB	'Je suis Papounet'
	DB	'le papa des     '
	DB	'quadrupl*s.     '
	DB	'Plus tard, je me'
	DB	'perdrai dans les'
	DB	'montagnes.      '
	DB	'Tu viendras     '
	DB	'm^aider, hein?'
        DB      WED
;
MS28;  Marin Option: Breaking pots
;
	DB	'Oui, oui!!      '
	DB	'Casse-les!      '
	DB	'Casse tout!     '
        DB      '... ... ... ... '
	DB	'Quoi? Il y a    '
	DB	'un probl+me?'
        DB      WED
;
MS29;  When you try to buy something you already have
;
	DB	'Mama mia!       '
	DB	'Tu n^es pas     '
	DB	'encore r]d*...  '
	DB	'Pourquoi acheter'
	DB	'des choses      '
	DB	'inutiles?'
        DB      WED
;
MS2A;  Get a heart in UFO Catcher
;
	DB	'Tu as gagn*     '
	DB	'un Coeur!       '
	DB	'Toute ton       '
	DB	'*nergie         '
	DB	'est restaur*e!'
        DB      WED
;
MS2B;  Not used
MS2C;  Tool Shop -- Bow and Arrow set
;
	DB	'Arc & Fl+ches : '
	DB	'   980 rubis!   '
        DB      '    Oui  Non'
        DB      WE2
;
MS2D;  10 Arrows
;
;                0123456789ABCDEF
        DB      '   10 Fl+ches:  '
        DB      '   10 rubis!    '
        DB      '    Oui  Non'
        DB      WE2
;
MS2E;  Nishiyama when you don't have anything to buy
;
;                0123456789ABCDEF
	DB	'Bienvenue!      '
	DB	'Apporte ici     '
	DB	'ce que tu       '
	DB	'veux acheter.'
        DB      WED
;
MS2F;  When you get caught shoplifting
;
;                0123456789ABCDEF
	DB	'H*! Une minute! '
	DB	'Tu dois payer!'
        DB      WED
;
MS30;  Shovel
;
;                0123456789ABCDEF
	DB	'Pelle de qualit*'
	DB	'   200 rubis!   '
	DB	'C^est pas donn*!'
        DB      '    Oui  Non'
        DB      WE2
;
MS31;  3 Hearts
;
;                0123456789ABCDEF
	DB	' Trois Coeurs   '
	DB	'   10 rubis!    '
        DB      '    Oui  Non'
        DB      WE2
;
MS32;   Shield
;
        DB      'Bouclier        '
	DB	'personnalis*.   '
        DB      '    20 rubis!   '
        DB      '    Oui  Non'
        DB      WE2
;
MS33;  10 Bombs
;
        DB      '    10 Bombes   '
        DB      '    10 rubis!   '
        DB      '    Oui  Non'
        DB      WE2
;
MS34;  When you don't have enough money
;
	DB	'D*sol* petit!   '
	DB	'Tu n^as pas     '
	DB	'assez de rubis. '
	DB	'Reviens donc    '
	DB	'plus tard.'
        DB      WED
;
MS35;  Thank you
;
	DB	'Merci beaucoup! '
	DB	'Et au plaisir!'
        DB      WED
;
MS36;  When you shoplift
;
	DB	'Tu as pu sortir '
	DB	'sans payer?     '
	DB	'Tu n^as pas     '
	DB	'honte, voyou?!'
        DB      WED
;
MS37; Not used
MS38;  Visit the store after stealing
;
	DB	'Je t^avais bien '
	DB	'dit de me payer.'
	DB	'Tu vas le       '
	DB	'regretter...'
        DB      WED
;
MS39;  The gate of Kanalet Castle is opened!  
;
	DB	'La porte semble '
	DB	'<tre ouverte.   '
	DB	'Tu pourras donc '
	DB	'sortir sans     '
	DB	'aucun probl+me.'
        DB      WED
;
MS3A; Not used
MS3B; Trendy Game
;
	db      'JEU DE HASARD   '
	DB	'La partie : 10r '
        DB      '    Oui  Non'
        DB      WE2
;
MS3C;  Trendy game sales clerk
;
	DB	'A & B d*placent '
	DB	'la grue. Apr+s, '
	DB	'tu dois calculer'
	DB	'ton timing...   '
	DB	'Dirige-toi vers '
	DB	'les boutons.    '
	DB	'Bonne chance!'
        DB      WED
;
MS3D;  Shield in Trendy game
;
	DB	'Tu as gagn*     '
	DB	'le Bouclier!    '
	DB	'Tu peux m<me y  '
	DB	'graver ton nom!'
        DB      WED
;
MS3E;  Try again?
;
	DB	'Un autre essai? '
        DB      '    Oui  Non'
        DB      WE2
;
MS3F;  When you choose yes to 3E
;
        DB      'Bonne chance!'
        DB      WED
;
MS40;  When you get all prizes
;
	DB	'@a suffit pour  '
	DB	'aujourd^hui...  '
	DB	'Tu reviendras   '
	DB	'un autre jour!'
        DB      WED
;
MS41;  When you get magic powder
;
        DB      'Tu as gagn* la  '
        DB      'Poudre Magique! '
        DB      'Tu peux la      '
        DB      'saupoudrer sur  '
        DB      'plein de trucs!'
        DB      WED
;
MS42;  When you get 30 Rupees
;
        DB      'Tu as gagn*     '
        DB      '30 rubis!       '
        DB      'Tu peux jouer   '
        DB      'encore 3 fois!'
        DB      WED
;
MS43;  Ghost grave
;
        DB      'Atchoum...      '
        DB      'Retire donc     '
        DB      'cette poudre... '
        DB      'Sinon, je vais  '
        DB      'te maudire...   '
        DB      'Atchoum...      '
        DB      WED
;
MS44;   Yoshi Doll!
;
        DB      'Tu as gagn*     '
        DB      'un Yoshi!       '
        DB      'On le voit      '
        DB      'dans tous les   '
        DB      'jeux, celui-l%!'
        DB      WED
;
MS45;  Fishing Pond
;
        DB      'Une partie de   '
        DB      'p<che, mon gars?'
        DB      '@a ne te co\tera'
        DB      'que 10 rubis... '
        DB      '    Oui  Non'
        DB      WE2
;
MS46;  MS46 = NO
;
	DB	'Vis ta vie!     '
	DB	'Sois un peu     '
	DB	'plus motiv*!'
        DB      WED
;
MS47;  MS46 = YES
;
		;01234  5   6789  a   bcdef
	DB	'Avec ',XL,' et ',XR,'     '
		;012   3   456789abcdef
	DB	'de ',MK8,', *value    '
	DB	'la distance     '
	db	'de ton lancer.  '
	DB	'D+s que le      '
	DB	'poisson est     '
	DB	'ferr*, presse   '
	DB	'vite A',$EF,'B pour   ' ; $EF : ( / )
	DB	'le remonter!'
        DB      WED
;
MS48;  Try again
;
	DB	'Un autre essai? '
        DB      '    Oui  Non'
        DB      WE2
;
MS49;  When the line breaks
;
	DB	'Oh non! Le fil  '
	DB	's^est cass*!    '
	DB	'Un autre essai? '
        DB      '    Oui  Non'
        DB      WE2
;
MS4A;  When you catch a big one
;
	DB	'Il est *norme!  '
	DB	'En r*compense,  '
	DB	'je t^offre      '
	DB	'20 rubis.       '
	DB	'Un autre essai? '
        DB      '    Oui  Non'
        DB      WE2
;
MS4B;  When you've caught all the fish
;
	DB	'Il n^y a plus de'
	DB	'poissons!       '
	DB	'Veux-tu essayer '
	DB	'la p<che en mer?'
        DB      '    Oui  Non'
        DB      WE2
;
MS4C;  When MS4B = YES
;       
	DB	'C^*tait pour    '
	DB	'rigoler...      '
	DB	'Allez, salut!'
        DB      WED
;
MS4D;  When you catch a small fish
;
	DB	'Ce n^est que    '
	DB	'du fretin.      '
	DB	'Tu n^auras que  '
	DB	'5 rubis.        '
	DB	'Tu devrais      '
	DB	'encore essayer! '
        DB      '    Oui  Non'
        DB      WE2
;
MS4E;  When you don't have enough money
;
	DB	'Tu n^as pas     '
	DB	'assez de rubis. '
	DB	'Reviens quand   '
	DB	'tu seras plus   '
	DB	'fortun*,        '
	DB	'petit gars!'
        DB      WED
;
MS4F;  When you get a piece of heart
	DB	'Un quart de     '
	DB	'coeur!          '
	DB	'Appuyez sur     '
	DB	'SELECT sur le   '
	DB	'sous-*cran.     '
        DB      WED

;;;12/08	DB	'Vous obtenez un '
;;;12/08	DB	'quart de coeur! '
;;;12/08	DB	'Appuyez sur     '
;;;12/08	DB	'SELECT sur le   '
;;;12/08	DB	'sous-*cran.     '
;;;12/08        DB      WED

;;;11/20;
;;;11/20	DB	'Un Fragment     '
;;;11/20	DB	'de Coeur!!!'
;;;11/20        DB      WED
;
MS50;  When you collect 4 pieces of heart
;
	DB	'Tu as collect*  '
	DB	'4 Fragments     '
	DB	'de Coeur. Tu as '
	DB	'maintenant un   '
	DB	'Coeur complet!'
        DB      WED
;
MS51; Pure Ice Block in Dungeon 8
;
	DB	'Brrrr... Ce sont'
	DB	'des blocs       '
	DB	'de glace!!      '
	DB	'Je suis gel*!'
        DB      WED
;
MS52;  Bottle Imp
;
	DB	'NANANA!!! Tu ne '
	DB	'm^auras pas tant'
	DB	'que j^aurai     '
	DB	'ma jarre!'
        DB      WED
;
MS53;  When you break his bottle
;
	DB	'Quoi? Tu as os*?'
	DB	'Tu as cass* ma  '
	DB	'jarre. Alors l%!'
	DB	'Je suis furax!!'
        DB      WED
;
MS54;  TARIN's Second message
;
	DB	'Salut #####!    '
	DB	'T^es r*veill*...'
	DB	'J^suis Tarkin...'
	DB	'Tu t^sens mieux?'
	DB	'Quoi? Comment   '
	DB	'j^sais ton nom? '
	DB	'Ben, c^est grav*'
	DB	'sur le Bouclier!'
	DB	'Ben, d^ailleurs '
	DB	'il est % toi!   '
	DB	'J^te l^donne!'
        DB      WED
;
MS55;   Tarin after you get shield
;
	DB	'Au fait! Y^a    '
	DB	'un autre bidule '
	DB	'qui est rest*   '
	DB	'sur la plage.   '
	DB	'Si tu y vas,    '
	DB	'fais attention  '
	DB	'aux monstres!   '
	DB	'Car, depuis que '
	DB	't^es ici #####, '
	DB	'des monstres,   '
	DB	'y^en a partout!'
        DB      WED
;
;       ********************
;       *** MAP MESSAGES ***
;       ********************
MS56
;                0123456789ABCDEF
	DB	'    NIVEAU 1    '
	DB	' CAVE FLAGELLO'
        DB      WED
;
MS57
;                0123456789ABCDEF
	DB	'    NIVEAU 2    '
	DB	'GROTTE DU GENIE'
        DB      WED
;
MS58
;                0123456789ABCDEF
	DB	'    NIVEAU 3    '
	DB	' CAVE AUX CLES'
        DB      WED
;
MS59
;                0123456789ABCDEF
	DB	'    NIVEAU 4    '
	DB	'ABIME DU POISSON'
        DB      WED
;
MS5A
;                0123456789ABCDEF
	DB	'    NIVEAU 5    '
	DB	'  POISSON-CHAT'
        DB      WED
;
MS5B
;                0123456789ABCDEF
	DB	'    NIVEAU 6    '
	DB	'TEMPLE DU MASQUE'
        DB      WED
;
MS5C
;                0123456789ABCDEF
	DB	'    NIVEAU 7    '
	DB	'TOUR DU VAUTOUR'
        DB      WED
;
MS5D
;                0123456789ABCDEF
	DB	'    NIVEAU 8    '
	DB	'ROC DE LA TORTUE'
        DB      WED
;
MS5E
;                0123456789ABCDEF
	DB	'   OEUF SACR',$CE
        DB      WED
;
MS5F; not used
MS60
;                0123456789ABCDEF
	DB	' Pont suspendu'
        DB      WED
;
MS61
;                0123456789ABCDEF
	DB	'      Chez      '
	DB	'  AlligoBanane'
        DB      WED
;
MS62
;                0123456789ABCDEF
	DB	'     Champ      '
	DB	'   des Pi+ges'
        DB      WED
;
MS63
;                0123456789ABCDEF
	DB	'     Maison     '
	DB	'   de la Baie'
        DB      WED
;
MS64
;                0123456789ABCDEF
	DB	' Jeu de hasard'
        DB      WED
;
MS65
;                0123456789ABCDEF
	DB	'Bazar du Centre'
        DB      WED
;
MS66
;                0123456789ABCDEF
	DB	'  Chez Marine   '
	DB	'   et Tarkin'
        DB      WED
;
MS67
;                0123456789ABCDEF
	DB	'     Hutte      '
	DB	' de la Sorci+re'
        DB      WED
;
MS68
;                0123456789ABCDEF
	DB	' Dunes de Yarna '
        DB      WED
;
MS69
;                0123456789ABCDEF
	DB	'  La Prairie'
        DB      WED
;
MS6A
;                0123456789ABCDEF
	DB	'For<t Enchant*e'
        DB      WED
;
MS6B
;                0123456789ABCDEF
	DB	' Mt Tamaranch'
        DB      WED
;
MS6C
;                0123456789ABCDEF
	DB	'   Cordill+re   '
	DB	'    Tartare'
        DB      WED
;
MS6D
;                0123456789ABCDEF
	DB	'     D*dale     '
	DB	'  des Panneaux'
        DB      WED
;
MS6E
;                0123456789ABCDEF
	DB	'     Village    '
	DB	'  des Mouettes'
        DB      WED
;
MS6F
;                0123456789ABCDEF
	DB	'     Village    '
	DB	'  des Animaux'
        DB      WED
;
MS70
;                0123456789ABCDEF
	DB	'   Cimeti+re'
        DB      WED
;
MS71
;                0123456789ABCDEF
	DB	'    Descente    '
	DB	'  des Rapides'
        DB      WED
;
MS72
;                0123456789ABCDEF
	DB	'Plaine Cocolint'
        DB      WED
;
MS73
;                0123456789ABCDEF
	DB	'   Plage Coco'
        DB      WED
;
MS74
;                0123456789ABCDEF
	DB	' Baie de Martha'
        DB      WED
;
MS75
;                0123456789ABCDEF
	DB	' Est de la Baie'
        DB      WED
;
MS76
;                0123456789ABCDEF
	DB	'     Marais     '
	DB	'  des An*mones'
        DB      WED
;
MS77
;                0123456789ABCDEF
	DB	'Temple du Masque'
        DB      WED
;
MS78
;                0123456789ABCDEF
	DB	'Ch$teau Canulet'
        DB      WED
;
MS79
;                0123456789ABCDEF
	DB	'Plateau Tartare'
        DB      WED
;
MS7A
;                0123456789ABCDEF
	DB	'  Morne Plaine'
        DB      WED
;
MS7B
;                0123456789ABCDEF
	DB	' Sud du Village'
        DB      WED
;
MS7C
;                0123456789ABCDEF
	DB	'     Etang'
        DB      WED
;
MS7D
;                0123456789ABCDEF
	DB	'      Chez      '
	DB	'Mme Miaou Miaou '
	DB	'                '
	DB	' Chien m*chant!'
        DB      WED
;
MS7E
;                0123456789ABCDEF
	DB	'    Chez P*p*   '
	DB	'   le Ramollo'
        DB      WED
;
MS7F
;                0123456789ABCDEF
	DB	' Chez Mr Wright '
	DB	'   le Loufoque'
        DB      WED
;
;====================================================================
BANK16  GROUP   $16
;;;;;;;;;        ORG     $5700
;====================================================================
MS80
;                0123456789ABCDEF
	DB	'   Pharmacie    '
	DB	'   de Monique'
        DB      WED
;
MS81
;                0123456789ABCDEF
	DB	'      Chez      '
	DB	' les Quadrupl*s'
        DB      WED
;
MS82
;                0123456789ABCDEF
	DB	'G/te des R<ves'
        DB      WED
;
MS83
;                0123456789ABCDEF
	DB	'     Cabine     '
	DB	'  t*l*phonique'
        DB      WED
;
MS84
;                0123456789ABCDEF
	DB	'     Maison     '
	DB	'aux Coquillages'
        DB      WED
;
MS85
;                0123456789ABCDEF
	DB	'Villa de Richard'
        DB      WED
;
MS86
;                0123456789ABCDEF
	DB	'   Poulailler'
        DB      WED
;
MS87
;                0123456789ABCDEF
	DB	'  Biblioth+que'
        DB      WED
;
MS88
;                0123456789ABCDEF
	DB	'    Location    '
	DB	'   de radeaux'
        DB      WED
;
MS89
;                0123456789ABCDEF
	DB	'   Trou Warp'
        DB      WED
;
MS8A;   Rock that can be broken by a bomb
;                0123456789ABCDEF
	DB	'Ce rocher est   '
	DB	'tr+s fissur*... '
	DB	'Il doit y avoir '
	DB	'un moyen        '
	DB	'de le casser...'
        DB      WED
;
MS8B;   Rock that can be broken with dash 
;                0123456789ABCDEF
	DB	'Oh! Quel        '
	DB	'dr]le d^objet!  '
	DB	'Peut-<tre que tu'
	DB	'peux le briser  '
	DB	'en fon_ant      '
	DB	'dedans.'
        DB      WED
;
MS8C;   Key Block
;                0123456789ABCDEF
	DB	'Ce bloc a un    '
	DB	'trou de serrure!'
	DB	'Il te faudrait  '
	DB	'une Cl*!'
        DB      WED
;
MS8D;   Picking up objects
;                0123456789ABCDEF
	DB	'Oh l%... C^est  '
	DB	'bien trop lourd!'
	DB	'Tu n^y arriveras'
	DB	'jamais rien que '
	DB	'par la force    '
	DB	'de tes bras!'
        DB      WED
;
MS8E;   When you play the ocarina before you learn a song
;                0123456789ABCDEF
	DB	'C^est un Ocarina'
	DB	'mais tu ne sais '
	DB	'pas comment     '
	DB	'en jouer...'
        DB      WED
;
MS8F; When you attack a hen with Marin Option
;                0123456789ABCDEF
	DB	'La pauvre poule!'
	DB	'Arr<te donc!'
        DB      WED
;
MS90;   Power Bracelet -1
;                0123456789ABCDEF
	DB	'Tu as trouv*    '
	DB	'le Bracelet!    '
	DB	'G*nial! Tu peux '
	DB	'soulever des    '
	DB	'jarres et des   '
	DB	'pierres!'
        DB      WED
;
MS91;   Shield
	DB	'Vous r*cup*rez  '
	DB	'votre bouclier! '
	DB	'Utilisez-le pour'
	DB	'repousser vos   '
	DB	'ennemis!'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Tu as r*cup*r*  '
;;;11/20	DB	'ton Bouclier! Tu'
;;;11/20	DB	'peux repousser  '
;;;11/20	DB	'les ennemis!'
;;;11/20        DB      WED
;
MS92;  Pile of bones in Desert
;                0123456789ABCDEF
	DB	'Cette Poudre    '
	DB	'est si fra/che! '
	DB	'Pour ta peine,  '
	DB	'voici un indice:'
	DB	'si tu es aval*  '
	DB	'par les sables  '
	DB	'mouvants, place '
	DB	'une Bombe l%    '
	DB	'o= tu tombes.   '
	DB	'De l^autre c]t*,'
	DB	'une surprise    '
	DB	't^attend. Salut!'
        DB      WED
;
MS93;   Hook Shot
;                0123456789ABCDEF
	DB	'Tu as le        '
	DB	'Grappin!        '
	DB	'Tu vas voir     '
	DB	'comment la      '
	DB	'cha/ne s^*tire!'
        DB      WED
;
MS94;   Magic rod
;                0123456789ABCDEF
	DB	'Tu as le B$ton  '
	DB	'de Feu!         '
	DB	'Br\le! Br\le!   '
	DB	'Br\le tout      '
	DB	'ce que tu veux!'
        DB      WED
;
MS95;   Pegasus Boots
;                0123456789ABCDEF
	DB	'Tu as les Bottes'
	DB	'de P*gase!      '
	DB	'Garde le bouton '
	DB	'enfonc* et      '
	DB	'tu fileras      '
	DB	'comme le vent!'
        DB      WED
;
MS96;   Ocarina
;                0123456789ABCDEF
	DB	'Tu as l^Ocarina!'
	DB	'J^esp+re que    '
	DB	'tu pourras jouer'
	DB	'plusieurs airs!'
        DB      WED
;
MS97;   Roc Feather
;                0123456789ABCDEF
	DB	'Tu as la Plume! '
	DB	'Soudain, tu es  '
	DB	'plus l*ger      '
	DB	'que l^air!'
        DB      WED
;
MS98;   Shovel
;                0123456789ABCDEF
	DB	'Tu as la Pelle! '
	DB	'Maintenant,     '
	DB	'tu peux creuser '
	DB	'o= tu veux!'
        DB      WED
;
MS99;   Magic Powder
;                0123456789ABCDEF
	DB	'Tu as la        '
	DB	'Poudre Magique! '
	DB	'Essaie de la    '
  	DB	'saupoudrer sur  '
 	DB	'plein de choses!'
        DB      WED
;
MS9A;
	DB	'Vous obtenez une'
	DB	'bombe! Bien     '
	DB	'jou*!'
        DB      WED

MS9B;   Sword
;                0123456789ABCDEF
	DB	'Tu as retrouv*  '
	DB	'ton Ep*e!       '
	DB	'C^est la tienne '
	DB	'car il y a ton  '
	DB	'nom dessus!'
        DB      WED
;
MS9C;   Flippers
;                0123456789ABCDEF
	DB	'Tu as           '
	db	'les Palmes!     '
	DB	'Appuie sur B    '
	DB	'quand tu nages: '
	DB	'tu pourras alors'
	DB	'plonger!'
        DB      WED
;
MS9D;   Magnifying Glass
;                0123456789ABCDEF
	DB	'Tu as la Loupe! '
	DB	'Elle te montrera'
	DB	'ce que tu ne    '
	DB	'pouvais pas voir'
	DB	'auparavant!'
        DB      WED
;
MS9E; not used
MS9F;   Sword 2
;                0123456789ABCDEF
	DB	'Tu as une       '
	DB	'nouvelle Ep*e!  '
	DB	'N^oublie pas de '
	DB	'graver ton nom  '
	DB	'dessus!'
        DB      WED
;
MSA0;
	DB	'Vous trouvez le '
	DB	'm*dicament      '
	DB	'secret! A quoi  '
	DB	'cela peut-il    '
	DB	'servir?'
        DB      WED

MSA1
;                0123456789ABCDEF
	DB	'Tu as la        '
	DB	'Cl* Flagello!   '
	DB	'Tu peux ouvrir  '
	DB	'la porte de la  '
	DB	'Cave Flagello!'
        DB      WED
;
MSA2
;                0123456789ABCDEF
	DB	'Tu as la        '
	DB	'Cl* Cyclope!    '
	DB	'Vite! Va vers   '
	DB	'l^entr*e de     '
	DB	'La Prairie!'
        DB      WED
;
MSA3
;                0123456789ABCDEF
	DB	'Tu as la        '
	DB	'Cl* Poisson!'
        DB      WED
;
MSA4
;                0123456789ABCDEF
	DB	'Tu as la        '
	DB	'Cl* Masque!'
        DB      WED
;
MSA5
;                0123456789ABCDEF
	DB	'Tu as la        '
	DB	'Cl* Vautour!'
        DB      WED
;
MSA6
;                0123456789ABCDEF
	DB	'Tu as une Carte!'
	DB	'Appuie sur      '
	DB	'START pour      '
	DB	'la consulter!'
        DB      WED
;
MSA7
;                0123456789ABCDEF
	DB	'Tu as la        '
	DB	'Boussole!       '
	DB	'Maintenant,     '
	DB	'tu peux voir o= '
	DB	'sont cach*s     '
	DB	'les Coffres et  '
	DB	'le Boss! Si une '
	DB	'Cl* est dans une'
	DB	'salle, un son te'
	DB	'pr*viendra!     '
	DB	'C^est _a        '
	DB	'le progr+s...'
        DB      WED
;
MSA8
	DB	'Vous trouvez un '
	DB	'bec de pierre!  '
	DB	'Allez compl*ter '
	DB	'une statue de   '
	DB	'chouette.'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Tu as trouv*    '
;;;11/20	DB	'un Fragment     '
;;;11/20	DB	'de Marbre.      '
;;;11/20	DB	'Tu peux donc    '
;;;11/20	DB	'lire le message '
;;;11/20	DB	'sur le mur!'
;;;11/20        DB      WED
;
MSA9
;                0123456789ABCDEF
	DB	'Tu as la Cl*    '
	DB	'du Boss.        '
	DB	'Tu peux ouvrir  '
	DB	'la porte de     '
	DB	'son repaire!'
        DB      WED
;
MSAA
;                0123456789ABCDEF
	DB	'Tu as une Petite'
	DB	'Cl*. Tu peux    '
	DB	'ouvrir une porte'
	DB	'verrouill*e!'
        DB      WED
;
MSAB
;                0123456789ABCDEF
	DB	'Tu as trouv*    '
	DB	'20 rubis.       '
	DB	'} joie!'
        DB      WED
;
MSAC
;                0123456789ABCDEF
	DB	'Tu as trouv*    '
	DB	'50 rubis.       '
 	DB	'Merveilleux!'
        DB      WED
;
MSAD
;                0123456789ABCDEF
	DB	'Tu as trouv*    '
	DB	'100 rubis.      '
	DB	'Fantastique!'
        DB      WED
;
MSAE
;                0123456789ABCDEF
	DB	'Tu as trouv*    '
	DB	'200 rubis.      '
	DB	'Quelle extase!'
        DB      WED
;
MSAF;   Hippo model at Schule's house
;                0123456789ABCDEF
	DB	'Va-t^en!        '
	DB	'Tu vois pas que '
	DB	'je pose? Le beau'
	DB	'Sven doit faire '
	DB	'mon portrait!'
	DB	WED
;
MSB0;   BOSS #1: Moldorm (worm)
;                0123456789ABCDEF
	DB	'GRRR! GRR!      '
	DB	'UN INTRRRUS!'
        DB      WED
;
MSB1;   BOSS #2  Big Slime on ceiling
;                0123456789ABCDEF
	DB	'BONK! BONK!     '
	DB	'Tu ne m^auras   '
	DB	'pas! BONK!'
        DB      WED
;
MSB2;   BOSS #4  Big Fish
;                0123456789ABCDEF
	DB	'GLOU GLOU!      '
	DB	'GLOUP! GLOUP!   '
	DB	'MIAM! A MANGER! '
	DB	'GLOUP! GLOUP!'
        DB      WED
;
MSB3;   BOSS #5  Long worm (Lanmola)
;                0123456789ABCDEF
	DB	'Ah Ah! Tu es    '
	DB	'l^intrus venu   '
	DB	'r*veiller le    '
	DB	'Poisson-R<ve... '
	DB	'Tu vas me servir'
	DB	'de d*jeuner!'
        DB      WED
;
MSB4;   BOSS #2  Boss in the pot
;                0123456789ABCDEF
	DB	'HI HI HI!!      '
	DB	'Attends un peu, '
	DB	'que je m^occupe '
	DB	'de toi... HI HI!'
        DB      WED
;
MSB5;   BOSS #5 Lanmola second conversation
;                0123456789ABCDEF
	DB	'AHHH!           '
	DB	'Tu ne connais   '
	DB	'pas encore      '
	DB	'cette /le! Tu   '
	DB	'es vraiment     '
	DB	'na[f... AHHH!'
        DB      WED
;
MSB6;   BOSS # 6, First speech
;                0123456789ABCDEF
	DB	'H* petit! Besoin'
	DB	'd^un indice?    '
	DB	'Mon point faible'
	DB	'c^est la...     '
	DB	'Ouh, j^ai failli'
	DB	'trop en dire...'
	DB 	WED
;
MSB7;   BOSS #6, second speech
;                0123456789ABCDEF
	DB	'Je parle trop...'
	DB	'Mais si le      '
	DB	'Poisson-R<ve    '
	DB	's^*veille, tout '
	DB	'ce qui se trouve'
	DB	'sur cette /le   '
	DB	'dispara/tra!    '
	DB	'Oui... TOUT!'
        DB      WED
;
MSB8;   not used
MSB9;   BOSS #7 Second speech
;                0123456789ABCDEF
	DB	'J^ai perdu...   '
	DB	'Toi aussi, tu   '
	DB	'vas perdre si   '
	DB	'le Poisson-R<ve '
	DB	's^*veille...    '
	DB	'Tout comme moi, '
	DB	'tu es... dans   '
	DB	'son r<ve...'
        DB      WED
;
MSBA;   BOSS #7 First speech
;                0123456789ABCDEF
	DB	'Cette fois-ci,  '
	DB	'je vais t^avoir,'
	DB	'c^est s\r... Je '
	DB	'vais t^*craser  '
	DB	'comme une       '
	DB	'vulgaire fourmi!'
        DB      WED
;
MSBB;   not used
MSBC;   Big Fireball Boss #8
;                0123456789ABCDEF
	DB	'SPLASHHH!       '
	DB	'Tu vas mourir!  '
	DB	'Jamais, je ne te'
	DB	'laisserai jouer '
	DB	'des Instruments '
	DB	'des Sir+nes!'
        DB      WED
;
MSBD;   BOSS #8 second speech
;                0123456789ABCDEF
	DB	'NON!!!...       '
	DB	'Si tu n^*tais   '
	DB	'pas venu ici,   '
	DB	'rien n^aurait   '
	DB	'chang*.         '
	DB	'Tu ne peux pas  '
	DB	'r*veiller le    '
	DB	'Poisson-R<ve!   '
	DB	'N^oublie pas... '
	DB	'Nous faisons... '
	DB	'tous partie...  '
	DB	'de son r<ve...'
        DB      WED
;
MSBE;   Deleted
MSBF;   Deleted
;
;       OWL'S MESSAGES
;
MSC0;   In the Mysterious Woods
;                0123456789ABCDEF
	DB	'Hou! Bienvenue  '
	DB	'% la For<t      '
	DB	'Enchant*e, mon  '
	DB	'brave gar_on!   '
	DB	'L^/le Cocolint  '
	DB	'abonde en       '
	DB	'myst+res et     '
	DB	'n^existe sur    '
	DB	'aucune carte.   '
	DB	'Son r+glement   '
	DB	'est unique!     '
	DB	'Tu ne pourras   '
	DB	'pas la quitter  '
	DB	'tant que le     '
	DB	'Poisson-R<ve    '
	DB	'dormira.        '
	DB	'A propos,       '
	DB	'as-tu visit* la '
	DB	'Cave Flagello,  '
	DB	'situ*e au Sud   '
	DB	'du village?     '
	DB	'Vas-y avec la   '
	DB	'Cl* cach*e      '
	DB	'dans la For<t.  '
	DB	'Le Poisson-R<ve '
	DB	'te regarde.Hou!'
        DB      WED
;
MSC1;   In forest before you get Tail Key
;                0123456789ABCDEF
	DB	'Hou!            '
	DB	'Avec cette cl*, '
	DB	'va % la Cave    '
	DB	'Flagello.       '
	DB	'Prends          '
	DB	'l^Instrument qui'
	DB	'y est dissimul*.'
	DB	'D*p<che-toi!    '
	DB	'Le Poisson-R<ve '
	DB	'attend! Hou!'
        DB      WED
;
MSC2;   After Dungeon #1 Cleared
;                0123456789ABCDEF
	DB	'Hou! C^est un   '
	DB	'des Instruments '
	DB	'des Sir+nes!    '
	DB	'Tu es brave et  '
	DB	'je t^avais      '
	DB	'sous-estim*...  '
	DB	'Cet Instrument  '
	DB	'- utilis* avec  '
	DB	'les 7 autres -  '
	DB	'a le pouvoir    '
	DB	'de r*veiller    '
	DB	'le Poisson-R<ve.'
	DB	'Collecte ces    '
	DB	'8 Instruments!  '
	DB	'Je suis ici pour'
	DB	't^indiquer le   '
	DB	'chemin...       '
	DB	'Maintenant,     '
	DB	'va au Marais    '
	DB	'des An*mones,   '
	DB	'situ* au Nord!  '
	DB	'Hou!'
        DB      WED
;
MSC3;   Owl in mountains / Wanwan rescue team
;                0123456789ABCDEF
	DB	'Hou! Ton        '
	DB	'compagnon       '
	DB	'a l^air f*roce! '
	DB	'N^oublie pas,le '
	DB	'2+me Instrument '
	DB	'se trouve dans  '
	DB	'le Marais!'
        DB      WED
;
MSC4;   Owl in mountains, #2 cleared
;                0123456789ABCDEF
	DB	'Hou!            '
	DB	'Le Poisson-R<ve '
	DB	'sommeille dans  '
	DB	'l^Oeuf, l% haut.'
	DB	'Il r<ve, r<ve!  '
	DB	'Il se r*veillera'
	DB	'si tu te tiens  '
	DB	'face % I^Oeuf et'
	DB	'que tu joues des'
	DB	'8 Instruments.  '
	DB	'Ainsi seulement,'
	DB	'pourras-tu      '
	DB	'quitter l^/le...'
	DB	'Hou!!'
        DB      WED
;
MSC5;   Owl next to dungeon #3
;                0123456789ABCDEF
	DB	'Hou! Combien    '
	DB	'd^Instruments   '
	DB	'as-tu collect*s?'
	DB	'Quand tu joueras'
	DB	'des Instruments '
	DB	'face % l^Oeuf,  '
	DB	'le Poisson-R<ve '
	DB	'se r*veillera   '
	DB	'et tu pourras   '
	DB	'quitter l^/le.  '
	DB	'Va vite vers les'
	DB	'Dunes de Yarna! '
	DB	'L^horrible      '
	DB	'monstre noir    '
	DB	'des sables      '
	DB	't^indiquera     '
	DB	'le chemin!      '
	DB	'Hou hou!'
        DB      WED
;
MSC6;   Owl in Yarna Desert
;                0123456789ABCDEF
	DB	'Hou! Cette cl*  '
	DB	'*voque          '
	DB	'un poisson      '
	DB	'remontant       '
	DB	'une cascade. Va '
	DB	'% cette cascade,'
	DB	'fais dispara/tre'
	DB	'l^eau et        '
	DB	'saute du sommet.'
        DB      WED
;
MSC7;   Owl at the river bank between two shrines
;                0123456789ABCDEF
	DB	'Hou! Au Sud     '
	DB	'et au Nord,     '
	DB	'se trouvent     '
	DB	'deux temples.   '
	DB	'Va d^abord au   '
	DB	'Sud, l% o= des  '
	DB	'Ruines antiques '
	DB	'parlent         '
	DB	'du Poisson-R<ve.'
	DB	'Tu en sauras    '
	DB	's\rement plus...'
        DB      WED
;
MSC8;   Owl outside south shrine after reading stone
;                0123456789ABCDEF
	DB	'Hou! Je vois que'
	DB	'tu as lu ce     '
	DB	'Marbre ancien.  '
	DB	'Il dit que l^/le'
	DB	'est issue       '
	DB	'des songes      '
	DB	'du Poisson-R<ve,'
	DB	'mais personne   '
	DB	'n^en est s\r... '
	DB	'Qui peut savoir '
	DB	'ce que contient '
	DB	'un coffre tant  '
	DB	'qu^il n^a pas   '
	DB	'*t* ouvert?     '
	DB	'Qui peut deviner'
	DB	's^il r<ve tant  '
	DB	'qu^il ne s^est  '
	DB	'pas r*veill*?   '
	DB	'Le Poisson-R<ve '
	DB	'est le seul qui '
	DB	'sait... Suis ton'
	DB	'instinct. Ainsi,'
	DB	'tu sauras...    '
	DB	'Hou hou!'
        DB      WED
;
MSC9;   Owl, Shrine 6 cleared
;                0123456789ABCDEF
	DB	'Hou! Les        '
	DB	'monstres de     '
	DB	'cette /le ont   '
	DB	'peur que le     '
	DB	'Poisson-R<ve    '
	DB	'ne s^*veille.   '
	DB	'Leur pouvoir    '
	DB	'est bien r*el!  '
	DB	'Ils pourraient  '
	DB	'conqu*rir l^/le '
	DB	'et an*antir     '
	DB	'leurs ennemis.  '
	DB	'Va % la tour    '
	DB	'de la montagne  '
	DB	'en volant comme '
	DB	'un oiseau! Hou!'
        DB      WED
;
MSCA;   Owl near Wind Fish Egg
	DB	'Hou hou!        '
	DB	'Ton p*riple est '
	DB	'ardu mais tu y  '
	DB	'es presque...   '
	DB	'Va vers l^Est.  '
	DB	'Le Poisson du   '
	DB	'Vent a besoin de'
	DB	'sommeil.        '
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'L^action devient'
;;;11/20	DB	'plus intense!   '
;;;11/20	DB	'Tu es pr+s      '
;;;11/20	DB	'du but! Tu as   '
;;;11/20	DB	'encore deux     '
;;;11/20	DB	'choses % faire. '
;;;11/20	DB	'Va d^abord      '
;;;11/20	DB	'% l^Est de      '
;;;11/20	DB	'la montagne.    '
;;;11/20	DB	'Puis, visite    '
;;;11/20	DB	'la partie ouest.'
;;;11/20	DB	'D*p<che-toi,    '
;;;11/20	DB	'le Poisson-R<ve '
;;;11/20	DB	's^agite... Hou!'
;;;11/20        DB      WED
;
MSCB;   Owl by the tombstone
;                0123456789ABCDEF
	DB	'Hou! Cela       '
	DB	'fait longtemps  '
	DB	'qu^on ne s^est  '
	DB	'rencontr*s!     '
	DB	'Plonge dans la  '
	DB	'Baie de Martha  '
	DB	'et entre        '
	DB	'dans la gueule  '
	DB	'du Poisson-Chat.'
	DB	'Plus tu es pr+s '
	DB	'du Poisson-R<ve,'
	DB	'plus son sommeil'
	DB	'est agit*...    '
	DB	'Tu es dans la   '
	DB	'bonne voie. Hou!'
        DB      WED
;
MSCC;   Owl at suspension bridge
;                0123456789ABCDEF
	DB	'Hou! Cette fille'
	DB	'a chant* en face'
	DB	'de l^Oeuf sa    '
	DB	'"Ballade du     '
	DB	'Poisson-R<ve".  '
	DB	'Mais c^est la   '
	DB	'Chanson d^Eveil!'
	DB	'D*sirait-elle   '
	DB	'vraiment        '
	DB	'le r*veiller?   '
	DB	'Le prochain     '
	DB	'Instrument est  '
	DB	'dans le Roc     '
	DB	'de la Tortue.   '
	DB	'Anime ces rocs. '
	DB	'Sois brave!     '
	DB	'Le Poisson-R<ve '
	DB	'attend...       '
	DB	'Hou hou!'
        DB      WED
;
MSCD;   Owl in front of Egg 2
;                0123456789ABCDEF
	DB	'Hou hou!        '
	DB	'Le Poisson-R<ve '
	DB	't^attend. Entre '
	DB	'dans l^Oeuf...  '
	DB	'Hou hou!'
        DB      WED
;
MSCE;   not used
MSCF;   Owl in the woods
;                0123456789ABCDEF
	DB	'Hou! Petit!     '
	DB	'Heu pardon!     '
	DB	'Ma/tre #####,   '
	DB	'tu as an*anti   '
	DB	'les monstres!   '
	DB	'Tu as fait      '
	DB	'preuve de force,'
	DB	'de sagesse      '
	DB	'et de courage!  '
	DB	'... ... ... ... '
	DB	'Etant un des    '
	DB	'esprits du      '
	DB	'Poisson-R<ve,   '
	DB	'je prot*geais   '
	DB	'son monde       '
	DB	'onirique...     '
	DB	'H*las, un jour  '
	DB	'le Cauchemar    '
	DB	'envahit son r<ve'
	DB	'et mena_a la    '
	DB	'paix de l^/le.  '
	DB	'Mais toi #####, '
	DB	'tu devins       '
	DB	'notre espoir.   '
	DB	'J^ai toujours   '
	DB	'cru en toi!     '
	DB	'Merci #####.    '
	DB	'Ma t$che est    '
	DB	'accomplie et je '
	DB	'dois r*int*grer '
	DB	'le Poisson-R<ve.'
	DB	'Adieu... Hou!'
        DB      WED
;
MSD0;   THE WIND FISH
;                0123456789ABCDEF
	DB	'... ... ... ... '
	DB	'... ... ... ... '
	DB	'JE SUIS LE      '
	DB	'POISSON-REVE!   '
	DB	'LONG FUT        '
	DB	'MON SOMMEIL...  '
	DB	'DANS MES SONGES,'
	DB	'UN OEUF APPARUT,'
	DB	'PUIS UNE ILE    '
	DB	'L^ENTOURA...    '
	DB	'DES GENS... DES '
	DB	'ANIMAUX... UN   '
	DB	'MONDE ETAIT NE! '
	DB	'... ... ... ... '
	DB	'MAIS LE REVE    '
	DB	'A TOUJOURS      '
	DB	'UNE FIN, C^EST  '
	DB	'LE DESTIN!      '
	DB	'QUAND JE        '
	DB	'M^EVEILLERAI,   '
	DB	'COCOLINT        '
	DB	'DISPARAITRA...  '
	DB	'OR, LE SOUVENIR '
	DB	'DE CETTE ILE    '
	DB	'DOIT RESTER     '
	DB	'DANS NOS COEURS '
	DB	'EN TANT QUE     '
	DB	'REALITE...      '
	DB	'TOI AUSSI UN    '
	DB	'JOUR, TU TE     '
	DB	'SOUVIENDRAS.    '
	DB	'CE SOUVENIR DOIT'
	DB	'RESTER REEL     '
	DB	'DANS UN MONDE   '
	DB	'DE REVES...     '
	DB	'VIENS #####,    '
	DB	'EVEILLONS-NOUS  '
	DB	'ENSEMBLE!!'
        DB      WED
;
MSD1; deleted
MSD2;   WIND FISH
;                0123456789ABCDEF
	DB	'JOUE LA CHANSON '
	DB	'DE L^EVEIL!!'
        DB      WED
;
MSD3;   deleted
MSD4;   deleted
;
MSD5;   Map message   
;                0123456789ABCDEF
	DB	'La Petite Sir+ne'
        DB      WED
;
MSD6;   deleted
;
MSD7;   OWL when you beat the final final boss!
;                0123456789ABCDEF
	DB	'... #####,      '
	DB	'tu as battu     '
	DB	'Mal*ficio!      '
	DB	'Va et monte     '
	DB	'les escaliers!'
        DB      WED
;
MSD8;   Shule the artist second message
;                0123456789ABCDEF
	DB	'Que pasa? Pero, '
	DB	'qu* fais-tu avec'
	DB	'la Loupe?       '
	DB	'Arrrr<te!       '
	DB	'Pobrecito...'
        DB      WED
;
MSD9;   Owl at the beach, first conversation
;                0123456789ABCDEF
	DB	'Hou hou!        '
	DB	'Cette *p*e      '
	DB	'est donc % toi! '
	DB	'... Je comprends'
	DB	'pourquoi        '
	DB	'les monstres    '
	DB	's^agitent tant :'
	DB	'celui qui doit  '
	DB	'r*veiller le    '
	DB	'Poisson-R<ve    '
	DB	'est arriv*!     '
	DB	'On dit que pour '
	DB	'quitter l^/le,  '
	DB	'cette personne  '
	DB	'doit d^abord    '
	DB	'le r*veiller... '
	DB	'Viens me voir   '
	DB	'dans la For<t   '
	DB	'Enchant*e, au   '
	DB	'Nord du village.'
	DB	'Je t^y attends. '
	DB	'Hou hou!'
        DB      WED
;
MSDA;   Lanmolas in Desert
;                0123456789ABCDEF
	DB	'Minable! Ne     '
	DB	'vois-tu pas que '
	DB	'tu me g<nes!'
        DB      WED
;
MSDB;   MAMU the SOUL FROG --  w/o ocarina
;                0123456789ABCDEF
	DB	'Cro$ cro$!      '
	DB	'Je suis Wart,   '
	DB	'le chanteur.    '
	DB	'Tu es nul       '
	DB	'en musique!     '
	DB	'Reviens avec    '
	DB	'du matos, vieux!'
	DB	'Cro$ cro$!'
        DB      WED
;
MSDC;   With Ocarina
;                0123456789ABCDEF
	DB	'Cro$ cro$!      '
	DB	'Je suis Wart,   '
	DB	'le chanteur.    '
	DB	'Inutile de      '
	DB	'me pr*senter :  '
	DB	'je suis le roi  '
	DB	'du Rap...       '
	DB	'Tu veux rester  '
	DB	'et nous *couter?'
	DB	'Pour 300 rubis, '
	DB	'on te chante    '
	DB	'un m*ga morceau!'
	DB	'Alors?...       '
        DB      '    Oui  Non'
        DB      WE2
;
MSDD;  When answer to MSDC is Yes
;                0123456789ABCDEF
	DB	'Merci...        '
	DB	'Je suis *mu.    '
	DB	'Merci... Cro$!'
        DB      WED
;
MSDE;   When answer to DC is NO
;                0123456789ABCDEF
	DB	'De toute fa_on, '
	DB	'on ne fait pas  '
	DB	'dans le         '
	DB	'b*n*volat...'
        DB      WED
;
MSDF;   When you learn the frog's song
;                0123456789ABCDEF
	DB	'Tu as appris    '
	DB	'la chanson des  '
	DB	'Grenouilles.    '
	DB	'C^est cool non? '
	DB	'Tu peux donc    '
	DB	'insuffler la vie'
	DB	'dans les objets.'
        DB      WED
;
MSE0;   After you learn the song, frog
;                0123456789ABCDEF
	DB	'Si tu joues     '
	DB	'cet air,        '
	DB	'certains objets '
	DB	's^animeront!'
        DB      WED
;
MSE1;   IMP-- Same character as in SNES Zelda
;                0123456789ABCDEF
	DB	'Dis donc toi!   '
	DB	'Merci de m^avoir'
	DB	'd*rang* pendant '
	DB	'ma sieste!      '
	DB	'Tiens, j^ai un  '
	DB	'cadeau pour toi.'
	DB	'Tu es pr<t?     '
        DB      WED
;
MSE2;   Raises max magic powder
;                0123456789ABCDEF
	DB	'Tu veux plus de '
	DB	'Poudre Magique? '
	DB	'Tu es pr<t?     '
        DB      '    Oui  Non'
        DB      WE2
;
MSE3;   Raises max bombs
;                0123456789ABCDEF
	DB	'Tu veux plus de '
	DB	'Bombes?         '
	DB	'Tu es pr<t?     '
        DB      '    Oui  Non'
        DB      WE2
;
MSE4;   Raises max arrows
;                0123456789ABCDEF
	DB	'Tu veux plus de '
	DB	'Fl+ches?        '
	DB	'Tu es pr<t?     '
        DB      '    Oui  Non'
        DB      WE2
;
MSE5;   IMP'S LAST WORDS
;                0123456789ABCDEF
	DB	'Hi hi hi!       '
	DB	'C^est bien fait '
	DB	'pour toi!       '
	DB	'Tu as vu tout   '
	DB	'ce que tu dois  '
	DB	'porter!!!       '
	DB	'Allez, salut!'
        DB      WED
;
;===================================================================
BANK9	GROUP   $09
;;;;;;;;        ORG     $6700
;===================================================================
MSE6;   Relief in Wind Fish Shrine
;                0123456789ABCDEF
	DB	'??  Un dessin   '
	DB	'est grav* sur   '
	DB	'le mur. Mais tu '
	DB	'ne peux pas le  '
	DB	'voir car c^est  '
	DB	'trop sombre...'
        DB      WED
;
MSE7;   Relief 2   
;                0123456789ABCDEF
	DB	'L^ILE COCOLINT  '
	DB	'N^EST QU^UNE    '
	DB	'ILLUSION... MER,'
	DB	'CIEL, MONSTRES, '
	DB	'HUMAINS...      '
	DB	'RIEN N^EST REEL.'
	DB	'L^ILE N^EXISTE  '
	DB	'QUE DANS LES    '
	DB	'SONGES DU       '
	DB	'POISSON-REVE.   '
	DB	'IL S^EVEILLERA  '
	DB	'ET ELLE         '
	DB	'DISPARAITRA.    '
		;0123456   7   89ABCDEF
	DB	'NAUFRAG',$CE,', TU    '
	DB	'DOIS CONNAITRE  '
	DB	'LA VERITE...    '
	DB	'... ... ... ... '
	DB	'Quoi? Illusion?'
        DB      WED
;
;;===================================================================
;BANK09  GROUP   $09
;        ORG     $6700
;;===================================================================
MSE8;   Golden Leaves Events
	DB	'Une Feuille     '
	DB	'd^Or!           '
	DB	'Appuyez sur     '
	DB	'START pour voir '
	DB	'combien vous en '
	DB	'avez!'
        DB      WED

;;;12/08	DB	'Vous trouvez une'
;;;12/08	DB	'Feuille d^Or!   '
;;;12/08	DB	'Appuyez sur     '
;;;12/08	DB	'START pour voir '
;;;12/08	DB	'combien vous en '
;;;12/08	DB	'avez r*cup*r*es!'
;;;12/08        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Tu as trouv* une'
;;;11/20	DB	'Feuille d^Or!   '
;;;11/20	DB	'V*rifie combien '
;;;11/20	DB	'tu en as dans   '
;;;11/20	DB	'le Sous-Ecran.'
;;;11/20        DB      WED
;
MSE9;   When you get the last Golden Leaf
;                0123456789ABCDEF
	DB	'Tu as trouv*    '
	DB	'la derni+re     '
	DB	'Feuille d^Or!   '
	DB	'Am+ne-les chez  '
	DB	'Richard. Parle- '
	DB	'lui de la Cl*...'
        DB      WED
;
MSEA;   deleted
MSEB;   deleted
;
MSEC;   Nut Protector
;                0123456789ABCDEF
	DB	'Tu as le Gland! '
	DB	'Tu seras mieux  '
	DB	'prot*g* contre  '
	DB	'les ennemis!'
        DB      WED
;
MSED;   Shield 2
;                0123456789ABCDEF
	DB	'Tu as trouv* le '
	DB	'Bouclier-Reflet!'
	DB	'Maintenant,     '
	DB	'tu peux bloquer '
	DB	'le laser...'
        DB      WED
;
MSEE;   Bracelet 2
;                0123456789ABCDEF
	DB	'Tu as trouv* le '
	DB	'Super Bracelet! '
	DB	'Tu pourrais m<me'
	DB	'soulever...     '
	DB	'un *l*phant!'
        DB      WED
;
MSEF;   Seashell
;                0123456789ABCDEF
	DB	'Tu as trouv* un '
	DB	'Coquillage!     '
	DB	'Collectes-en    '
	DB	'beaucoup pour   '
	DB	'faire du troc...'
        DB      WED
;
MSF0;   RAFTING, man at shop
;                0123456789ABCDEF
	DB	'Une balade      '
	DB	'en radeau       '
	DB	'pour 100 rubis? '
        DB      '    Oui  Non'
        DB      WE2
;
MSF1;   When the answer is YES
;                0123456789ABCDEF
	DB	'Il y en a un    '
	DB	'% l^ext*rieur.  '
	DB	'Amuse-toi bien!'
        DB      WED
;
MSF2;   Map messages
;                0123456789ABCDEF
	DB	'    Cascade     '
	DB	' pr+s du Temple '
        DB      WED
;
MSF3
;                0123456789ABCDEF
	DB	'Au Sud du Temple'
        DB      WED
;
MSF4
;                0123456789ABCDEF
	DB	'   Entr*e du    '
	DB	'  Village des   '
	DB	'    Animaux'
        DB      WED
;
MSF5;   THE LAST BOSS First Speech
;                0123456789ABCDEF
	DB	'Nous provenons  '
	DB	'des Cauchemars. '
	DB	'Pour dominer    '
	DB	'ce monde, nous  '
	DB	'avons provoqu*  '
	DB	'un sommeil      '
	DB	'sans fin chez le'
	DB	'Poisson-R<ve.   '
	DB	'Tant qu^il dort,'
	DB	'l^/le existera! '
	DB	'Nous sommes     '
	DB	'les Ma/tres ici '
	DB	'et toi avorton, '
	DB	'tu arrives pour '
	DB	'contrecarrer    '
	DB	'nos plans?      '
	DB	'Ha ha!          '
	DB	'Tu ne nous      '
	DB	'battras jamais! '
	DB	'Tu vas p*rir...'
        DB      WED
;
MSF6;   Last Boss second speech
;                0123456789ABCDEF
	DB	'Cette /le va    '
	DB	'dispara/tre...  '
	DB	'Notre monde va  '
	DB	'dispara/tre...  '
	DB	'Notre monde...  '
	DB	'Notre...        '
	DB	'monde...!!      '
        DB      WED
;
MSF7;   MARIN OPTION, when you goto Trendy Game
;                0123456789ABCDEF
	DB	'G*nial, #####!  '
	DB	'Je peux?        '
	DB	'Tu es d^accord? '
        DB      '    Oui  Non'
        DB      WE2
;
MSF8;    MARIN OPTION when MSF7 is NO
;                0123456789ABCDEF
	DB	'Allez! Je veux  '
	DB	'essayer! @a     '
	DB	'doit <tre fun!  '
        DB      '    Oui  Oui!'
        DB      WE2
;
MSF9;   Sales Clerk afer Marin picks him up
;                0123456789ABCDEF
	DB	'Tu es dou*e!    '
	DB	'Tu dois <tre    '
	DB	'une pro, hein?  '
	DB	'... ... ... ... '
	DB	'Zou du vent!    '
	DB	'On ne veut pas  '
	DB	'de pros ici...'
        DB      WED
;
MSFA;  Schule's Hippo Model
;                0123456789ABCDEF
	DB	'Va-t^en!'
        DB      WED
;
MSFB;   Hippo model 2
;                0123456789ABCDEF
	DB	'Arr<te!'
        DB      WED
;
MSFC;   When you look at the library shelf
;                0123456789ABCDEF
	DB	'Ce n^est pas une'
	DB	'commode... Quoi?'
	DB	'Tu avais        '
	DB	'remarqu*?... OK!'
        DB      WED
;
MSFD;   When you open / check a chest
;                0123456789ABCDEF
	DB	'##### a inspect*'
	DB	'la commode.     '
	db	'                '
	DB	'C^est un objet  '
	DB	'd^art... ...'
        DB      WED
;
MSFE;   Magic Powder ready
;                0123456789ABCDEF
	DB	'@a y est!       '
	DB	'Tout est pr<t!  '
	DB	'Attention,      '
	DB	'il y en a peu!  '
	DB	'Veux-tu la      '
	DB	'tester ici?'
        DB      WED
;
MSFF;   Tarin scolds you for opening his chest
;                0123456789ABCDEF
	DB	'Ho! Tu fais     '
	DB	'quoi dans       '
	DB	'ma commode?     '
	DB	'Franch^ment,    '
	DB	'_a va la t<te?  '
        DB      WED
;
;===================================================================
BANK1C  GROUP   $1C
;;;;;;;;;        ORG     $4A61
;===================================================================
M100;   GETTING ITEMS
;                0123456789ABCDEF
	DB	'Tu as le Violon '
	DB	'des Vagues!'
        DB      WED
;
M101;   
;                0123456789ABCDEF
	DB	'Tu as la Conque '
	DB	'de l^Ecume!'
        DB      WED
;
M102;  
;                0123456789ABCDEF
	DB	'Tu as la Cloche '
	DB	'des Algues!'
        DB      WED
;
M103
;                0123456789ABCDEF
	DB	'Tu as la Harpe  '
	DB	'du Reflux!'
        DB      WED
;
M104
;                0123456789ABCDEF
	DB	'Tu as le        '
	DB	'Xylophone Marin!'
        DB      WED
;
M105
;                0123456789ABCDEF
	DB	'Tu as le ',$AE,$AF,'angle'
	DB	'de Corail!'
        DB      WED
;
M106
;                0123456789ABCDEF
	DB	'Tu as l^Orgue   '
	DB	'de l^Embellie!'
        DB      WED
;
M107
;                0123456789ABCDEF
	DB	'Tu as le Tambour'
	DB	'des Mar*es!'
        DB      WED
;
;       STONE SLAB HINTS
;
M108;   #1
	DB	'Salut! C^est moi'
	DB	'le photographe! '
	DB	'Tu te poses des '
	DB	'questions sur   '
	DB	'P*p* le Ramollo?'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Si tu vois      '
;;;11/20	DB	'les pointes,    '
;;;11/20	DB	'pense % utiliser'
;;;11/20	DB	'ton Bouclier.'
;;;11/20        DB      WED
;
M109;   #2
	DB	'Appelons ceci   '
	DB	'"##### D*couvre '
	DB	'le secret de    '
	DB	'p*p*!"'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'D^abord un lapin'
;;;11/20	DB	'et en dernier,  '
;;;11/20	DB	'un spectre...'
;;;11/20	DB	WED
;
M10A;   #3
	DB	'#####, fuis     '
	DB	'avant qu^il ne  '
	DB	'te trouve.'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Si loin...      '
;;;11/20	DB	'Ne crains rien. '
;;;11/20	DB	'Fonce et vole!'
;;;11/20        DB      WED
;
M10B;   #4
	DB	'Je vais la      '
	DB	'd*velopper.     '
	DB	'Viens vite la   '
	DB	'voir!'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'La lueur des    '
;;;11/20	DB	'tuiles sera     '
;;;11/20	DB	'ton guide...'
;;;11/20        DB      WED
;
M10C;   #5
	DB	'J^ADORE prendre '
	DB	'les gens en     '
	DB	'photo. Puis-je  '
	DB	'te tirer le     '
	DB	'portrait?       '
	DB	'    OUI  NON'
        DB      WE2

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Plonge l% o=    '
;;;11/20	DB	'se croisent     '
;;;11/20	DB	'les lumi+res    '
;;;11/20	DB	'des flambeaux...'
;;;11/20        DB      WED
;
M10D;   #6
	DB	'Va au fond de la'
	DB	'salle et fais   '
	DB	'face % l^*cran. '
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Fracasse        '
;;;11/20	DB	'le mur          '
;;;11/20	DB	'des Yeux        '
;;;11/20	DB	'du Masque!'
;;;11/20        DB      WED
;
M10E;   #7 
	DB	'H*! Je n^ai pas '
	DB	'encore pris ta  '
	DB	'photo! Retourne '
	DB	'faire face %    '
	DB	'l^*cran!'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Le r*bus est    '
;;;11/20	DB	'r*solu si les 4 '
;;;11/20	DB	'piliers tombent.'
;;;11/20        DB      WED
;
M10F;   #8
	DB	'Fais-moi ton    '
	DB	'plus beau       '
	DB	'sourire!'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Comble tous     '
;;;11/20	DB	'les trous avec  '
;;;11/20	DB	'le roc qui roule'
;;;11/20		;012345678   9   abcdef
;;;11/20	DB	'et cette ',MK8,' est  '
;;;11/20	DB	'la solution!'
;;;11/20        DB      WED
;
M110;   Stone plate
	DB	'Cette statue    '
	DB	'veut me dire    '
	DB	'quelque chose   '
	DB	'mais je ne      '
	DB	'comprends rien! '
	DB	'Elle n^a pas de '
	DB	'bec...'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Il y a une      '
;;;11/20	DB	'inscription sur '
;;;11/20	DB	'le Marbre. Tu ne'
;;;11/20	DB	'peux pas la lire'
;;;11/20	DB	'car un Fragment '
;;;11/20	DB	'est manquant.'
;;;11/20        DB      WED
;
M111;   Medium Boss-- Stalfos Knight
;                0123456789ABCDEF
	DB	'J^ai ce qu^il y '
	DB	'avait dans ce   '
	DB	'coffre. Viens   '
	DB	'le chercher     '
	DB	'si tu oses!     '
	DB	'Sign* : ',MK3
        DB      WED
;
M112;   Second time you see Stalfos
;                0123456789ABCDEF
	DB	'Quoi??          '
	DB	'Tu m^as trouv*? '
	DB	'Tu es pire qu^un'
	DB	'pot de colle!'
        DB      WED
;
M113;   First time you defeat Stalfos
;                0123456789ABCDEF
	DB	'Ah! Je ne peux  '
	DB	'pas te battre!  '
 	DB	'J^abandonne!'
        DB      WED
;
M114;   Last time you fight Stalfos
;                0123456789ABCDEF
	DB	'Encore toi?     '
	DB	'Tu n^arr<teras  '
	DB	'jamais? Je      '
	DB	'vais te rosser! '
	DB	'D^accord...     '
	DB	'Allons-y!'
        DB      WED
;
M115;   When you have Bow-wow with you, sometimes he tells you:
;                0123456789ABCDEF
	DB	'Wouf! Creuse!   '
        DB      WED
;
M116;   Place missing scale in mermaid
	DB	'Tu d*poses      '
	DB	'l^*caille qui   '
	DB	'manquait sur la '
	DB	'Petite Sir+ne!'
        DB      WED
;
M117;
	DB	'Fais plus       '
	DB	'attention la    '
	DB	'prochaine fois!'
        DB      WED

;
;       KIDS MESSAGES
;
M118;   Kids first message 
;                0123456789ABCDEF
	DB	'M^sieu! Pour    '
	DB	'sauvegarder,    '
	DB	'appuyez sur tous'
	DB	'les boutons     '
	DB	'% la fois! Heu, '
	DB	'je n^en sais pas'
	DB	'plus, je ne suis'
	DB	'qu^un gosse!'
        DB      WED
;
M119;   Kids second message
;                0123456789ABCDEF
	DB	'Ben... Apr+s une'
	DB	'sauvegarde,     '
	DB	'vous pouvez     '
	DB	'red*marrer % la '
	DB	'derni+re porte  '
	DB	'par laquelle    '
	DB	'vous <tes pass*!'
	DB	'Pourquoi? Je    '
	DB	'n^en sais rien, '
	DB	'je suis un m]me!'
        DB      WED
;
M11A;   Kids third message
;                0123456789ABCDEF
	DB	'Consultez la    '
	DB	'carte de l^/le  '
	DB	'en appuyant     '
	DB	'sur SELECT.     '
	DB	'Apr+s, je ne    '
	DB	'sais pas trop   '
	DB	'car je ne suis  '
	DB	'qu^un gosse!'
        DB      WED
;
M11B;   Kids fourth message
;                0123456789ABCDEF
	DB	'Si vos Coeurs   '
	DB	'diminuent trop, '
	DB	'entrez dans     '
	DB	'une maison      '
	DB	'ou une grotte.  '
	DB	'Pourquoi? Je ne '
	DB	'sais pas, je    '
	DB	'suis trop petit!'
        DB      WED
;
M11C;   Little kid Tamtam
;                0123456789ABCDEF
	DB	'M^sieu! Que     '
	DB	'pensez-vous de  '
	DB	'Marine? Moi?    '
	DB	'Ben! Je ne suis '
	DB	'qu^un gosse!'
        DB      WED
;
M11D;   TenTen
;                0123456789ABCDEF
	DB	'M^sieu! D^o=    '
	DB	'vous venez?     '
	DB	'De l^ext*rieur? '
	DB	'Je ne connais   '
	DB	'pas ce mot, je  '
	DB	'suis trop petit!'
        DB      WED
;
M11E;   Tomtom
;                0123456789ABCDEF
	DB	'L^Oeuf Sacr* du '
	DB	'Mt Tamaranch?   '
	DB	'Il para/t que le'
	DB	'Poisson-R<ve    '
	DB	'dort dedans.    '
	DB	'Je ne sais pas, '
	DB	'je suis un m]me!'
        DB      WED
;
M11F;   Kenken
;                0123456789ABCDEF
	DB	'Depuis quand    '
	DB	'nous vivons     '
	DB	'sur cette /le?  '
	DB	'Qu^est-ce que   '
	DB	'cela signifie : '
	DB	'depuis quand?   '
	DB	'N^oubliez pas   '
	DB	'que je ne suis  '
	DB	'qu^un gosse!'
        DB      WED
;
M120;   Boy by weathercock
;                0123456789ABCDEF
	DB	'Souvent, Marine '
	DB	'va toute seule  '
	DB	'regarder la mer.'
	DB	'Pourquoi? Je ne '
	DB	'sais pas moi,   '
	DB	'je ne suis      '
	DB	'qu^un gosse!'
        DB      WED
;
M121;   Kid when player is with Marin Option
;                0123456789ABCDEF
	DB	'O= allez-vous   '
	DB	'tous les deux?  '
	DB	'Mais non, je    '
	DB	'n^insinue rien! '
	DB	'Moi, je ne suis '
	DB	'qu^un gosse!'
        DB      WED
;
M122;   Boy by Dream Shrine
;                0123456789ABCDEF
	DB	'H* M^sieu!      '
	DB	'A propos du G/te'
	DB	'des R<ves...    '
	DB	'A l^int*rieur,  '
	DB	'il y a un ...   '
	DB	'Mais comme      '
	DB	'je ne suis qu^un'
	DB	'gosse, je n^en  '
	DB	'dirai pas plus!'
        DB      WED
;
M123;   After Link leaves Marin
;                0123456789ABCDEF
	DB	'Quoi? Marine    '
	DB	'n^est plus l%?  '
	DB	'Que lui est-il  '
	DB	'arriv*?'
        DB      WED
;
M124;
	DB	'WHOA! Il est    '
	DB	'*norme! H* le   '
	DB	'photographe!    '
	DB	'Peux-tu prendre '
	DB	'une photo?'
        DB      WED

M125;
	DB	'Je suis s\r     '
	DB	'd^attraper un   '
	DB	'gros poisson.'
        DB      WED

M126;
	DB	'Si tu sais      '
	DB	'garder un secret'
	DB	'*coute ceci...  '
	DB	'Va sur la plage '
	DB	'Coco et utilise '
	DB	'une loupe. Tu   '
	DB	'y trouveras un  '
	DB	'ami.'
        DB      WED

;
M127;   If reply to 12B is NO
;                0123456789ABCDEF
	DB	'Tant pis...     '
	DB	'C^est dommage!'
        DB      WED
;
M128;   If reply to 12B is YES
;                0123456789ABCDEF
	DB	'Oh! Merci!      '
	DB	'Tu es un        '
	DB	'gentil gar_on.  '
	DB	'En *change, je  '
	DB	'te donne ceci.'
        DB      WED
;
M129;   Trade Yoshi for Hair Ribbon
;                0123456789ABCDEF
	DB	'Tu *changes ton '
		;0   123456789abcdef
	DB	IT1,' contre ce     '
		;012345   6   789ancdef
	DB	'Ruban ',IT2,' .       '
	DB	'Peut-<tre le    '
	DB	'troqueras-tu    '
	DB	'par la suite...'
        DB      WED
;
M12A;   First time, Quads mother speech
	DB	'J^ai trop de    '
	DB	'b*b*s! Ils se   '
	DB	'ressemblent tous'
	DB	'en plus! Au fait'
	DB	'sais-tu o=      '
	DB	'trouver un      '
	DB	'Yoshi? J^en ai  '
	DB	'vu un au jeu du '
	DB	'hasard mais je  '
	DB	'n^ai pas pu     '
	DB	'l^avoir.'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Ces quadrupl*s  '
;;;11/20	DB	'se ressemblent  '
;;;11/20	DB	'tellement que   '
;;;11/20	DB	'j^en perds      '
;;;11/20	DB	'mon latin...    '
;;;11/20	DB	'Au fait, mon    '
;;;11/20	DB	'b*b* aimerait   '
;;;11/20	DB	'avoir un Yoshi. '
;;;11/20	DB	'C^est emb<tant, '
;;;11/20	DB	'je ne sais pas  '
;;;11/20	DB	'quoi faire!'
;;;11/20        DB      WED
;
M12B;   When you have Yoshi doll
;                0123456789ABCDEF
	DB	'Tu offres       '
	DB	'ce Yoshi        '
	DB	'% mon b*b*?     '
        DB      '    Oui  Non'
        DB      WE2
;
M12C;   After exchanging ribbom
;                0123456789ABCDEF
	DB	'Ces quatre l% se'
	DB	'ressemblent tant'
	DB	'que moi-m<me,   '
	DB	'je m^y perds...'
        DB      WED
;
M12D;   PRINCE RICHARD, when you have bowwow
;                0123456789ABCDEF
	DB	'Hum, comment    '
	DB	'te dire? Mais!  '
	DB	'... Je fais une '
	DB	'allergie        '
	DB	'aux poils...    '
	DB	'On discutera    '
	DB	'quand tu seras  '
	DB	'sans ce Toutou. '
	DB	'Tchao!'
        DB      WED
;
M12E;
	DB	'Qui est ce      '
	DB	'fant]me? Je suis'
	DB	's\r qu^il est   '
	DB	'heureux gr$ce % '
	DB	'toi. Es-tu pr<t '
	DB	'pour la photo?'
        DB      WED

;
M12F;   Madam Meowmeow
;                0123456789ABCDEF
	DB	'Je te suis      '
	DB	'vraiment        '
	DB	'reconnaissante! '
	DB	'C^est si gentil '
	DB	'd^avoir ramen*  '
	DB	'mon Toutou!     '
	DB	'Comment         '
	DB	'te prouver      '
	DB	'ma gratitude??  '
	DB	'BISOU BISOU...  '
	DB	'Tu as eu la     '
	DB	'r*compense de   '
	DB	'Mme Miaou Miaou.'
	DB	'Petit veinard...'
        DB      WED
;
M130;   Madam Meowmeow, first speech
;                0123456789ABCDEF
	DB	'Hmmm...         '
	DB	'Mon Toutou      '
	DB	'est si fier     '
	DB	'de son pelage!'
        DB      WED
;
M131;   When BowWow is gone
;                0123456789ABCDEF
	DB	'Au secours!     '
	DB	'Quelle horreur! '
	DB	'Toutou a *t*    '
	DB	'chien-napp* par '
	DB	'des Moblins!    '
	DB	'OHH! AHH!       '
	DB	'Je t^en prie,   '
	DB	'va secourir     '
	DB	'mon Toutou!'
        DB      WED
;
M132;   When player brings BowWow back
;                0123456789ABCDEF
	DB	'Ah! Tu m^as     '
	DB	'ramen* mon      '
	DB	'Toutou ador*!   '
	DB	'Quelle joie!    '
	DB	'Et en plus,     '
	DB	'tu veux aller   '
	DB	'le promener?    '
	DB	'Cela m^arrange! '
	DB	'Du fond de mon  '
	DB	'coeur, merci!'
        DB      WED
;
M133;  Mr Write
;                0123456789ABCDEF
	DB	'Bonjour, je suis'
	DB	'Mr Wright.      '
	DB	'Mon hobby,      '
	DB	'c^est *crire    '
	DB	'des lettres...  '
	DB	'Le probl+me,    '
	DB	'c^est que       '
	DB	'quand j^*cris,  '
	DB	'je n^ai jamais  '
	DB	'de r*ponse...'
        DB      WED
;
M134;   When player brings him a letter
;                0123456789ABCDEF
	DB	'Une lettre?     '
	DB	'Pour moi?       '
	DB	'Mais c^est      '
	DB	'formidable...   '
	DB	'Il y a m<me     '
	DB	'une photo!'
        DB      WED
;
M135;   continued
;                0123456789ABCDEF
	DB	'Ohhh...         '
	DB	'Quelle beaut*!  '
	DB	'J^aimerais      '
	DB	'te remercier    '
	DB	'mais je n^ai    '
	DB	'que ce balai    '
	DB	'% t^offrir...   '
	DB	'En veux-tu?     '
        DB      '    Oui  Non'
        DB      WE2
;
M136;   If M135 = Fine
;                0123456789ABCDEF
	DB	'Mr Wright t^a   '
	DB	'offert un ',IT9,'.    '
	DB	'Mais...         '
	DB	'cette photo...  '
	DB	'ce n^est pas...'
        DB      WED
;
M137;   If M135 = no good
;                0123456789ABCDEF
	DB	'Vraiment,       '
	DB	'j^insiste...    '
	DB	'Prends ce ',IT9,'!    '
        DB      '    Oui  Non'
        DB      WE2
;
M138;   After the trade
;                0123456789ABCDEF
	DB	'L^*criture,     '
	DB	'c^est vraiment  '
	DB	'mon hobby!'
        DB      WED
;
M139;   Second speech after exchange
;                0123456789ABCDEF
	DB	'Bonjour! Je     '
	DB	'r*ponds %       '
	DB	'Christine!'
        DB      WED
;
M13A;   RICHARD, first speech w/o BowWow
;                0123456789ABCDEF
	DB	'Cela semble     '
	DB	'incroyable,     '
	DB	'mais avant,     '
	DB	'je vivais dans  '
	DB	'un ch$teau.     '
	DB	'Je me suis enfui'
	DB	'quand mes gardes'
	DB	'ont *t*         '
	DB	'ensorcel*s...   '
	DB	'Et toi, tu      '
	DB	'cherches la cl* '
	DB	'de La Prairie?  '
	DB	'Ecoute, j^ai    '
	DB	'un march*       '
	DB	'% te proposer : '
	DB	'quand je me     '
	DB	'suis enfui, j^ai'
	DB	'oubli* mes      '
	DB	'Feuilles d^Or.  '
	DB	'Peux-tu me      '
	DB	'les ramener,    '
	DB	'mon cher ami?   '
        DB      '    Oui  Non'
        DB      WE2
;
M13B;   When 13A is OKAY
	DB	'Il existe en    '
	DB	'tout cinq       '
	DB	'feuilles d^Or.  '
	DB	'Souviens-toi    '
	DB	'd^acheter une   '
	DB	'pelle.'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Cher ami,       '
;;;11/20	DB	'je suis *mu!    '
;;;11/20	DB	'A propos,       '
;;;11/20	DB	'il y en a cinq  '
;;;11/20	DB	'et il me les    '
;;;11/20	DB	'faut toutes...  '
;;;11/20	DB	'Oh! Il serait   '
;;;11/20	DB	'sage d^acqu*rir '
;;;11/20	DB	'une Pelle... Je '
;;;11/20	DB	'compte sur toi. '
;;;11/20	DB	'Va les chercher.'
;;;11/20        DB      WED
;
M13C;   When 13B is No Way
;                0123456789ABCDEF
	DB	'Qu^ou[s-je??    '
	DB	'Un refus? Je ne '
	DB	'puis supporter  '
	DB	'les pleutres!   '
	DB	'Hors de ma vue, '
	DB	'paysan!...'
        DB      WED
;
M13D;  When you got all the leaves
;                0123456789ABCDEF
	DB	'Cher ami,       '
	DB	'tu as retrouv*  '
	DB	'mes Feuilles!   '
	DB	'Fort bien donc. '
	DB	'D*place         '
	DB	'cette bo/te.    '
	DB	'Une surprise    '
	DB	't^attend!'
        DB      WED
;
M13E;   If player talks to Richard again
;                0123456789ABCDEF
	DB	'Gr$ce % toi,j^ai'
	DB	'mes Feuilles!   '
	DB	'Je te suis      '
	DB	'reconnaissant.'
        DB      WED
;
M13F;   When you bring 1-4 leaves
;                0123456789ABCDEF
	DB	'##### mon ami,  '
	DB	'au nom de la    '
	DB	'justice et...   '
	DB	'en mon nom...   '
	DB	'tu dois trouver '
	DB	'les 5 Feuilles! '
        DB      WED
;
M140;  Hints from Ulrira
;                0123456789ABCDEF
	DB	'Heu... Hum...   '
	DB	'Comment dire?   '
	DB	'T*l*phone...    '
	DB	'A l^ext*rieur...'
	DB	'P*p* le Ramollo '
	DB	'n^a pas l^air   '
	DB	'd^<tre un grand '
	DB	'causeur...'
        DB      WED
;
M141;   Speech of Ulrira through phone
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'Je sais tout de '
	DB	'cette /le!      '
	DB	'Si tu te perds, '
	DB	'passe-moi un    '
	DB	'coup de fil!    '
	DB	'Salut!  CLIC! '
        DB      WED
;
M142;   Ulrira 2  Moblins
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'Habitants de la '
	DB	'For<t Enchant*e,'
	DB	'les Moblins     '
	DB	'vivent *galement'
	DB	'dans la cave du '
	DB	'Plateau Tartare.'
	DB	'Salut! CLIC!'
        DB      WED
;
M143;   Ulrira 3  Flowers in swamp
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'Les fleurs du   '
	DB	'Marais des      '
	DB	'An*mones sont   '
	DB	'les pr*f*r*es de'
	DB	'Toutou. C^est ce'
	DB	'qu^on dit...    '
	DB	'Pourquoi        '
	DB	'n^y vas-tu pas? '
	DB	'Salut! CLIC!'
        DB      WED
;
M144;   Ulrira 4  Richard
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'As-tu rencontr* '
	DB	'tous les gens   '
	DB	'de cette /le?   '
	DB	'Au Sud-Est du   '
	DB	'village, % c]t* '
	DB	'du Champ        '
	DB	'aux Pi+ges,     '
	DB	'vit un homme    '
	DB	'appel* Richard. '
	DB	'Je te conseille '
	DB	'd^aller le voir.'
	DB	'Salut! CLIC!'
        DB      WED
;
M145;   Ulrira 5   Bananas
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'Si tu veux des  '
	DB	'bananes, parle  '
	DB	'de nouveau aux  '
	DB	'gens du village.'
	DB	'Salut! CLIC!'
        DB      WED
;
M146;   Ulrira 6  Library
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'Il y a une      '
	DB	'biblioth+que    '
	DB	'dans le village.'
	DB	'Peut-<tre       '
	DB	'apportera-t^elle'
	DB	'une r*ponse %   '
	DB	'tes questions?  '
	DB	'Salut! CLIC!'
        DB      WED
;
M147;   Ulrira 7 Leaves
	DB	'DRRING! DRRING! '
	DB	'C^est moi! P*p*!'
	DB	'Tu n^as pas     '
	DB	'trouv* les cinq '
	DB	'feuilles d^Or?  '
	DB	'Va parler au    '
	DB	'corbeau du      '
	DB	'ch$teau. Il peut'
	DB	's\rement aider  '
	DB	'un p^tit gars   '
	DB	'comme toi!      '
	DB	'CLIC!'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'DRING DRING!!   '
;;;11/20	DB	'P*p* le Ramollo '
;;;11/20	DB	'% l^appareil... '
;;;11/20	DB	'Tu ne trouves   '
;;;11/20	DB	'pas toutes      '
;;;11/20	DB	'les Feuilles?   '
;;;11/20	DB	'Il est possible '
;;;11/20	DB	'que le corbeau  '
;;;11/20	DB	'du ch$teau cache'
;;;11/20	DB	'quelque chose.  '
;;;11/20	DB	'Va le voir...   '
;;;11/20	DB	'Salut! CLIC!'
;;;11/20        DB      WED
;
M148;   Ulrira 8  Shovel
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'As-tu achet*    '
	DB	'une Pelle?      '
	DB	'Creuse le sol,  '
	DB	'peut-<tre       '
	DB	'auras-tu        '
	DB	'de la chance?   '
	DB	'Salut! CLIC!'
        DB      WED
;
M149;   Ulrira 9   Ukuku Prairie Key Cave
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'Va vite % la    '
	DB	'Cave aux Cl*s,  '
	DB	'situ*e dans     '
	DB	'La Prairie.     '
	DB	'Salut! CLIC!'
        DB      WED
;
M14A;   Ulrira 10  Angler's key
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'Apparemment,    '
	DB	'dans les        '
	DB	'Dunes de Yarna, '
	DB	'au Sud-Est      '
	DB	'de l^/le,       '
	DB	'se trouve la    '
	DB	'Cl*-Poisson.    '
	DB	'Ecoute, je ne   '
	DB	'peux pas <tre   '
	DB	'plus explicite  '
	DB	'que cela...     '
	DB	'Salut! CLIC!'
        DB      WED
;
M14B;   Ulrira 11 Ghost
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'Tu es hant*     '
	DB	'par un fant]me? '
	DB	'Je te conseille '
	DB	'de l^amener l%  '
	DB	'o= il veut.     '
	DB	'Salut! CLIC!'
        DB      WED
;
M14C;   Ulrira 12 Catfish
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'Dans la Baie,   '
	DB	'un Poisson-Chat '
	DB	'ouvre sa gueule.'
	DB	'Va donc y nager.'
	DB	'Salut! CLIC!'
        DB      WED
;
M14D;   Ulrira 13 Level 6
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'Es-tu all* au   '
	DB	'Temple du Masque'
	DB	'situ* au Nord   '
	DB	'du Village      '
	DB	'des Animaux?    '
	DB	'Salut! CLIC!'
        DB      WED
;
M14E;   Ulrira Bird
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'Connais-tu      '
	DB	'le Coq Volant   '
	DB	'du Village      '
	DB	'des Mouettes?   '
	DB	'Autrefois,      '
	DB	'je m^agrippais  '
	DB	'% ses pattes    '
	DB	'et je volais!   '
	DB	'H*las...        '
	DB	'Il est mort et  '
	DB	'g/t d*sormais   '
	DB	'sous la         '
	DB	'Girouette.      '
	DB	'Salut! CLIC!'
        DB      WED
;
M14F;   Ulrira Turtle Rock
;                0123456789ABCDEF
	DB	'DRING DRING!!   '
	DB	'P*p* le Ramollo '
	DB	'% l^appareil... '
	DB	'La t<te de la   '
	DB	'tortue te g<ne? '
	DB	'Donne-lui       '
	DB	'de la vie pour  '
	DB	'la d*placer...  '
	DB	'Salut! CLIC!'
        DB      WED
;
M150;  DUNGEON CLEAR MESSAGES, LEVEL 1
;                0123456789ABCDEF
	DB	'...MARAIS...    '
	DB	'La route m+ne au'
	DB	'marais fleuri.'
        DB      WED
;
M151;   Level 2 clear
;                0123456789ABCDEF
	DB	'...PRAIRIE...   '
	DB	'...PRAIRIE...   '
	DB	'Elle t^attend.'
        DB      WED
;
M152;   Level 3 clear
;                0123456789ABCDEF
	DB	'...CASCADE...   '
	DB	'C^est cach*     '
	DB	'sous la cascade.'
        DB      WED
;
M153;   Level 4 clear
;                0123456789ABCDEF
	DB	'...BAIE...      '
	DB	'Ta route passe  '
	DB	'par la baie.'
        DB      WED
;
M154;   Level 5 clear
;                0123456789ABCDEF
	DB	'...TEMPLE...    '
	DB	'Il renferme le  '
	DB	'secret de l^/le.'
        DB      WED
;
M155;   Level 6 clear
;                0123456789ABCDEF
	DB	'...MONTAGNE...  '
	DB	'Elle t^appelle.'
        DB      WED
;
M156;   Level 7 clear
;                0123456789ABCDEF
	DB	'...OCARINA...   '
	DB	'Sa musique      '
	DB	'te guidera.'
        DB      WED
;
M157;   Level 8 clear
;                0123456789ABCDEF
	DB	'L^heure a sonn*.'
	DB	'L^Oeuf Sacr*    '
	DB	'te r*clame.'
        DB      WED
;
M158;   not used
;
M159;   GRANDMA YAHOO, when answer to 15C is NO
;                0123456789ABCDEF
	DB	'Alors, TU       '
	DB	'balaieras l^/le!'
        DB      WED
;
M15A;   Yahoo, first time
;                0123456789ABCDEF
	DB	'YOUPI! J^ai la  '
	DB	'p<che! Et toi?  '
        DB      WED
;
M15B;   Yahoo, after #5 clear
;                0123456789ABCDEF
	DB	'YOUPI! J^ai     '
	DB	'trop travaill*  '
	DB	'et mon balai    '
	DB	'est tout us*!'
        DB      WED
;
M15C;   When player has broom
;                0123456789ABCDEF
	DB	'YOUPI YOUPI!!!  '
	DB	'Un balai neuf!  '
	DB	'Merci...        '
	DB	'C^est pour moi? '
        DB      '    Oui  Non'
        DB      WE2
;
M15D;   15C = YES
;                0123456789ABCDEF
	DB	'En r*compense,  '
	DB	'je te donne     '
	DB	'un Hame_on      '
	DB	'que j^ai trouv* '
	DB	'au bord de      '
	DB	'la rivi+re.'
        DB      WED
;
M15E;   Explanation
;                0123456789ABCDEF
	DB	'Tu as *chang*   '
	DB	'le ',IT9,' contre     '
	DB	'le ',ITa,'!           '
	DB	'Que feras-tu    '
	DB	'de celui-ci?'
        DB      WED
;
M15F;   Yahoo
;                0123456789ABCDEF
	DB	'YOUPI!          '
	DB	'Un balai neuf!  '
	DB	'C^est le top...'
        DB      WED
;
M160; SARU KIKI,  when you bring BowWow to Kiki
;                0123456789ABCDEF
	DB	'Kiiiki! Quoi?   '
	DB	'OK sale chien,  '
	DB	'on va se battre!'
        DB      WED
;
M161;   Player has no banana
;                0123456789ABCDEF
	DB	'Kkkkk!          '
	DB	'Kiki le singe!  '
	DB	'Kiki a faim!    '
	DB	'Kkkkkk!'
        DB      WED
;
M162;   When M165 = Yes
;                0123456789ABCDEF
	DB	IT4,', ',IT4,'! Kiki!     '
	DB	'Les copains,    '
	DB	'venez! On va    '
	DB	'le remercier!'
        DB      WED
;
M163;   When bridge is done
;                0123456789ABCDEF
	DB	'Le pont         '
	DB	'des singes      '
	DB	'est pr<t!       '
	DB	'Salut! Kiki!'
        DB      WED
;
M164;   Monkey left stick
;                0123456789ABCDEF
	DB	'Tu prends       '
	DB	'le b$ton        '
	DB	'que le singe    '
	DB	'a laiss*.'
        DB      WED
;
M165; When player brings banana to Kiki
;                0123456789ABCDEF
	DB	IT4,', ',IT4,' ...        '
	DB	'Miam Miam!      '
	DB	'Pour Kiki?      '
        DB      '    Oui  Non'
        DB      WE2
;
M166;   CHRISTINE THE GOAT, When enter w/o anything
;                0123456789ABCDEF
	DB	'Tu ne connais   '
	DB	'pas l^*tiquette '
	DB	'quand tu        '
	DB	'rends visite %  '
	DB	'une dame??      '
	DB	'Si tu m^avais   '
	DB	'apport*         '
	DB	'des fleurs,     '
	DB	'j^aurais *t*    '
	DB	'plus loquace.   '
	DB	'Personnellement,'
	DB	'j^adore les     '
	DB	'hibiscus...'
        DB      WED
;
M167;   When you have Hibiscus
;                0123456789ABCDEF
	DB	'Oh, tu m^as     '
	DB	'apport* un ',IT8,'!   '
	DB	'Comme           '
	DB	'c^est gentil!   '
	DB	'J^ai une faveur '
	DB	'% te demander.  '
	DB	'Je peux?        '
        DB      '    Oui  Non'
        DB      WE2
;
M168;   When answer to 167 is Yes
;                0123456789ABCDEF
	DB	'J^aimerais      '
	DB	'te confier      '
	DB	'une lettre      '
	DB	'pour Mr Wright, '
	DB	'qui habite      '
	DB	'dans la For<t.  '
	DB	'Merci d^avance! '
        DB      WED
;
M169;   When answer to 167 is NO
;                0123456789ABCDEF
	DB	'Ah bon...       '
	DB	'Et dire que je  '
	DB	'te prenais pour '
	DB	'un gentilhomme! '
        DB      WED
;
M16A;   After player says yes
;                0123456789ABCDEF
	DB	'Tu as *chang*   '
	DB	'l^ ',IT8,' contre une '
	DB	'lettre de ch+vre'
	DB	ITE,' ... Super! '
        DB      WED
;
M16B;   After exchanging, goat's speech
;                0123456789ABCDEF
	DB	'Je ne peux pas  '
	DB	'm^emp<cher      '
	DB	'de grignoter    '
	DB	'du papier.      '
	DB	'Quel d*lice!    '
	DB	'... M<me les    '
	DB	'lettres de mon  '
	DB	'cher Mr Wright! '
	DB	'... J^ai honte!!'
        DB      WED
;
M16C;   Event, when you first find BowWow
;                0123456789ABCDEF
	DB	'Tu as trouv*    '
	DB	'Toutou! Il a    '
	DB	'l^air f*roce...'
        DB      WED
;
M16D;   Event, when you play ocarina before rooster bones
;                0123456789ABCDEF
	DB	'Quelle surprise,'
	DB	'tu as ressuscit*'
	DB	'le coq!! Il a   '
	DB	'l^air content.'
        DB      WED
;
M16E; Not used
	DB	'DRING! DRING!   '
	DB	'C^est moi! P*p*!'
	DB	'Ma femme est    '
	DB	'all*e au Village'
	DB	'des Animaux et  '
	DB	'm^a laiss* tout '
	DB	'seul... Peux-tu '
	DB	'lui dire de     '
	DB	'revenir % la    '
	DB	'maison quand    '
	DB	'elle aura fini  '
	DB	'de faire le     '
	DB	'm*nage? CLIC!'
        DB      WED

M16F; Not used
	DB	'Grand m+re n^est'
	DB	'pas ici. Elle   '
	DB	'est au Village  '
	DB	'des Animaux.    '
	DB	'C^est ce que le '
	DB	'grand p+re a dit'
	DB	'au t*l*phone!   '
        DB      WED

;
M170;   PAPAHL, when player finds him in the mountains w/pineapple
;                0123456789ABCDEF
	DB	'Je te l^avais   '
	DB	'pr*dit : je me  '
 	DB	'suis perdu!     '
	DB	'J^ai trop faim  '
	DB	'pour faire un   '
	DB	'pas de plus.    '
	DB	'Me nourriras-tu?'
        DB      '    Oui  Non'
        DB      WE2
;
M171;   if M170 is No
;                0123456789ABCDEF
	DB	'C^est pas sympa!'
        DB      WED
;
M172;   If m170 = yes
;                0123456789ABCDEF
	DB	'Cet ',IT7,' a l^air   '
	DB	'd*licieux!      '
	DB	'En remerciement,'
	DB	'je mange l^',IT7,' .'
        DB      WED
;
M173;   After eating
;                0123456789ABCDEF
	DB	'Au fait!! Voici '
	DB	'un petit cadeau.'
	DB	'Je te donne     '
	DB	'cet ',IT8,' ... C^est '
	DB	'un Hibiscus.'
        DB      WED
;
M174;   computer after trade
;                0123456789ABCDEF
	DB	'Tu as *chang*   '
	DB	'l^',IT7,' contre      '
	DB	'l^',IT8,' !!'
        DB      WED
;
M175;   Papahl as he eats
;                0123456789ABCDEF
	DB	'Quel d*lice!    '
	DB	'Cela me donne   '
	DB	'des forces! '
        DB      WED
;
M176;   Papahl at home after saving him
;                0123456789ABCDEF
	DB	'Merci pour      '
	DB	'l^autre fois! '
        DB      WED
;
M177;   Player finds Papahl w/o pineapple
;                0123456789ABCDEF
	DB	'Je te l^avais   '
	DB	'pr*dit : je me  '
	DB	'suis perdu!     '
	DB	'J^ai trop faim  '
	DB	'pour faire un   '
	DB	'pas de plus.    '
	DB	'Me nourriras-tu?'
        DB      '    Non! Non'
        DB      WE2
;
M178;   Yahoo in front of Meowmeow's house
;                0123456789ABCDEF
	DB	'Il s^est pass*  '
	DB	'une v*ritable   '
	DB	'trag*die chez ma'
	DB	'voisine d^en    '
	DB	'face! Que faire?'
	DB	'Moi, je ne sais '
	DB	'que balayer!!'
        DB      WED
;
M179; 
	DB	'Je suis l^esprit'
	DB	'du manoir...    '
	DB	'Triomphe des    '
	DB	't*n+bres, trouve'
	DB	'les coquillages '
	DB	'et emprunte les '
	DB	'portes pour     '
	DB	'gagner l^Ep*e!  '
        DB      WED

M17A;
	DB	'Hmmm. Pas de    '
	DB	'r*ponse. Vous   '
	DB	'n^avez pas assez'
	DB	'de coquillages. '
        DB      WED

M17B;   
	DB	'Ma mission est  '
	DB	'termin*e.       '
        DB      WED

M17C;   
	DB	'H* toi! Es-tu   '
	DB	'all* chez le    '
	DB	'photographe du  '
	DB	'Plateau Tartare?'
	DB	'On dit que les  '
	DB	'jeunes adorent  '
	DB	'cet endroit!    '
	DB	'Je ne vois pas  '
	DB	'pourquoi...'
        DB      WED

M17D;    NOT USED
	DB	'Viens te faire  '
	DB	'tirer le        '
	DB	'portrait!'
        DB      WED

;;;12/08	DB	'Viens te faire  '
;;;12/08	DB	'tirer le portrait!'
;;;12/08        DB      WED

M17E;   
	DB	'Bien jou*!      '
	DB	'Essaie donc ceci'
	DB	'sur tes ennemis '
	DB	'et... Surprise! '
	DB	'Si tu es % court'
	DB	'va chercher des '
	DB	'champignons dans'
	DB	'la for<t. Je te '
	DB	'pr*parerai une  '
	DB	'nouvelle dose!'
        DB      WED

M17F;  
	DB	'. . . .! Je ne  '
	DB	'peux pas bouger!'
	DB	'Mais je vais    '
	DB	'bien. Ta petite '
	DB	'*p*e ne pourra  '
	DB	'pas briser cette'
	DB	'bouteille!'
        DB      WED

;====================================================================
BANK1D  GROUP   $1D
        ORG     $4000
;====================================================================
M180;           KYAN KYAN, BowWow's Puppy, first speech
;                0123456789ABCDEF
	DB	'Ouaf Ouaf!      '
	DB	'Je suis un chien'
	DB	'tr+s branch*!   '
	DB	'J^aimerais avoir'
	DB	'des accessoires '
	DB	'% la mode!'
        DB      WED
;
M181;   If you have the ribbon
;                0123456789ABCDEF
	DB	'Ouaf Ouaf!      '
	DB	'Je suis un chien'
	DB	'tr+s branch*!   '
	DB	'Ce ',IT2,' ,          '
	DB	'c^est d^un chic!'
	DB	'Il me le faut   '
	DB	'absolument...   '
	DB	'Tu l^*changes   '
	DB	'contre          '
	DB	'ma p$t*e?       '
        DB      '    Oui  Non'
        DB      WE2
;
M182;   computer after exchange
;                0123456789ABCDEF
	DB	'Tu as *chang*   '
	DB	'le ',IT2,' contre     '
	DB	'la p$t*e ',IT3,'!'
        DB      WED
;
M183;   M181 = Yes
;                0123456789ABCDEF
	DB	'G*nial, merci!  '
	DB	'En *change,     '
	DB	'voici ma ',IT3,' ...'
        DB      WED
;
M184;   M184 = No
;                0123456789ABCDEF
	DB	'Je n^arrive pas '
	DB	'% y croire...   '
	DB	'Tu es nul!'
        DB      WED
;
M185;           MAMBO, the big fish
;                0123456789ABCDEF
	DB	'Je suis Manbo,  '
	DB	'descendant du   '
	DB	'Poisson-Lune.   '
	DB	'As-tu l^Ocarina?'
        DB      '    Oui  Non'
        DB      WE2
;
M186;   Answer 185 no
;                0123456789ABCDEF
	DB	'Ah bon?!        '
	DB	'Glou Glou...'
        DB      WED
;
M187;   Answer 185 yes
;                0123456789ABCDEF
	DB	'Alors, je vais  '
	DB	't^apprendre     '
	DB	'ma chanson!'
        DB      WED
;
M188;   When you learn his song
;                0123456789ABCDEF
	DB	'Tu as appris le '
	DB	'Mambo de Manbo! '
	DB	'Quand tu        '
	DB	'sors de l^eau,  '
	DB	'joue cet air!'
        DB      WED
;
M189;   After you learn the song
;                0123456789ABCDEF
	DB	'Je suis Manbo,  '
	DB	'descendant du   '
	DB	'Poisson-Lune.   '
	DB	'Joue mon        '
	DB	'Mambo pour te   '
	DB	't*l*porter      '
	DB	'% la mare Bobo. '
	DB	'Joue aussi dans '
	DB	'les donjons!'
        DB      WED
;
M18A;   When player doesn't have the ocarina
;                0123456789ABCDEF
	DB	'Oh! Tu n^as pas '
	DB	'd^Ocarina...    '
	DB	'Gloup Gloup!'
        DB      WED
;
M18B;   HEN HOUSE ON MOUNTAIN
;                0123456789ABCDEF
	DB	'De nos jours,   '
	DB	'les coqs n^ont  '
	DB	'plus la m<me    '
	DB	'combativit*!    '
	DB	'Autrefois,      '
	DB	'j^avais un coq  '
	DB	'qui volait!     '
	DB	'Ce n^est pas    '
	DB	'une blague!'
        DB      WED
;
M18C;   When player has flying rooster
;                0123456789ABCDEF
	DB	'Fantastique!    '
	DB	'Ce coq vole     '
	DB	'vraiment!       '
	DB	'Tu vois que je  '
	DB	'ne mentais pas. '
	DB	'Essaie par      '
	DB	'toi-m<me :      '
	DB	'brandis-le!!'
        DB      WED
;
M18D;   When player returns after giving flying rooster
;                0123456789ABCDEF
	DB	'Un coq volant,  '
	DB	'c^est bien trop '
	DB	'marrant...'
        DB      WED
;
M18E;   sign on Weathercock
;                0123456789ABCDEF
	DB	'Ci-g/t          '
	DB	'le Coq Volant.'
        DB      WED
;
M18F;
	DB	'Cezi est-ce la  '
	DB	'fameuze *caille?'
	DB	'Je dois terminer'
	DB	'zette peinture. '
	DB	'Va donc voir la '
	DB	'ztatue de la    '
	DB	'zir+ne, OK?'
	DB	WED

M190;   MOBLIN BOSS, when player enters cave to save BowWow
;                0123456789ABCDEF
	DB	'C^est qui       '
	DB	'ce freluquet?   '
	DB	'Les gars,       '
	DB	'd*barrassez-moi '
	DB	'vite de lui!'
        DB      WED
;
M191;           continued
;                0123456789ABCDEF
	DB	'Tu es venu      '
	DB	'chercher Toutou?'
	DB	'Tu dois <tre    '
	DB	'le mercenaire   '
	DB	'envoy* par      '
	DB	'Mme Miaou Miaou.'
	DB	'Je vais te      '
	DB	'corriger!!'
        DB      WED
;
M192;   MARIN in the Animal Village, w/o ocarina & no song
;                0123456789ABCDEF
	DB	'H* #####,       '
	DB	'je viens souvent'
	DB	'chanter         '
	DB	'dans ce village.'
	DB	'Tout le monde   '
	DB	'adore ma Ballade'
	DB	'du Poisson-R<ve.'
	DB	'Et toi #####,   '
	DB	'qu^est-ce que   '
	DB	'tu aimes?'
        DB      WED
;
M193;            After player learns song
;                0123456789ABCDEF
	DB	'N^oublie jamais '
	DB	'ma Ballade!     '
	DB	'... Ni moi...'
        DB      WED
;
M194;   After saving MARIN on suspension bridge
;                0123456789ABCDEF
	DB	'Merci pour      '
	DB	'ton aide #####. '
	DB	'Tu *tais g*nial.'
	DB	'Tout % l^heure, '
	DB	'j^ai fait part  '
	DB	'd^un voeu       '
	DB	'au Poisson-R<ve.'
	DB	'Ce que c^*tait? '
	DB	'C^est un secret!'
        DB      WED
;
M195;   Continued
;                0123456789ABCDEF
	DB	'Un jour #####,  '
	DB	'tu quitteras    '
	DB	'cette /le.      '
	DB	'C^est vrai!     '
	DB	'Mon coeur ne    '
	DB	'saurait mentir. '
	DB	'Ne m^oublie pas '
	DB	'car jamais      '
	DB	'je ne pourrais  '
	DB	'te pardonner!'
        DB      WED
;
M196;   Animal listening to Marin's song
;                0123456789ABCDEF
	DB	'... ... ... ... '
	DB	'La chanson de   '
	DB	'Marine semble   '
	DB	'l^envo\ter!'
        DB      WED
;
M197;   Marin -3
;                0123456789ABCDEF
	DB	'On dit que      '
	DB	'la Ballade      '
	DB	'du Poisson-R<ve '
	DB	'est la Chanson  '
	DB	'd^Eveil. Si le  '
	DB	'Poisson-R<ve    '
	DB	'se r*veille,    '
	DB	'exaucera-t^il   '
	DB	'mon voeu?'
        DB      WED
;
M198;   Marin Option, if you try to go into dungeon
;                0123456789ABCDEF
	DB	'Quoi? Tu veux   '
	DB	'entrer l%?      '
	DB	'Heu, je pr*f+re '
	DB	'attendre dehors.'
	DB	'Sois prudent    '
	DB	'#####!'
        DB      WED
;
M199;   If player breaks pots with Marin
;                0123456789ABCDEF
	DB	'Oh l% l%!       '
	DB	'Ce n^est pas    '
	DB	'bien #####!'
        DB      WED
;
M19A;   After buying medicine from Tracy
;                0123456789ABCDEF
	DB	'Voici un        '
	DB	'petit bonus.    '
	DB	'Je restaure tous'
	DB	'tes Coeurs!'
        DB      WED
;
M19B;   Schule, alligator artist, first speech
;                0123456789ABCDEF
	DB	'Ya, je zuis Sven'
	DB	'Donavitch!  La  '
	DB	'ztatue de la    '
	DB	'zir+ne pr+s de  '
	DB	'la baie est mon '
	DB	'chef-d^oeuvre   '
	DB	'inachev*...     '
	DB	'L^art... Z^est  '
	DB	'dur, hein?'
        DB      WED
;
M19C;   Mermaid statue sign
;                0123456789ABCDEF
	DB	'LA PETITE       '
	DB	'SIRENE          '
	DB	'Par ALLIGODALI  '
	DB	'?... Il manque  '
	DB	'une *caille...?'
        DB      WED
;
M19D;   PLACARDS
;                0123456789ABCDEF
	DB	'Maison aux      '
	DB	'Coquillages'
        DB      WED
;
M19E
;                0  123456789ABCDEF
	DB	XR,' Entr*e des    '
	DB	'  Dunes de Yarna'
        DB      WED
;
M19F; deleted
;
M1A0;
;                0123456789ABCDEF
	DB	'For<t Enchant*e '
	DB	'(Un peu         '
	DB	'*nigmatique)    '
        DB      WED
;
M1A1
;                0123456789ABCDEF
	DB	'Tu veux         '
	db	'descendre       '
	DB	'les rapides     '
	DB	'en radeau?      '
	DB	'Renseigne-toi   '
	DB	'% l^int*rieur.'
        DB      WED
;
M1A2
;                0123456789ABCDEF
	DB	'Est ',XR,' Prairie   '
	DB	'Plus % l^Est    '
	DB	'Village         '
	DB	'des Animaux'
        DB      WED
;
M1A3
;                0123456789ABCDEF
	DB	'Mt Tamaranch'
        DB      WED
;
M1A4; south of the village
;                0  123456789ABCDEF
	DB	XR,' Cave Flagello '
	DB	XD,' Plage Coco'
        DB      WED
;
M1A5;   West of swamp
;                0  123456789ABCDEF
	DB	XR,' Mrs An*mones  '
	DB	XD,' For<t         '
	DB	'  Enchant*e'
        DB      WED
;
M1A6;   Mysterious Forest, in front of tunnel
;                0123456789ABCDEF
	DB	'Attention au    '
	DB	'plancher        '
	DB	'fissur*.        '
	DB	'Rondouillards : '
	DB	'abstenez-vous !'
        DB      WED
;
M1A7
;                0123456789ABCDEF
	db	'Cabine          '
	DB	't*l*phonique'
        DB      WED
;
M1A8;   Swamp
;                0123456789ABCDEF
	DB	'Acc+s interdit! '
	DB	'(sauf Toutou)'
        DB      WED
;
M1A9; outside signpost maze
;                0123456789ABCDEF
	DB	XD,' Par ici !'
        DB      WED
;
M1AA; in maze
;                0123456789ABCDEF
	DB	XU,' Par ici !'
        DB      WED
;
M1AB
;                0123456789ABCDEF
	DB	XR,' Par ici !'
        DB      WED
;
M1AC
;                0123456789ABCDEF
	DB	XL,' Par ici !'
        DB      WED
;
M1AD; if you make a mistake
;                0123456789ABCDEF
	DB	'RETOUR A LA     '
	DB	'CASE DEPART!'
        DB      WED
;
M1AE; if finish maze
;                0123456789ABCDEF
	DB	'TU AS REUSSI!   '
	DB	'PAR ICI ',XR,'       '
	DB	'SURPRISE!!'
        DB      WED
;
M1AF; frog's sign after song is learned
;                0123456789ABCDEF
	DB	'EN TOURNEE      '
	DB	'Sign* : WART'
        DB      WED
;
M1B0; sign outside tracy's
;                0  123456789ABCDEF
	DB	XR,' Chez Monique  '
	DB	XD,' Mare Bobo'
        DB      WED
;
M1B1
;                0  123456789ABCDEF
	DB	XR,' Village des   '
	        ;0123456789ABCDEF
	DB	'  Animaux       '
	DB	XD,' Baie          '
	DB	'  de Martha'
        DB      WED
;
M1B2
;                0  123456789ABCDEF
	DB	XR,' Enfin! Vill.  '
	DB	'  des Animaux'
        DB      WED
;
M1B3
;                0123456789ABCDEF
	DB	XR,' Cimeti+re     '
	DB	XD,' La Prairie'
        DB      WED
;
M1B4
	DB	'Tu es pr+s du   '
	DB	'Plateau Tartare.'
	DB	'Le photographe  '
	DB	'n^est pas loin.'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20	DB	'Plateau Tartare'
;;;11/20        DB      WED
;
M1B5
;                0123456789ABCDEF
	DB	XR,' Mt Tamaranch  '
	DB	XL,' Mrs An*mones'
        DB      WED
;
M1B6;       ***OWL STATUES***, #1
;                0123456789ABCDEF
	DB	'VA VOIR         '
	DB	'L^OEUF SACRE. IL'
	DB	'REPOND AUX SONS.'
        DB      WED
;
M1B7;   #2
;                0123456789ABCDEF
	DB	'LE POISSON-REVE,'
	DB	'NE L^EST-T^IL   '
	DB	'QUE DE NOM?'
        DB      WED
;
M1B8;   #3
;                0123456789ABCDEF
	DB	'SOUS TES PIEDS, '
	DB	'DORT UN SECRET.'
        DB      WED
;
M1B9;   #4
;                0123456789ABCDEF
	DB	'SOUS TES PIEDS, '
	DB	'DORT UN SECRET.'
        DB      WED
;
M1BA;   #5
;                0123456789ABCDEF
	DB	'TOUT PRES D^ICI,'
	DB	'DORT UN SECRET.'
        DB      WED
;
M1BB;   #6
;                0123456789ABCDEF
	DB	'LES SECRETS     '
	DB	'SONT COMME L^EAU'
	DB	'SOUS LE PONT.'
        DB      WED
;
M1BC;
;                0123456789ABCDEF
	DB	'PRES D^ICI,     '
	DB	'PAS DE SECRET.'
        DB      WED
;
M1BD;
;                0123456789ABCDEF
	DB	'LE POISSON-REVE.'
	DB	'S^IL NE SE      '
	DB	'REVEILLE PAS,   '
	DB	'TU PERIRAS...'
        DB      WED
;
M1BE;
;                0123456789ABCDEF
	DB	'LORSQUE         '
	DB	'TU TE REVEILLES,'
	DB	'LE REVE CESSE.  '
	DB	'... LES         '
	DB	'MONSTRES AUSSI.'
        DB      wed
;
M1BF;   Deleted
;
M1C0;   TARIN w/ stick
;
;;               0123456789ABCDEF
	DB	'##### ! Ton     '
	DB	'truc me pla/t.  '
	DB	'J^te donne du   '
	DB	'Miel pour       '
	DB	'c^B$ton. Alors? '
        DB      '    Oui  Non'
        DB      WE2
;
M1C1;   When answer is yes, after Tarin chased by bees
;
;;               0123456789ABCDEF
	DB	'Tu as *chang*   '
	DB	'le ',IT5,' contre     '
		;01234567   8   9ABCDEF
	DB	'le Miel ',IT6,' .     '
	DB	'Pour quoi faire,'
	DB	'tu verras bien!'
        DB      WED
;
M1C2;   When answer is NO to M1C0
;
;;               0123456789ABCDEF
	DB	'#####, t^es     '
	DB	'qu^un radin!'
        DB      WED
;
M1C3; Placard on Beach
;
	DB	'Attention       '
	DB	'aux oursins!    '
	DB	'Se prot*ger avec'
	DB	'un bouclier!'
        DB      WED
;
M1C4;   not used
M1C5;   Tarin eating bananas at home
;
	DB	'J^avais la dalle'
	DB	'alors j^suis    '
	DB	'all* chercher   '
	DB	'des bananes     '
	DB	'sur la plage!   '
	DB	'MIAM MIAM !     '
	DB	'#####           '
	DB	'si t^en veux,   '
	DB	'fais comm^moi.'
        DB      WED
;
M1C6;   Banana seller SALE
;
	DB	'Bienvenue chez  '
	DB	'AlligoBanane!   '
	DB	'lci j^entrepose.'
	DB	'Mon hobby, c^est'
	DB	'collectionner   '
	DB	'des bo/tes      '
	DB	'de conserve.    '
	DB	'Mon fr+re cadet '
	DB	'est un artiste. '
	DB	'Moi...          '
	DB	'Je suis plus    '
	DB	'terre % terre.  '
	DB	'J^adore manger!'
        DB      WED
;
M1C7;   With dog food
;
	DB	'Mais qu^est-ce  '
	DB	'que tu as l%?   '
	DB	'Je t^en prie,   '
	DB	'donne-moi       '
	DB	'cette ',IT3,' ...     '
	DB	'Je t^en SUPPLIE!'
	DB	'Alors, que      '
	DB	'd*cides-tu?     '
        DB      '    Oui  Non'
        DB      WE2
;
M1C8;    When 1C7 is YES
;
	DB	'Merci! Vite!    '
	DB	'A table!'
        Db      WED
;
M1C9;  When you answer NO
;
	DB	'Tant pis!       '
	DB	'Mais si tu      '
	DB	'changes d^avis, '
	DB	'reviens vite    '
	DB	'me voir!'
        DB      WED
;
M1CA;   Dog food eaten
;
	DB	'MIAM MIAM!      '
	DB	'... ... ... ... '
	DB	'Quel d*lice!    '
	DB	'En r*compense,  '
	DB	'je t^offre des  '
	DB	'Bananes. Hmm!   '
	DB	'Quel r*gal!'
        DB      WED
;
M1CB; computer explains
;
	DB	'Tu lui as donn* '
	DB	'une ',IT3,'           '
	DB	'en *change      '
	DB	'de bananes ',IT4,' .'
        Db      WED
;
M1CC; after trade, Sale's speech
;
	DB	'Encore merci!'
        DB      WED
;
M1CD;   another message
;
	DB	'As-tu d*j%      '
	DB	'essay* de       '
	DB	'descendre       '
	DB	'des rapides?    '
	DB	'A l^Est du      '
	DB	'Plateau Tartare '
	DB	'tu peux...'
        DB      WED
;
M1CE;   Bear Chef in animal village, 
;
	DB	'Il me manque    '
	DB	'des ingr*dients.'
	DB	'C^est emb<tant. '
	DB	'Si j^avais      '
	DB	'du Miel, ce     '
	DB	'serait parfait!'
        DB      WED
;
M1CF; with honeycomb
;
	DB	'C^est du ',IT6,'      '
	DB	'que tu as l%!   '
	DB	'J^en ai besoin! '
	DB	'Tu ne veux pas  '
	DB	'd^Ananas        '
	DB	'% la place?     '
        DB      '    Oui  Non'
        DB      WE2
;
M1D0;   When 1CF = yes
;
	DB	'Tu as *chang*   '
	DB	'le ',IT6,' contre     '
	DB	'l^Ananas ',IT7,' .    '
	DB	'Il est juteux!'
        DB      WED
;
M1D1;  When 1CF = No
;
	DB	'Fl\te alors!    '
	DB	'Tu regretteras  '
	DB	'de ne pas       '
	DB	'avoir go\t*     '
	DB	'% ce d*lice!'
        DB      WED
;
M1D2;   After exchange, talk to Bear again
;
	DB	'Ho oui! Je      '
	DB	'connais bien les'
	DB	'Dunes de Yarna. '
	DB	'Mais leur entr*e'
	DB	'situ*e au       '
	DB	'Sud du Village  '
	DB	'est bloqu*e par '
	DB	'une dr]le       '
	DB	'de cr*ature.    '
	DB	'Et quand        '
	DB	'celle-ci dort,  '
	DB	'pas moyen       '
	DB	'de la r*veiller.'
	DB	'J^ai une id*e : '
	DB	'am+ne Marine    '
	DB	'avec toi et     '
	DB	'fais-la chanter '
	DB	'pour r*veiller  '
	DB	'cet animal!'
        DB      WED
;
M1D3;   Next time talk to Bear
;
	DB	'J^aimerais tant '
	DB	'ouvrir un 4 ||||'
	DB	'au Village      '
	DB	'des Mouettes!'
        DB      WED
;
M1D4;   When you talk to bear w/Marin
;
	DB	'Bonjour Marine! '
	DB	'Tu vas bien?    '
	DB	'... ... ... ... '
	DB	'Oh excuse-moi,  '
	DB	'je ne t^avais   '
	DB	'pas vu...'
        DB      WED
;
M1D5;   MARIN at Secret Beach
;
	DB	'Oh #####,       '
	DB	'tu savais o=    '
	DB	'me trouver!     '
	DB	'Veux-tu qu^on   '
	DB	'parle un peu?   '
        DB      '    Oui  Non'
        DB      WE2
;
M1D6;   If answer to M1D5 is no
;
	DB	'Peuh! Je        '
	DB	'regarderai      '
	DB	'la mer alors!'
        DB      WED
;
M1D7;   Note left by Marin at house
;
	DB	'Sur la plage... '
	DB	'"Marine" ',MK5
        DB      WED
;
M1D8;   New view of scene, long conversation
;
	DB	'D^o= vient cette'
	DB	'noix de coco?   '
	DB	'Tarkin me dit   '
	DB	'qu^il n^y a rien'
	DB	'par-del% la mer.'
	DB	'Moi, je suis    '
	DB	'persuad*e       '
	DB	'du contraire!   '
	DB	'Tu sais #####,  '
	DB	'quand je t^ai vu'
	DB	'mon coeur s^est '
	DB	'mis % battre    '
	DB	'la chamade...   '
	DB	'Je suis s\re que'
	DB	'tu es le        '
	DB	'messager        '
	DB	'que j^attendais!'
        DB      WED
;
M1D9; continued
;
        DB      '... ... ... ... '
        DB      '... ... ... ... '
	DB	'Si j^*tais      '
	DB	'une mouette,    '
	DB	'je m^envolerais '
	DB	'loin, tr+s loin!'
	DB	'Je visiterais   '
	DB	'des pays et     '
	DB	'chanterais      '
	DB	'pour tous!      '
	DB	'Si j^exprime    '
	DB	'un voeu au      '
	DB	'Poisson-R<ve,   '
	DB	'l^exaucera-t^il?'
        DB      WED
;
M1DA;
;
	DB	'H*, tu *coutes? '
	DB	'#####, es-tu    '
	DB	's\r que tu      '
	DB	'm^*coutes?      '
        DB      '    Oui  Non'
        DB      WE2
;
M1DB;            If YES to M1DA
;
	DB	'J^aimerais      '
	DB	'tant conna/tre  '
	DB	'ton pays,#####! '
	DB	'Un jour mmm...'
        DB      WED
;
M1DC;
;
	DB	'Comment?        '
	DB	'Le Morse?       '
	DB	'D^accord,       '
	DB	'je t^accompagne.'
        DB      WED
;
M1DD;   Tarin in bed after being chased by bees
;
	DB	'A[e a[e ouille! '
	DB	'... ... ... ... '
	DB	'J^en ai marre de'
	DB	'ces abeilles!'
        DB      WED
;
M1DE;  If NO to M1DA
;
	DB	'Ho, tu descends '
	DB	'de ton nuage?   '
	DB	'Tu pourrais     '
	DB	'au moins        '
	DB	'm^*couter!'
        DB      WED
;
M1DF;
;;;;;;;;	DB	'*P0E*0*00E'
	DB	'Ha! C^est tout  '
	DB	'ce que tu as?!  '
	DB	'Pr*pare-toi %...'
	DB	'... _a! ...'
        DB      WED

M1E0;  WALRUS
;
        DB      'ZZZ ZZZ ZZZ ZZZ '
        DB      ' ... ',MK5,' ... ',MK5,' ...'
        DB      WED
;
M1E1;  Marin to Walrus
;
	DB	'C^est ce        '
	DB	'gros lard       '
	DB	'de morse!       '
	DB	'On lui fait     '
	DB	'peur?           '
        DB      '    Oui  Non'
        DB      WE2
;
M1E2;   1E1 = yes
;
        DB      'Ha ha ha !      '
        DB      'Ton r*veil *tait'
        DB      'plut]t brutal   '
        DB      'hein?...'
;
        Db      WED
;
M1E3;   Rabbit comes to Marin
;
        DB      'Tiens donc?     '
        DB      'Il m^appelle?   '
        DB      'Oh l% l%, c^est '
        DB      'toujours pareil.'
        DB      WED
;
M1E4; if M1E1 is NO
;
        DB      'Tu as raison.   '
        DB      'On va le        '
        DB      'laisser dormir.'
        DB      WED
;
M1E5;   continuation of M1E3
;
        DB      'Je vais au      '
        DB      'Village         '
        DB      'des Animaux.    '
        DB      'Rejoins-moi     '
        DB      'apr+s, #####.'
        DB      WED
;
M1E6; if link plays ocarina where walrus jumped into water
;                0123456789ABCDEF
        DB      'Mo\hhh Mo\hhh!  '
		;0   1   2   345   6   7   8   9abcdef
        DB      MK5,' ',MK5,' ! ',MK5,' ',MK5,' !     '
        DB      '... ',MK4,' ??'
        DB      WED
;
M1E7;   FISHERMAN under bridge
;                0123456789ABCDEF
        DB      'Je suis emb<t*  '
        DB      'car un poisson  '
        DB      'a emport*       '
        DB      'mon hame_on.    '
        DB      'Je ne p<che     '
        DB      'qu^avec un fil, '
        DB      'et forc*ment... '
        DB      'je ne peux rien '
        DB      'attraper!!'
        DB      WED
;
M1E8; when you have the hook
;                0123456789ABCDEF
        DB      'Mais qu^est-ce  '
        DB      'que tu as       '
        DB      'dans la main?   '
        DB      'N^est-ce pas    '
        DB      'un Hame_on?     '
        DB      'Si tu me le     '
        DB      'donnes, je te   '
        DB      'ferai don de ma '
        DB      'prochaine prise.'
        DB      'D^accord?       '
        DB      '    Oui  Non'
        DB      WE2
;
M1E9;   when 1E8 = yes
	DB	'Ouvre les yeux  '
	DB	'et mate le pro.'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20        DB      'Alors mon gars, '
;;;11/20        DB      'pr*pare-toi     '
;;;11/20        DB      '% voir un pro   '
;;;11/20        DB      '% l^ouvrage...'
;;;11/20        DB      WED
;
M1EA;   When 1E8 = NO
;                0123456789ABCDEF
        DB      'D^accord...     '
        DB      'Ce n^est pas    '
        DB      'une raison pour '
        DB      'm^agresser!'
        DB      WED
;
M1EB;   when catching something
	DB	'WHOAAAA!!!      '
	DB	'Il est ENORME!'
        DB      WED

;;;11/20;                0123456789ABCDEF
;;;11/20        DB      'C^est un gros!  '
;;;11/20        DB      'Je le sens!     '
;;;11/20        DB      'Oh! Hisse!'
;;;11/20        DB      WED
;
M1EC; computer explains
;                0123456789ABCDEF
	DB	ITA,'  devient un   '
	DB	'collier ',ITB,'!      '
	DB	'G*nial!'
        DB      WED
;
M1ED;   After exchange
;                0123456789ABCDEF
        DB      'Je me demande   '
        DB      'ce que je vais  '
        DB      'encore attraper!'
        DB      WED
;
M1EE;
	DB	'Mon mari est    '
	DB	'perdu dans les  '
	DB	'bois! Va le     '
	DB	'sauver!'
        DB      WED

M1EF;
	DB	'H*! Tu peux me  '
	DB	'voir?! T^as de  '
	DB	'bons yeux, toi! '
	DB	'Je ne suis pas  '
	DB	'un violent, je  '
	DB	'veux juste vivre'
	DB	'en paix.'
        DB      WED

;       MERMAID
M1F0;   Talking to the mermaid
;                0123456789ABCDEF
	DB	'J^*tais en train'
	DB	'de nager et une '
	DB	'vague a emport* '
	DB	'mon collier!    '
	DB	'Si tu le trouves'
	DB	'je te donnerai  '
	DB	'une *caille de  '
	DB	'queue!'
	DB	WED
;
M1F1;   When you dive near the mermaid
;                0123456789ABCDEF
	DB	'J^ai d*j%       '
	DB	'cherch* par l%'
	DB	WED
;
M1F2;   When you have swim suit top
;                0123456789ABCDEF
	DB	'Ahh!  Le voil%  '
	DB	'C^est mon       '
	DB	'collier!  Donne!'
	DB	'Donne-le moi!   '
	DB	'Je t^offrirai   '
	DB	'une *caille!    '
	DB	'    Oui  Non'
	DB	WE2
;
M1F3;   When 1F2 = Yes
;                0123456789ABCDEF
	DB	'N^en prends qu^ '
	DB	'une seule!      '
	DB	'A-Ah! UNE SEULE!'
	DB	WED
;
M1F4;   when 1F2 = No
;                0123456789ABCDEF
	DB	'M*chant!        '
	DB	'Je te hais!'
        DB      WED
;
M1F5;   computer explains
;                0123456789ABCDEF
	DB	'Vous *changez le'
	DB	'collier contre  '
	DB	'une *caille...  '
	DB	'A quoi sert-    '
	DB	'elle?'
        DB      WED
;
M1F6;
	DB	'Appelons-la:    '
	DB	'"J^ai eu tr+s   '
	DB	'peur." Souriez!'
        DB      WED

M1F7; after exchange talk to mermaid
;                0123456789ABCDEF
	DB	'Apr+s une s*ance'
	DB	'de pose, un     '
	DB	'artiste voulait '
	DB	'une *caille.    '
	DB	'La l*gende de la'
	DB	'Loupe est-elle  '
	DB	'vraie...?'
        DB      WED
;
M1F8;
	DB	'Salut! C^est moi'
	DB	'le photographe! '
	DB	'Quoi? Zora est  '
	DB	'l%? Il faut que '
	DB	'je prenne une   '
	DB	'photo! Je vais  '
	DB	'l^appeler "J^ai '
	DB	'trouv* Zora."'
        DB      WED

;
M1F9;   PLACARD, in front of Richard's house
;                0123456789ABCDEF
        DB      'Villa de Richard'
        DB      WED
;
M1FA;   
;                0123456789ABCDEF
        DB      'Ch$teau Canulet '
        DB      '10 min. ',XR,' ',XU
        DB      WED
;
M1FB;
;                0123456789ABCDEF
        DB      'Ch$teau Canulet '
        DB      '5 min. ',XR
        DB      WED
;
M1FC;
;                0123456789ABCDEF
        DB      'Ch$teau Canulet '
        DB      '50 pas ',XU
        DB      WED
;
M1FD; Phone in Ulrira's house
;                0123456789ABCDEF
        DB      'DRING DRING!    '
        DB      'DRING! Hello!   '
        DB      'Madonna         '
        DB      '% l^appaou[elle.'
        DB      'No darling...   '
        DB      'CLIC!           '
        DB      'Tu as d\ faire  '
        DB      'un faux num*ro!'
        DB      WED
;
M1FE;   When you catch a fish with a piece of heart
;                0123456789ABCDEF
        DB      'C^est un gros!  '
        DB      'Et en plus, il a'
        DB      'un Fragment     '
        DB      'de Coeur!       '
        DB      'Je t^offre aussi'
        DB      '20 rubis.       '
        DB      'Un autre essai? '
        DB      '    Oui  Non' 
        DB      WE2
;
M1FF;   If you complete a heart container w/ fish piece of heart
;                0123456789ABCDEF
        DB      'C^est un gros!  '
        DB      'Et en plus, il a'
        DB      'un Fragment     '
        DB      'de Coeur!       '
        DB      'Maintenant,     '
        DB      'tu as un        '
        DB      'Coeur complet.  '
        DB      'Je t^offre aussi'
        DB      '20 rubis.       '
        DB      'Un autre essai? '
        DB      '    Oui  Non'
        DB      WE2
;
M200;   LIBRARY, Books
;                0123456789ABCDEF
        DB      '  DE LA BONNE   '
        DB      '  UTILISATION   '
        DB      ' D^UN BOUCLIER  '
        DB      'Tu veux le lire?'
        DB      '    Oui  Non'
        DB      WE2
;
M201;   200 = read
;                0123456789ABCDEF
        DB      'En maintenant   '
        DB      'A ou B enfonc*, '
        DB      'tu peux parer   '
        DB      'les attaques    '
        DB      'et repousser    '
        DB      'les ennemis.    '
        DB      'En plus du      '
        DB      'bouclier        '
        DB      'standard,       '
        DB      'il y en a un    '
        DB      'qui te prot+ge  '
        DB      'des lasers!'
        DB      WED
;
M202;   
;                0123456789ABCDEF
        DB      '    CHOISIR     '
        DB      '  LE BON OBJET  '
        DB      'Tu veux le lire?'
        DB      '    Oui  Non'
        DB      WE2
;
M203; if 202 = read
;                0123456789ABCDEF
        DB      'Choisis l^objet '
        DB      'd*sir* dans     '
        DB      'le Sous-Ecran   '
        DB      'en appuyant     '
        DB      'sur A ou B.     '
        DB      'Certains objets '
        DB      'remplacent      '
        DB      'une *p*e lors   '
        DB      'd^un combat.    '
        DB      'Essaie-les tous '
        DB      'pour avoir le   '
        DB      'plus ad*quat!'
        DB      WED
;
M204;  
;                0123456789ABCDEF
        DB      '    CONSEILS    '
        DB      '    ET CARTE    '
        DB      'Tu veux le lire?'
        DB      '    Oui  Non'
        DB      WE2
;
M205;   if 204 = yes
;                0123456789ABCDEF
        DB      'Appuie sur      '
        DB      'SELECT          '
        DB      'pour afficher la'
        DB      'carte de l^/le. '
        DB      'Les parties     '
        DB      'sombres sont    '
        DB      'les endroits    '
        DB      'que tu n^as pas '
        DB      'encore visit*s. '
        DB      'Bouge le curseur'
        DB      'et appuie sur A '
        DB      'pour obtenir le '
        DB      'nom du lieu et  '
        DB      'le message      '
        DB      'du hibou. Ainsi,'
        DB      'tu n^auras pas  '
        DB      '% tout noter!'
        DB      WED
;
M206;
;                0123456789ABCDEF
        DB      'TOUT SUR L^EPEE '
        DB      '  TOURNOYANTE!  '
        DB      'Tu veux le lire?'
        DB      '    Oui  Non'
        DB      WE2
;
M207; 206 = Read
;                0123456789ABCDEF
        DB      'Cette technique '
        DB      'sp*ciale        '
        DB      'se transmet     '
        DB      'de g*n*ration   '
        DB      'en g*n*ration.  '
        DB      'Maintiens       '
        DB      'enfonc*         '
        DB      'le bouton       '
        DB      'correspondant   '
        DB      '% l^*p*e        '
        DB      'pour augmenter  '
        DB      'ta force. Quand '
        DB      'c^est suffisant,'
        DB      'rel$che-le.     '
        DB      'Crois-tu que tu '
        DB      'peux le faire?'
        DB      WED
;
M208;
;                0123456789ABCDEF
        DB      ' TELEPORTATION  '
        DB      'Tu veux le lire?'
        DB      '    Oui  Non'
        DB      WE2
;
M209;
;                0123456789ABCDEF
        DB      'Sur Cocolint,   '
        DB      'il y a des      '
        DB      'trous Warp.     '
        DB      'T*l*porte-toi   '
        DB      'en sautant      '
        DB      'dedans.         '
        DB      'Replonge dans   '
        DB      'le trou d^o=    '
        DB      'tu sors pour    '
        DB      '<tre t*l*port*  '
        DB      'en succession.  '
        DB      'Tu ne peux pas  '
        DB      'te t*l*porter   '
        DB      'vers un trou    '
        DB      'qui n^est pas   '
        DB      'encore apparu   '
        DB      '% l^*cran!'
        DB      WED
;
M20A;
;                0123456789ABCDEF
        DB      '   LES BOMBES   '
        DB      'Tu veux le lire?'
        DB      '    Oui  Non'
        DB      WE2
;
M20B; if 20A is yes
;                0123456789ABCDEF
        DB      'Pour reprendre  '
        DB      'une bombe       '
        DB      'au sol, appuie  '
        DB      'tout de suite   '
        DB      'sur le bouton   '
        DB      'la contr]lant.  '
        DB      'Puis jette-la   '
        DB      'en appuyant     '
        DB      'encore sur      '
        DB      'le m<me bouton. '
        DB      'Connaissais-tu  '
        DB      'cette astuce?'
        DB      WED
;
M20C;   Map of Island in Library
;                0123456789ABCDEF
        DB      '    ATLAS DE    '
        DB      '    COCOLINT    '
        DB      'Choisis un lieu '
        DB      'gr$ce au curseur'
        DB      'et appuie sur A '
        DB      'pour afficher   '
        DB      'son nom. Veux-tu'
        DB      'le consulter?   '
        DB      '    Oui  Non'
        DB      WE2
;
M20D;
;                0123456789ABCDEF
        DB      '    MYSTERES    '
        DB      '   ET SECRETS   '
        DB      '   DE COCOLINT  '
        DB      'Tu veux le lire?'
        DB      '    Oui  Non'
        DB      WE2
;
M20E; if 20D is yes
;                0123456789ABCDEF
        DB      'Impossible!     '
        DB      'Il te faut      '
        DB      'la Loupe        '
        DB      'pour lire       '
        DB      'les petits      '
        DB      'caract+res...'
        DB      WED
;
M20F; not used
;
;               GHOST OPTION
;
M210; first ghost message
;                0123456789ABCDEF
        DB      'Cimeti+re!      '
        DB      'Am+ne-moi %     '
        DB      'ma tombe...'
        DB      WED
;
M211; second ghost message
;                0123456789ABCDEF
        DB      'Am+ne-moi dans  '
        DB      'mon ancienne    '
        DB      'maison!         '
        DB      'Vers la baie...'
        DB      WED
;
M212; when you try to enter a dungeon
;                0123456789ABCDEF
        DB      'Non!!           '
        DB      'Pas l%!'
        DB      WED
;
M213;   Near the house
;                0123456789ABCDEF
        DB      'Oui, entre!     '
        DB      'C^est bien      '
        DB      'ma maison!'
        DB      WED
;
M214;   In the house
;                0123456789ABCDEF
        DB      'Que de souvenirs'
        DB      '... Rien n^a    '
        DB      'chang*. Bouhhh!'
        DB      WED
;
M215;   in the house 2
;                0123456789ABCDEF
        DB      'Assez...        '
        DB      'Je veux aller   '
        DB      '% ma tombe!'
        DB      WED
;
M216;   Parting with ghost
;                0123456789ABCDEF
        DB      'Merci!          '
        DB      'Dans ma maison, '
        DB      'regarde sous    '
        DB      'les jarres.     '
        DB      'Sayonara!'
        DB      WED
;
M217;   Last dungeon instructions #1, L,L,U,R,R,U,L,U
;                0123456789ABCDEF
        DB      'Dans l^Oeuf,    '
        DB      'on tourne tourne'
        DB      'tourne...       '
        DB      XL,' ',XL,' ',XU,' ',XR,' ',XR,' ',XU,' ',XL,' ',XU,' '
        DB      'Hum! C^est tr+s '
        DB      '*nigmatique.'
        DB      WED
;
M218;   Last dungeon pattern #2, R,U,U,R,U,U,R,U
;                0123456789ABCDEF
        DB      'Dans l^Oeuf,    '
        DB      'on tourne tourne'
        DB      'tourne...       '
        DB      XR,' ',XU,' ',XU,' ',XR,' ',XU,' ',XU,' ',XR,' ',XU,' '
        DB      'Hum! C^est tr+s '
        DB      '*nigmatique.'
        DB      WED
;
M219;   Last dungeon pattern #3, L,U,R,U,L,U,R,U
;                0123456789ABCDEF
        DB      'Dans l^Oeuf,    '
        DB      'on tourne tourne'
        DB      'tourne...       '
        DB      XL,' ',XU,' ',XR,' ',XU,' ',XL,' ',XU,' ',XR,' ',XU,' '
        DB      'Hum! C^est tr+s '
        DB      '*nigmatique.'
        DB      WED
;
M21A;   Last dungeon pattern #4, R,R,R,R,U,U,U,U
;                0123456789ABCDEF
        DB      'Dans l^Oeuf,    '
        DB      'on tourne tourne'
        DB      'tourne...       '
        DB      XR,' ',XR,' ',XR,' ',XR,' ',XU,' ',XU,' ',XU,' ',XU,' '
        DB      'Hum! C^est tr+s '
        DB      '*nigmatique.'
        DB      WED
;
M21B;    MARIN OPTION  when in dungeon more than 5 min
;                0123456789ABCDEF
        DB      'Il *tait temps! '
        DB      'Je ne pensais   '
        DB      'pas te revoir!'
        DB      WED
;
M21C;   when you return with hearts almost gone
;                0123456789ABCDEF
        DB      'Ne crois-tu pas '
        DB      'que tu as subi  '
        DB      'assez de d*g$ts?'
        DB      'Fais un peu     '
        DB      'plus attention!'
        DB      WED
;
M21D;   when you return okay
;                0123456789ABCDEF
        DB      '#####,          '
        DB      'te voici enfin! '
        DB      'Es-tu bless*?'
        DB      WED
;
M21E;   randomly if Link is injured
;                0123456789ABCDEF
;;;11/12        DB      'Abru;;!         '
	db	'Abru',';;!         '
        DB      'Je t^avais dit  '
        DB      'd^<tre prudent! '
        DB      'Pardon?...      '
        DB      'Tu as d\ mal    '
        DB      'entendre...'
        DB      WED
;
M21F; no used
;
M220;   After you finish the first dungeon, two kids
;                0123456789ABCDEF
        DB      'M^sieu!         '
        DB      'M^sieu!         '
        DB      'C^est terrible, '
        DB      'c^est horrible! '
        DB      'c^est c^est...  '
        DB      'Des Gogo...     '
        DB      'des Momo...     '
        DB      'des Moblins     '
        DB      'sont venus      '
        DB      'dans le village!'
        DB      'Ils *taient     '
        DB      'une arm*e...    '
        DB      'Ils...ils...    '
        DB      'Ils sont sortis!'
        DB      'Ils sont entr*s!'
	db	'Oui, c^est _a!  '
	db	'Il sont entr*s  '
        DB      'l% et ils ont   '
        DB      'pris le Minou,  '
        DB      'non non...      '
        DB      'Ils ont pris    '
        DB      'Toutou!!        '
        DB      '... ... ... ... '
        DB      '... ... ... ... '
        DB      'Il vaudrait     '
        DB      'mieux que tu    '
        DB      'ailles voir ce  '
        DB      'qui s^est pass*!'
        DB      WED
;
M221;   BOOMERANG TRADER
;                0123456789ABCDEF
        DB      'Sur la plage,   '
        DB      'j^ai ramass*    '
        DB      'une merveille.  '
        DB      'Je te l^*change '
        DB      'contre l^objet  '
        DB      'qui est dans B. '
        DB      '    Oui  Non'
        DB      WE2
;
M222;   when 221 = yes
;                0123456789ABCDEF
        DB      'March* conclu!  '
        DB      'Quand le        '
        DB      'Boomerang       '
        DB      'ne te sert plus,'
        DB      'reviens ici!'
        DB      WED
;
M223;   when 223 = no
;                0123456789ABCDEF
        DB      'Ah bon...       '
        DB      'Dans ce cas...'
        DB      WED
;
M224; computer after exchange
;                0123456789ABCDEF
        DB      'Tu as *chang*   '
        DB      'ton objet contre'
        DB      'le Boomerang.'
        DB      WED
;
M225;   when you come back with the boomerang
;                0123456789ABCDEF
        DB      'Rends-moi       '
        DB      'le Boomerang    '
        DB      'et je te rendrai'
        DB      'ton objet!      '
        DB      '    Oui  Non'
        DB      WE2
;
M226;   After exchanging back
;                0123456789ABCDEF
        DB      'Tu as r*cup*r*  '
        DB      'ton objet.      '
        DB      'Tu as rendu     '
        DB      'le Boomerang.'
        DB      WED
;
M227; if the player tries to trade sword or shield
;                0123456789ABCDEF
        DB      'Non...          '
        DB      'Pas cet objet!  '
        DB      'Choisis-en      '
        DB      'un autre.'
        DB      WED
;
M228;
	DB	'DRRING! DRRING! '
	DB	'C^est moi! P*p*!'
	DB	'Tu n^as pas     '
	DB	'trouv* les cinq '
	DB	'feuilles d^Or?  '
	DB	'Fais attention %'
	DB	'ne pas perdre   '
	DB	'celles en ta    '
	DB	'possession!     '
	DB	'CLIC!'
        DB      WED

M229;
	DB	'DRRING! DRRING! '
	DB	'C^est moi! P*p*!'
	DB	'Tu n^as pas     '
	DB	'trouv* les cinq '
	DB	'feuilles d^Or?  '
	DB	'Utilise tes     '
	DB	'bombes et on    '
	DB	'verra bien!     '
	DB	'CLIC!'
        DB      WED

;;;12/08	DB	'DRRING! DRRING! '
;;;12/08	DB	'C^est moi! P*p*!'
;;;12/08	DB	'Tu n^as pas     '
;;;12/08	DB	'trouv* les cinq '
;;;12/08	DB	'feuilles d^Or?  '
;;;12/08	DB	'Try bombing sus-'
;;;12/08	DB	'picious places. '
;;;12/08	DB	'Hope that helps.'
;;;12/08	DB	'Bye!            '
;;;12/08	DB	'CLIC!'
;;;12/08        DB      WED

M22A;
	DB	'DRRING! DRRING! '
	DB	'C^est moi! P*p*!'
	DB	'Tu n^as pas     '
	DB	'trouv* les cinq '
	DB	'feuilles d^Or?  '
	DB	'Va faire peur au'
	DB	'corbeau pr+s du '
	DB	'ch$teau!        '
	DB	'CLIC!'
        DB      WED

M22B;
	DB	'"Les voyages de '
	DB	'#####." Veux-tu '
	DB	'regarder ton    '
	DB	'album?          '
	DB	'    Oui  Non'
        DB      WE2

M22C;
	DB	'Quelle photo    '
	DB	'veux-tu voir?   '
	DB	'Utilise ',MK8,'       '
	DB	'pour choisir et '
	DB	'appuie sur A!'
        DB      WED

M22D;
	DB	'Tu es proche de '
	DB	'la Tour. Prends '
	DB	'garde au rapace!'
        DB      WED

M22E;
	DB	'H*, #####. Mon  '
	DB	'truc % moi c^est'
	DB	'de prendre des  '
	DB	'photos. Ce vieux'
	DB	'ch$teau est     '
	DB	'splendide, non?'
        DB      WED

M22F;
M230;   Tale's Keyhole
;       
        DB      'Une serrure ici?'
        DB      'Hum, voyons :   '
        DB      'Serrure Flagello'
        DB      WED
;
M231
;
        DB      'Une serrure ici?'
        DB      'Hum, voyons :   '
        DB      'Serrure Cyclope'
        DB      WED
;
M232        
;
        DB      'Une serrure ici?'
        DB      'Hum, voyons :   '
        DB      'Serrure Poisson'
        DB      WED
;
M233
;
        DB      'Une serrure ici?'
        DB      'Hum, voyons :   '
        DB      'Serrure Vautour'
        DB      WED
;
M234
;
        DB      'Une serrure ici?'
        DB      'Hum, voyons :   '
        DB      'Serrure Masque'
        DB      WED
;
M235;   MARIN at suspension bridge
;
        DB      'Au secours!!'
        DB      WED
;
M236;   She sees player
;
        DB      'H* #####!       '
        DB      'Des monstres    '
        DB      'horribles       '
        DB      'm^ont pos*e ici!'
        DB      'J^ai peur car   '
        DB      'j^ai le vertige.'
        DB      WED
;
M237;   When Link rescues her
;
        DB      'J^ai eu peur... '
        DB      '#####,          '
        DB      'merci!'
        DB      WED
;
M238; continued
;
        DB      '... ... ... ... '
        DB      '... ... ... ... '
        DB      '#####, euh...'
        DB      WED
;
M239; continued
;
        DB      'Euh, voyons...  '
        DB      'Comment te dire '
        DB      '... tu sais...'
        DB      WED
;
M23A;   Tarin suddenly appears.
;
        DB      'Hol%, Tarkin... '
        DB      '... ... ... ... '
        DB      'Non non, rien!  '
        DB      'Je dois partir.'
        DB      WED
;
M23B; Tarin calling for Marin
;
        DB      'MAAAARIIIIINE!!'
        DB      WED
;
M23C;
	DB	'Rien?! J^en ai  '
	DB	'plus que marre  '
	DB	'd^attendre. Je  '
	DB	'veux les        '
	DB	'feuilles d^Or...'
	DB	'MAINTENANT!'
        DB      WED

M23D;
	DB	'H*! Marine et   '
	DB	'#####! Allez-   '
	DB	'vous prendre des'
	DB	'photos? Pourquoi'
	DB	'ne pas photogra-'
	DB	'phier tout le   '
	DB	'monde? Moi y    '
	DB	'compris?'
        DB      WED

M23E;
	DB	'Voici mon bel   '
	DB	'appareil photo. '
	DB	'Tu es pr<t?     '
	DB	'On sourit!'
        DB      WED

M23F;
	DB	'OK, j^ai fini.  '
	DB	'J^me rentre.'
        DB      WED

;
M240;   MORE ULRIRA OLD PAL, Waterfall hint
;
        DB      'DRING DRING!!   '
        DB      'P*p* le Ramollo '
        DB      '% l^appareil... '
        DB      'D^apr+s Mamie   '
        DB      'Youpi, quelque  '
        DB      'chose est cach* '
        DB      'derri+re        '
        DB      'la Cascade de   ' 
        DB      'la Cordill+re.  '
        DB      'Ce renseignement'
        DB      't^est utile?    '
        DB      'Salut! CLIC!'
        DB      WED
;
M241;   Ulrira about tower
;
        DB      'DRING DRING!!   '
        DB      'P*p* le Ramollo '
        DB      '% l^appareil... '
        DB      'De mon temps,   '
        DB      'il y avait      '
        DB      'une Tour dans   '
	db	'la partie est de'
        DB      'la Cordill+re.  '
        DB      'Tu devrais aller'
        DB      'y faire un tour!'
        DB      'Salut! CLIC!'
        DB      WED
;
M242; Holy Egg
;
        DB      'DRING DRING!!   '
        DB      'P*p* le Ramollo '
        DB      '% l^appareil... '
        DB      'Dirige-toi vers '
        DB      'l^Oeuf Sacr*,   '
        DB      'nich* en haut   '
        DB      'du Mt Tamaranch.'
        DB      '#####,          '
        DB      'sois prudent.   '
        DB      'Salut! CLIC!'
;
        DB      WED
;
M243;   Ulrira on the passageway in the egg
;
        DB      'DRING DRING!!   '
        DB      'P*p* le Ramollo '
        DB      '% l^appareil... '
        DB      'Tu t^es perdu   '
        DB      'dans l^Oeuf?    '
        DB      'D*sol*, mais    '
        DB      'je ne peux pas  '
        DB      't^aider!        '
        DB      'Va donc te      '
        DB      'renseigner %    '
        DB      'la Biblioth+que.'
        DB      'D*sol* hein!    '
        DB      'Salut! CLIC!'
;
        DB      WED
;
M244;   Ulrira about Wanwan
;
        DB      'DRING DRING!!   '
        DB      'P*p* le Ramollo '
        DB      '% l^appareil... '
        DB      'Tu devrais      '
        DB      'ramener Toutou %'
        DB      'Mme Miaou Miaou.'
        DB      'Elle sera folle '
        DB      'de joie.        '
        DB      'Salut! CLIC!'
;
        DB      WED
;
M245; Ulrira about the frog
;
        DB      'DRING DRING!!   '
        DB      'P*p* le Ramollo '
        DB      '% l^appareil... '
        DB      'Tu aimerais     '
        DB      'chanter?        '
        DB      'Va voir Wart    '
        DB      'la Grenouille.  '
        DB      'Il habite dans  '
        DB      'le D*dale       '
        DB      'des Panneaux.   '
        DB      'Il est bon mais '
        DB      'un peu cher...  '
        DB      'Salut! CLIC!'
;
        DB      WED
;
M246; Ulrira Hen house
;
        DB      'DRING DRING!!   '
        DB      'P*p* le Ramollo '
        DB      '% l^appareil... '
        DB      'Tu te d*fends   '
        DB      'tr+s bien!      '
        DB      'As-tu visit*    '
        DB      'le Poulailler,  '
        DB      'en haut de      '
        DB      'la montagne?    '
        DB      'A c]t*, il y a  '
        DB      'une cave qui    '
        DB      'renferme un     '
        DB      'objet important.'
        DB      'Salut! CLIC!'
;
        DB      WED
;
M247;   Ulrira, seashells
;
        DB      'DRING DRING!!   '
        DB      'P*p* le Ramollo '
        DB      '% l^appareil... '
        DB      'Tes ennemis     '
        DB      'sont coriaces?  '
        DB      'Collecte        '
        DB      'donc tous       '
        DB      'les Coquillages.'
        DB      'Sois confiant!  '
        DB      'Bonne chance!   '
        DB      'Salut! CLIC!'
        DB      WED
M248; Ulrira, last
;
        DB      'DRING DRING!!   '
        DB      'Oui c^est P*p*! '
        DB      'Courage, encore '
        DB      'un effort...    '
        DB      'Je suis de tout '
        DB      'coeur avec toi. '
        DB      'Vas-y mon gars!'
        DB      WED
;
BANK9	GROUP   $09
;
M249;
	DB	'Tout ceci m*rite'
	DB	'une photo...    '
	DB	'Tire-moi le     '
	DB	'portrait, OK?'
        DB      WED

M24A;   Little animal kids Rabbits #1  Before Marin
;
        DB      'Les Dunes       '
        DB      'de Yarna?       '
        DB      'Leur entr*e     '
        DB      'est au Sud,     '
        DB      'mais tu ne peux '
        DB      'pas y aller ',$AD,'   '
        DB      'une bestiole    '
        DB      'est affal*e de  '
        DB      'tout son long!'
        DB      WED
;
M24B;   bored little rabbit
;
        DB      'Une chanson de  '
        DB      'Marine par un   '
        DB      'si beau jour, ce'
        DB      'serait le pied!'
        DB      WED
;
M24C;
;
        DB      'Savais-tu que   '
        DB      'les Villages    '
        DB      'des Animaux     '
        DB      'et des Mouettes '
        DB      '*taient des     '
        DB      'villes jumel*es?'
        DB      'Des villes,     '
        DB      'c^est un bien   '
        DB      'grand mot...    '
        DB      'Villages jumeaux'
        DB      'serait mieux!   '
        DB      'D^apr+s une     '
        DB      'source s\re,    '
        DB      '% l^int*rieur du'
        DB      'G/te des R<ves, '
        DB      'il y a un...    '
        DB      'Crois-tu que    '
        DB      'c^est vrai?'
        DB      WED
;
M24D; rabbit kid
	DB	'Je ne peux aller'
	DB	'au Village. Les '
	DB	'monstres sont si'
	DB	'nombreux! Marine'
	DB	'est-elle en vie?'
        DB      WED

;
;;;11/20        DB      'Il y a tellement'
;;;11/20        DB      'de monstres     '
;;;11/20        DB      'qu^on ne        '
;;;11/20        DB      'peut plus aller '
;;;11/20        DB      'au Village      '
;;;11/20        DB      'des Mouettes... '
;;;11/20        DB      'Marine me manque'
;;;11/20        DB      'tellement!!'
;;;11/20        DB      WED
;
M24E;   rabbit kid
;
        DB      'Connais-tu le   '
        DB      'Coq Volant?     '
        DB      'Autrefois,      '
        DB      'il aurait v*cu  '
        DB      'dans le Village '
        DB      'des Mouettes.   '
        DB      'Je me demande   '
        DB      'si c^est vrai!'
        DB      WED
;
M24F;   rabbit
;
        DB      'Vivement que    '
        DB      'Marine revienne!'
        DB      'Sa chanson est  '
        DB      'trop g*niale!'
        DB      WED
;
M250;   rabbit
;
        DB      'Cette nuit, j^ai'
        DB      'r<v* que j^*tais'
        DB      'une carotte.    '
        DB      'Dr]le de r<ve   '
        DB      'pour un lapin...'
        DB      WED
;
M251; rabbit
;
        DB      'Pourquoi les    '
        DB      'animaux parlent?'
        DB      'Je ne sais pas! '
        DB      'Je ne suis      '
        DB      'qu^un lapin moi!'
        DB      WED
;
M252;   When you have Marin, all rabbits say:
;       
        DB      'Oui c^est elle! '
        DB      'C^est Marine!   '
        DB      WED
;
M253;
	DB	'Abandonne si tu '
	DB	'es un l$che.    '
	DB	'Seul le courage '
	DB	'peut d*placer   '
	DB	'les tombes.'
        DB      WED

M254;
	DB	'J^ai pas peur.  '
	DB	'Je veux juste   '
	DB	'rester chez moi.'
        DB      WED

M255;
	DB	'C^est ma        '
	DB	'premi+re balade '
	DB	'avec toi, #####.'
        DB      WED

M256;
	DB	'. . . . .'
        DB      WED

M257;
	DB	'Cette falaise   '
	DB	'sera notre      '
	DB	'jardin secret.'
        DB      WED

M258;
	DB	'Tu ne parles pas?'
        DB      WED

M259;
	DB	'J^adore les     '
	DB	'photos! Pourquoi'
	DB	'ne pas prendre  '
	DB	'une photo %     '
	DB	'l^*cart de tous?'
	DB	'Appelons-la.....'
        DB      WED

M25A;
	DB	'Vous obtenez les'
	DB	'habits bleus!   '
	DB	'Votre endurance '
	DB	'est doubl*e!'
        DB      WED

M25B;
	DB	'Vous obtenez les'
	DB	'habits rouges!  '
	DB	'Vous d*bordez   '
	DB	'd^*nergie!'
        DB      WED

M25C;
	DB	'Rouge pour      '
	DB	'l^attaque et    '
	DB	'bleu pour la    '
	DB	'd*fense. Lequel '
	DB	'D*sires-tu?     '
	DB	'    BLEU ROUGE'
        DB      WE2

M25D;
	DB	'Es-tu s\r?      '
	DB	'    OUI  NON'
        DB      WE2

M25E;
	DB	'La f*e t^attend.'
        DB      WED

M25F;
	DB	'As-tu la poudre?'
	DB	'Va la chercher  '
	DB	'si tu ne l^as   '
	DB	'pas.'
        DB      WED

M260;
	DB	'Nos couleurs    '
	DB	'changent! Si je '
	DB	'suis rouge, il  '
	DB	'sera bleu! Et   '
	DB	'inversement...  '
	DB	'De quelle       '
	DB	'couleur sont mes'
	DB	'habits?         '
	DB	'    Bleu Rouge'
        DB      WE2

M261;
	DB	'BOU! Ta lame est'
	DB	'pitoyable! Tu ne'
	DB	'pourras jamais  '
	DB	'me battre!      '
        DB      WED

M262;
	DB	'D*sol* mais ceci'
	DB	'est le donjon de'
	DB	'la couleur.     '
	DB	'Seuls ceux au   '
	DB	'pouvoir de la   '
	DB	'couleur peuvent '
	DB	'entrer. Si tu   '
	DB	'peux dire qui   '
	DB	'porte du rouge  '
	DB	'et qui porte du '
	DB	'bleu, tu pourras'
	DB	'entrer.         '
	DB	'Adieu.'
        DB      WED

M263;
	DB	'Voici un indice:'
	DB	'Rouge devient   '
	DB	'Bleu.'
        DB      WED

M264;
	DB	'Non! Regarde    '
	DB	'bien et essaie  '
	DB	'encore une fois.'
        DB      WED

M265;
	DB	'N^en parle %    '
	DB	'personne.'
        DB      WED

M266;
	DB	'Voulez-vous lire'
	DB	'ce livre?       '
	DB	'    Lire Non'
        DB      WE2

M267;
	DB	'Un monde de     '
	DB	'couleur sous 5  '
	DB	'pierres tombales'
	DB	'                '
	DB	'   3',XU,'  4',XR,'  5',XU,'   '
	DB	'   2',XL,'  1',XD,'       '
	DB	'Teste ton       '
	DB	'courage. Ouvre  '
	DB	'un nouveau      '
	DB	'chemin!         '
	DB	'Le valeureux    '
	DB	'aura le pouvoir '
	DB	'des couleurs.   '
	DB	'Quel est le mon-'
	DB	'de de couleur?'
        DB      WED

M268;
	DB	'Sois le bienvenu'
	DB	'#####. Je te    '
	DB	'f*licite d^<tre '
	DB	'venu jusqu^ici. '
	DB	'Je vais te      '
	DB	'remettre le     '
	DB	'pouvoir de la   '
	DB	'couleur. Choisis'
	DB	'rouge pour      '
	DB	'l^attaque ou    '
	DB	'bleu pour la    '
	DB	'd*fense. Quel   '
	DB	'pouvoir veux-tu?'
	DB	'    BLEU ROUGE'
        DB      WE2

M269;
	DB	'Jeune sot! Ton  '
	DB	'*p*e ne marche  '
	DB	'pas! Essaie donc'
	DB	'autre chose!    '
        DB      WED

M26A;
	DB	'Fou cupide!     '
	DB	'Tu veux plus de '
	DB	'puissance?! Un  '
	DB	'bouffon tel que '
	DB	'toi est indigne!'
        DB      WED

M26B;
	DB	'Ferme les yeux.'
        DB      WED

M26C;
	DB	'Je vais te mener'
	DB	'dehors.'
        DB      WED

M26D;
	DB	'Bleu est normal '
	DB	'Jaune: attention'
	DB	'et rouge: danger'
        DB      WED

;;;12/09	DB	'Bleu est normal '
;;;12/09	DB	'Jaune:	attention'
;;;12/09	DB	'et rouge: danger'
;;;12/09        DB      WED

M26E;
	DB	'Jaune: attention'
	DB	'Rouge: danger   '
	DB	'Prends ton      '
	DB	'temps.'
        DB      WED

M26F;
	DB	'Bleu: commencer '
	DB	'Jaune: attention'
	DB	'Rouge: danger   '
        DB      WED

M270;
	DB	'Fantastique!    '
	DB	'Appelons ceci:  '
	DB	'"','##### joue avec'
	DB	'Toutou!"        '
	DB	'Maintenant      '
	DB	'approche-toi de '
	DB	'Toutou!'
        DB      WED

M271;
	DB	'Grrrr!'
        DB      WED

M272;
	DB	'#####,          '
	DB	'approche-toi!'
        DB      WED

M273;
	DB	'Grrrr! Grrrr!!'
        DB      WED

M274;
	DB	'Plus pr+s! OK,  '
	DB	'c^est bon...    '
	DB	'On sourit!'
        DB      WED

M275;
	DB	'Grrrr! Grrrr!!  '
	DB	'GRRRR!'
        DB      WED

M276;   MARIN OPTION  sometimes when you hit chicken
;
        DB      'Youpi! Vas-y!   '
        DB      'Encore...       '
        DB      'Pardon?         '
        DB      'Mais non! Je    '
        DB      'n^ai rien dit.  '
        DB      'Je plaisantais!'
        DB      WED
;
M277;   MARIN OPTION when you try Ocarina w/o learning song
;
        DB      'Pas terrible... '
        DB      'Pardon? J^ai dit'
        DB      'quelque chose?  '
        DB      'H*, _a suffit   '
        DB      'la parano...'
        DB      WED
;
M278;   When you open drawers with Marin Option
;
        DB      '#####, tu       '
        DB      'fouilles souvent'
        DB      'dans les tiroirs'
        DB      'des gens?'
        DB      WED
;
M279;  When you dig with Marin
;
        DB      'Vas-y!!         '
        DB      'Creuse...       '
        DB      'Creuse encore!'
        DB      WED
;
M27A;    When you jump in a hole with Marin Option (get out of way)
;
        DB      'Ouah, super!    '
        DB      'Quelle surprise!'
        DB      WED
;
M27B;   If you don't get out of the way
;
        DB      'Oh d*sol*e!     '
        DB      'Rien de cass*   '
        DB      '#####?'
        DB      WED
;
M27C;   Tony Harman
;
        DB      'Yo, t^es qu*blo!'
        DB      WED
;
M27D;   
        DB      'Il est 9H59,    '
        DB      '_a dissuade...'
        DB      WED
;
M27E;
;
        DB      'Les nanas       '
        DB      'de la Hotline,  '
        DB      'c^est des pros!'
        DB      WED
;
M27F;
;
        DB      'Gros bisous     '
        DB      'de Kyoto!       '
        DB      '       VERO ',$CF
        DB      WED
;
M280;
	DB	'Si tu vois      '
	DB	'les pointes,    '
	DB	'pense % utiliser'
	DB	'ton Bouclier.'
        DB      WED
;
M281;
	DB	'D^abord un lapin'
	DB	'et en dernier,  '
	DB	'un spectre...'
	DB	WED
;
M282;
	DB	'Si loin...      '
	DB	'Ne crains rien. '
	DB	'Fonce et vole!'
        DB      WED
;
M283;
	DB	'La lueur des    '
	DB	'tuiles sera     '
	DB	'ton guide...'
        DB      WED
;
M284;
	DB	'Plonge l% o=    '
	DB	'se croisent     '
	DB	'les lumi+res    '
	DB	'des flambeaux...'
        DB      WED
;
M285;
	DB	'Fracasse        '
	DB	'le mur          '
	DB	'des Yeux        '
	DB	'du Masque!'
        DB      WED
;
M286;
	DB	'Le r*bus est    '
	DB	'r*solu si les 4 '
	DB	'piliers tombent.'
        DB      WED
;
M287;
	DB	'Comble tous     '
	DB	'les trous avec  '
	DB	'le roc qui roule'
	DB	'et cette ',MK8,' est  '
	DB	'la solution!'
        DB      WED
;
M288;
	DB	'Si une porte ne '
	DB	's^ouvre pas,    '
	DB	'd*place un bloc.'
        DB      WED

M289;
	DB	'Si les blocs se '
	DB	'ressemblent, un '
	DB	'nouveau chemin  '
	DB	's^ouvrira.'
        DB      WED

M28A;
	DB	'Une partie du   '
	DB	'sol s^*l+ve.    '
	DB	'Actionne le     '
	DB	'cristal bleu.'
        DB      WED

;
BANK1C	GROUP   $1C
;
M28B;
	DB	'Pour vaincre le '
	DB	'monstre noir %  '
	DB	'la carapace,    '
	DB	'fais-lui manger '
	DB	'un plat piment*.'
        DB      WED

M28C;
	DB	'Frappe de ton   '
	DB	'*p*e certains   '
	DB	'murs et *coute  '
	DB	'bien.'
        DB      WED

M28D;
	DB	'Si ton *p*e ne  '
	DB	'peut vaincre un '
	DB	'squelette,      '
	DB	'essaie une      '
	DB	'bombe.'
        DB      WED

M28E;
	DB	'Utilise les     '
	DB	'jarres pour     '
	DB	'ouvrir un       '
	DB	'coffre.'
        DB      WED

M28F;
	DB	'Chevauche les   '
	DB	'cristaux pour   '
	DB	'avancer.'
        DB      WED

M290;
	DB	'Jeter pour      '
	DB	'progresser.'
        DB      WED

M291;
	DB	'Saute pour      '
	DB	'acc*der au      '
	DB	'coffre de la    '
	DB	'table.'
        DB      WED

M292;
	DB	'D*truis les     '
	DB	'monstres % la   '
	DB	'cl* par le haut.'
        DB      WED

M293;
	DB	'Utilise l^arc   '
	DB	'sur une statue  '
	DB	'*trange.'
        DB      WED

M294;
	DB	'On prend une    '
	DB	'photo?          '
	DB	'    OUI  NON'
        DB      WE2

M295;
	DB	'Pas de photo?!  '
	DB	'Tu te fiches de '
	DB	'moi?            '
	DB	'    Oui  Non'
        DB      WE2

M296;
	DB	'Quel dommage!   '
        DB      WED

M297;
	DB	'G*nial! Appelons'
	DB	'cette photo     '
	DB	'"Game Over."'
        DB      WED

M298;
	DB	'Quel est ton nom'
	DB	'jeune homme?    '
	DB	'#####? Alors... '
	DB	'Voici ton album,'
	DB	'#####.          '
	DB	'Regarde-le avant'
	DB	'de partir!'
        DB      WED

M299;
	DB	'Voyons si nous  '
	DB	'pouvons remplir '
	DB	'cet album!'
        DB      WED

M29A;
	DB	'11 photos %     '
	DB	'prendre! Quel   '
	DB	'type de photo   '
	DB	't^int*resse?'
        DB      WED

M29B;
	DB	'10 photos %     '
	DB	'prendre! Quel   '
	DB	'type de photo   '
	DB	't^int*resse?'
        DB      WED

M29C;
	DB	'9 photos %      '
	DB	'prendre! Quel   '
	DB	'type de photo   '
	DB	't^int*resse?'
        DB      WED

M29D;
	DB	'8 photos %      '
	DB	'prendre! Quel   '
	DB	'type de photo   '
	DB	't^int*resse?'
        DB      WED

M29E;
	DB	'7 photos %    	 '
	DB	'prendre! Quel   '
	DB	'type de photo   '
	DB	't^int*resse?'
        DB      WED

M29F;
	DB	'6 photos %      '
	DB	'prendre! Quel   '
	DB	'type de photo   '
	DB	't^int*resse?'
        DB      WED

M2A0;
	DB	'5 photos %      '
	DB	'prendre! Quel   '
	DB	'type de photo   '
	DB	't^int*resse?'
        DB      WED

M2A1;
	DB	'4 photos %      '
	DB	'prendre! Quel   '
	DB	'type de photo   '
	DB	't^int*resse?'
        DB      WED

M2A2;
	DB	'3 photos %      '
	DB	'prendre! Quel   '
	DB	'type de photo   '
	DB	't^int*resse?'
        DB      WED

M2A3;
	DB	'2 photos %      '
	DB	'prendre! Quel   '
	DB	'type de photo   '
	DB	't^int*resse?'
        DB      WED

;
BANK16	GROUP   $16
;
M2A4;
	DB	'1 photos %      '
	DB	'prendre! Quel   '
	DB	'type de photo   '
	DB	't^int*resse?'
        DB      WED

M2A5;
	DB	'Oh non! La      '
	DB	'pellicule est   '
	DB	'finie! Pense %  '
	DB	'regarder ton    '
	DB	'album!'
        DB      WED

M2A6;
	DB	'Bonjour! Je suis'
	DB	'le photographe! '
	DB	'Quel belle      '
	DB	'occasion de     '
	DB	'faire une photo!'
	DB	'Appelons-la:    '
	DB	'"Belle t<te!"'
        DB      WED

M2A7;
	DB	'Voil% qui       '
	DB	'repr*sente ton  '
	DB	'aventure % la   '
	DB	'perfection!'
        DB      WED

M2A8;
	DB	'Appelons ceci:  '
	DB	'"C^*tait juste."'
        DB      WED

M2A9;
	DB	'Je suis trop    '
	DB	'pr+s.'
        DB      WED

M2AA;
	DB	'Je dois reculer.'
        DB      WED

M2AB;
	DB	'Aaaaaah!'
        DB      WED

M2AC;
	DB	'Je retourne % la'
	DB	'boutique!'
        DB      WED

M2AD;
	DB	'Reviens me voir '
	DB	'quand tu seras  '
	DB	'seul!'
        DB      WED

M2AE;
	DB	'Es-tu s\r?      '
	DB	'    OUI  NON'
        DB      WE2

M2AF;
	DB	'J^adore les     '
	DB	'photos! H*,     '
	DB	'#####! Que fais-'
	DB	'tu dans le coin?'
        DB      WED
;
;====================================================================
        END
