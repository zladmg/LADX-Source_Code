	KANJI
  ;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  ;%                                               %
  ;%      GAME BOY                                 %
  ;%                                               %
  ;%                                               %
  ;%         ��   LEGEND OF SHIBAHARA  ��          %
  ;%                                               %
  ;%                                               %
  ;%      MESSAGE DATA USA                         %
  ;%                                               %
  ;%                                               %
  ;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;  WED �F  End of message. 
;
;  WE2 �F  End of Asking.
;
;  Each line must have 16 characters except for the last one (fill with spaces)
;
;  The apostrophe (') within a message should be represented as a caret (^)
;  Player name= #####
;**************************************************************

;===============================================================
BANK14	GROUP	$14
;===============================================================

MS00; Tarin, Marin's father
;
;		 0123456789ABCDEF
	DB	'Whoa, boy! Where'
	DB	'ya off to in    '
	DB	'such a hurry?   '
	DB	'Set a spell, I  '
	DB	'got somethin^ ta'
	DB	'tell ya!'
	DB	WED
;
MS01; Marin
;
	DB	'What a relief! I'
	DB	'thought you^d   '
	DB	'never wake up!  '
	DB	'You were tossing'
	DB	'and turning...  '
	DB	'What?  Zelda?   '
	DB	'No, my name^s   '
	DB	'Marin!  You must'
	DB	'still be feeling'
	DB	'a little woozy. '
	DB	'You are on      '
	DB	'Koholint Island!'
	DB	WED
;
MS02; Marin
;
	DB	'Follow the lane '
	DB	'south to reach  '
	DB	'the beach where '
	DB	'I found you.    '
	DB	'Since you washed'
	DB	'ashore, lots of '
	DB	'nasty monsters  '
	DB	'have been in the'
	DB	'area, so be     '
	DB	'careful, okay?'
	DB	WED
;
MS03; Marin (next to weathercock, singing)
;
	DB	'Hi!  Tarin went '
	DB	'to the forest to'
	DB	'look for toad-  '
	DB	'stools, but I^d '
	DB	'rather sing.    '
	DB	'Listen to this, '
	DB	'it^s called the ' 
	DB	'^Ballad of the  '
	DB	'Wind Fish.^'
	DB	WED
;
MS04; Marin (when you have the ocarina)
;
	DB	'Hey!  That^s a  '
	DB	'nice Ocarina you'
	DB	'have there! Will'
	DB	'you accompany   '
	DB	'me as I sing?'
	DB	WED
;
MS05; Marin (after you learn her song)
;
	DB	'I just love to  '
	DB	'sing-- what can '
	DB	'I say?  What do '
	DB	'you like to do, '
	DB	'#####?'
	DB	WED
;
MS06; Marin (after you meet Tarin)
;
	DB	'#####, Tarin^s  '
	DB	'taking a nap at '
	DB	'home.  I don^t  '
	DB	'know how he can '
	DB	'sleep on such a '
	DB	'nice day!  It   '
	DB	'makes me want to'
	DB	'sing a song...  '
	DB	'Yes, the song is'
	DB	'^Ballad of the  '
	DB	'Wind Fish!^'
	DB	WED
;
; VARIOUS OCCASIONS
;
MS07;  Boss door
;
	DB	'Eh? It^s locked!'
	DB	'You can open the'
	DB	'door with the   '
	DB	'Nightmare Key.'
	DB	WED
;
MS08; Power Chip (Piece of Power)
;
	DB	'You got a Piece '
	DB	'of Power!  You  '
	DB	'can feel the    '
	DB	'energy flowing  '
	DB	'through you!'
	DB	WED
;
; RACCOON TARIN EVENT
;
MS09; Witch
;
	DB	'Ahhh... It has  '
	DB	'the Sleepy Toad-'
	DB	'stool, it does! '
	DB	'We^ll mix it up '
	DB	'something in a  '
	DB	'jiffy, we will!'
	DB	WED
;
MS0A; Tarin (after becoming human again)
;
	DB	'The last thing I'
	DB	'kin remember was'
	DB	'bitin^ into a   '
	DB	'big juicy toad- '
	DB	'stool... Then, I'
	DB	'had the darndest'
	DB	'dream... I was a'
	DB	'raccoon!  Yeah, '
	DB	'sounds strange, '
	DB	'but it sure was '
	DB	'fun!'
	DB	WED
;
MS0B; Tarin (talk to again)
;
	DB	'I^m all tucker^d'
	DB	'out...  I think '
	DB	'I better set a  '
	DB	'spell before I  '
	DB	'head home...'
	DB	WED
;
MS0C; Witch (without mushroom)
;
	DB	'Double double,  '
	DB	'toil and trouble'
	DB	'a toadstool mix '
	DB	'makes powder for' 
	DB	'tricks!'
	DB	WED
;
MS0D; Raccoon
;
	DB	'As a raccoon, my'
	DB	'nose is verrry  '
	DB	'sensitive, ta   '
	DB	'stuff like dust '
	DB	'and powder...'
	DB	WED
;
MS0E; When you use the mushroom as an item
;
	DB	'It^s the toad-  '
	DB	'stool you picked'
	DB	'in the woods.   '
	DB	'What is it for? '
	DB	'You hold it over'
	DB	'your head and a '
	DB	'mellow aroma    '
	DB	'wafts into your '
	DB	'nostrils.'
	DB	WED
;
MS0F; When you first find the mushroom
;
	DB	'You pick the    '
	DB	'toadstool... As '
	DB	'you hold it over'
	DB	'your head, a    '
	DB	'mellow aroma    '
	DB	'flows into your '
	DB	'nostrils.'
	DB	WED
;
MS10; Tarin talking in his sleep
;
	DB	'Hrrrm...Snore...'
	DB	'Hunh?... If^n ya'
	DB	'don^ know...call'
	DB	'old man Ulrira! '
	DB	'Zonk...Snore...'
	DB	WED
;
MS11;  Tarin when he comes back from woods
;
	DB	'I^m tired... I^m'
	DB	'goin^ ta sleep  '
	DB	'now... Zzzzzz...'
	DB	WED
;
MS12;  Talking Tree
;
	DB	'Well that was a '
	DB	'surprise!  Hey! '
	DB	'I^ll tell you a '
	DB	'secret! Use your'
	DB	'sword to poke at'
	DB	'dungeon walls...'
	DB	'If you hear a   '
	DB	'hollow clank,   '
	DB	'you can break   '
	DB	'the wall with a '
	DB	'Bomb!'
	DB	WED
;
MS13;  When you learn Marin's song
;
	DB	'You^ve learned  '
	DB	'the ^Ballad of  '
	DB	'the Wind Fish!^ '
	DB	'This song will  '
	DB	'always remain in'
	DB	'your heart!'
	DB	WED
;
MS14;  If MS16 = YES
;
	DB	'Please remember '
	DB	'this song!  You '
	DB	'should play it  '
	DB	'every once in a '
	DB	'while to keep it'
	DB	'fresh in your   ' 
	DB	'mind!'
	DB	WED
;
MS15;  If MS16 = NO
;
	DB	'Please!  I want '
	DB	'you to learn it!'
	DB	'This song is my '
	DB	'favorite!'
	DB	WED
;
MS16;  
;
	DB	'So, how do you  '
	DB	'like it?  It^s  '
	DB	'really touching,'
	DB	'isn^t it?  Does '
	DB	'it stick in your'
	DB	'mind?           '
	DB	'    Yes  No'
	DB	WE2
;
MS17;  Tracy
;
	DB	'Hi there, big   '
	DB	'guy!  I^m Crazy '  
	DB	'Tracy!  I^ve got'
	DB	'a little secret '
	DB	'for sale that^ll'
	DB	'pump you up!'
	DB	WED
;
MS18;  When you don't have medicine -1
;
	DB	'Will you give me'
	DB	'28 Rupees for my'
	DB	'secret?         '
	DB	'    Give Don^t'
	DB	WE2
;
MS19;  When you don't have medicine -2
;
	DB	'How about it?   '
	DB	'42 Rupees for my'
	DB	'little secret...'
	DB	'    Give Don^t'
	DB	WE2
;
MS1A;  When you buy the medicine
;
	DB	'All right, come '
	DB	'here and I^ll   '
	DB	'rub it on you!  '
	DB	'...There... I^ve'
	DB	'applied my own  '
	DB	'secret medicine!'
	DB	'It will take    '
	DB	'effect when you '
	DB	'lose all heart! '
	DB	'Drop by again,  '
	DB	'big guy!'
	DB	WED
;
MS1B;  When you don't have enough money
;
	DB	'Beat it, then!  '
	DB	'Come back when  '
	DB	'you have some   '
	DB	'cash!'
	DB	WED
;
MS1C;  When you already have medicine
;
	DB	'... ... ... ... '
	DB	'But I won^t sell'
	DB	'it to you!'
	DB	WED
;
MS1D;  When you don't buy the medicine
;
	DB	'Well!  I^m only '
	DB	'offering you a  '
	DB	'secret that will'
	DB	'make you strong!'
	DB	'You^re such a   '
	DB	'chicken!!'
	DB	WED
;
MS1E;  When you don't have the medicine -3
;
	DB	'...You^re so    '
	DB	'cute!  I^ll give'
	DB	'you a 7 Rupee   '
	DB	'discount!'
	DB	WED
;
MS1F;  When Marin comes with you
;
	DB	'You got Marin!  '
	DB	'Is this your big'
	DB	'chance?'
	DB	WED
;
MS20;  Fox
;
	DB	'GRRRR...'
	DB	WED
;
MS21;  Raccoon Tarin, before entering loop in forest
;
	DB	'Heh heh heh ho! '    
	DB	'You^re goin^ ta '
	DB	'be lost, thanks ' 
	DB	'to me!  Heh heh!'
	DB	WED
;
MS22;  Dog's bark
;
	DB	'BOW WOW!        '
	DB	'BOW WOW!'
	DB	WED
;
MS23;  Small Dog
;
	DB	'YIP YIP!        '
	DB	'YIP YIP!'
	DB	WED
;
MS24;   Fairy Spring
;
	DB	'Let^s heal your '
	DB	'wounds and get  '
	DB	'rid of all that '
	DB	'stress... Close '
	DB	'your eyes and   '
	DB	'relax...'
	DB	WED
;
MS25;  Crying Bird (Medium Boss in Level 7)
;
	DB	'You dirty rat!  '
	DB	'You k-k-k...beat'
	DB	'my brothers!    '
	DB	'You^ll pay!!    '
	DB	'I^ll never      '
	DB	'forget you!'
	DB	WED
;
MS26;  Bird's story
;
	DB	'Hey runt!  You  '
	DB	'think you can   '
	DB	'take me?!  All  '
	DB	'right boys, get '
	DB	'this punk out   '
	DB	'of my face!'
	DB	WED
;
MS27;  PAPAHL
;
	DB	'Yep!  Those^re  '
	DB	'my boys!  I^m   '
	DB	'Papahl, pleased '
	DB	'ta meetcha! I^ll'
	DB	'be lost in the  '
	DB	'hills later, so '
	DB	'keep a look out ' 
	DB	'for me, hear?'
	DB	WED
;
MS28;  Marin Option: Breaking pots
;
	DB	'Yes!!  Yes!!    '
	DB	'Break them!     '
	DB	'Break them all! '
	DB	'... ... ... ... '
	DB	'What?  What^s   '
	DB	'wrong?'
	DB	WED
;
MS29;  When you try to buy something you already have
;
	DB	'Aye Caramba!    '
	DB	'Kid, you have a '   
	DB	'lot to learn,   '
	DB	'trying to buy   '
	DB	'something you   '
	DB	'have no use for!'
	DB	WED
;
MS2A;  Get a heart in UFO Catcher
;
	DB	'You^ve got a    '
	DB	'Heart!  Thump!  '
	DB	'One of your     '
	DB	'Heart Containers'
	DB	'is filled!'
	DB	WED
;
MS2B;  Not used
MS2C;  Tool Shop -- Bow and Arrow set
;
	DB	'Bow & Arrow Set '
	DB	'Only 980 Rupees!'
	DB	'    Buy  No Way'
	DB	WE2
;
MS2D;  10 Arrows
;
	DB	'   10 Arrows    '
	DB	'   10 Rupees    '
	DB	'    Buy  Don^t'
	DB	WE2
;
MS2E;  Nishiyama when you don't have anything to buy
;
	DB	'Hey!  Welcome!  '
	DB	'See something   '
	DB	'you like?!  Just'
	DB	'bring it here!'
	DB	WED
;
MS2F;  When you get caught shoplifting
;
	DB	'Hey! You! Stop! '
	DB	'You gotta pay!  '
	DB	'Put it back!'
	DB	WED
;
MS30;  Shovel
;
	DB	'  Deluxe Shovel '
	DB	'   200 Rupees!  '  
	DB	'Seems expensive!'
	DB	'    Buy  No Way!'
	DB	WE2
;
MS31;  3 Hearts
;
	DB	'   Three Hearts '
	DB	'    10 Rupees!  '
	DB	'    Buy  Don^t'
	DB	WE2
;
MS32;   Shield
;
	DB	'     Shield     '
	DB	'    20 Rupees!  '
	DB	'    Buy  Don^t'
	DB	WE2
;
MS33;  10 Bombs
;
	DB	'    Ten Bombs   '
	DB	'    10 Rupees   '
	DB	'    Buy  Don^t'
	DB	WE2
;
MS34;  When you don't have enough money
;
	DB	'Sorry, kid!  You'
	DB	'don^t have the  '
	DB	'Rupees!  Come   '
	DB	'back when you   '
	DB	'have the cash!'
	DB	WED
;
MS35;  Thank you
;
	DB	'Thanks a lot!   '
	DB	'And come again!'  
	DB	WED
;
MS36;  When you shoplift
;
	DB	'Guess what?  You'
	DB	'got it for free.'
	DB	'Are you proud of'
	DB	'yourself?'
	DB	WED
;
MS37; Not used
MS38;  Visit the store after stealing
;
	DB	'I wasn^t kidding'
	DB	'when I said pay!'
	DB	'Now, you^ll pay '
	DB	'the ultimate    '
	DB	'price!!'
	DB	WED
;
MS39;  The gate of Kanalet Castle is opened!  
;
	DB	'Hunh?  It sounds'
	DB	'like the castle '
	DB	'gate opened! You'
	DB	'can easily leave'
	DB	'the castle now!'
	DB	WED
;
MS3A; Not used
MS3B; Trendy Game
;
	DB	'  TRENDY GAME!  '
	DB	' One Play 10 Rs.'
	DB	'    Play No'
	DB	WE2
;
MS3C;  Trendy game sales clerk
;
	DB	'The A and B     '
	DB	'Buttons move the'
	DB	'crane...The rest' 
	DB	'is just timing! '
	DB	'Go over to the  '
	DB	'buttons to play!'
	DB	'Good Luck!'
	DB	WED
;
MS3D;  Shield in Trendy game
;
	DB	'It^s a Shield!  '   
	DB	'There is space  '
	DB	'for your name!'
	DB	WED
;
MS3E;  Try again?
;
	DB	'Challenge Again?'
	DB	'    Play No'
	DB	WE2
;
MS3F;  When you choose yes to 3E
;
	DB	'Good Luck!'
	DB	WED
;
MS40;  When you get all prizes
;
	DB	'We^re closing up'
	DB	'for today!  Come'
	DB	'again, anytime!'
	DB	WED
;
MS41;  When you get magic powder
;
	DB	'You got some    '
	DB	'Magic Powder!   '
	DB	'Try to sprinkle '
	DB	'it on many      ' 
	DB	'things!'
	DB	WED
;
MS42;  When you get 30 Rupees
;
	DB	'It^s 30 Rupees! '
	DB	'You can play the'
	DB	'game three more '
	DB	'times with this!'
	DB	WED
;
MS43;  Ghost grave
;
	DB	'Cough Cough...  '
	DB	'Don^t sprinkle  '
	DB	'that on me...   '
	DB	'...I^ll have to '
	DB	'curse you!      '
	DB	'Cough Cough...'
	DB	WED
;
MS44;   Yoshi Doll!
;
	DB	'You got a Yoshi '
	DB	'Doll!  Recently,'
	DB	'he seems to be  '
	DB	'showing up in   '
	DB	'many games!'
	DB	WED
;
MS45;  Fishing Pond
;
	DB	'How about some  '
	DB	'fishing, little '
	DB	'buddy? I^ll only'
	DB	'charge you 10   '
	DB	'Rupees...       '
	DB	'    Fish Not Now'
	DB	WE2
;
MS46;  MS46 = NO
;
	DB	'You have to have'
	DB	'more passion!   '
	DB	'Live a little!'
	DB	WED
;
MS47;  MS46 = YES
;
	DB	'Okay, here^s how'
	DB	'you do it.  Use '
	DB	XL,' and ',XR,' on the ',MK8
	DB	'to aim a cast.  '
	DB	'Once you hook a '
	DB	'fish, press the '
	DB	'Button rapidly  '
	DB	'to reel him in!'
	DB	WED
;
MS48;  Try again
;
	DB	'Why not try one '
	DB	'more time,      '
	DB	'little buddy?   '
	DB	'    Cast Not Now'
	DB	WE2
;
MS49;  When the line breaks
;
	DB	'Wow! That one   ' 
	DB	'got away!  Want '
	DB	'to try again?   '
	DB	'    Cast Not Now'
	DB	WE2
;
MS4A;  When you catch a big one
;
	DB	'Wow! Nice Fish! '
	DB	'It^s a lunker!! '
	DB	'I^ll give you a '
	DB	'20 Rupee prize! '
	DB	'Try again?      '
	DB	'    Cast Not Now'
	DB	WE2
;
MS4B;  When you've caught all the fish
;
	DB	'This pond^s all '
	DB	'fished out.  Why'
	DB	'not try your    '
	DB	'luck in the sea?'
	DB	'    Okay No'
	DB	WE2
;
MS4C;  When MS4B = YES
;       
	DB	'Did I say that? '
	DB	'Forget it, okay?'
	DB	'Run along now...'
	DB	WED
;
MS4D;  When you catch a small fish
;
	DB	'It^s a runt!    '
	DB	'I^ll only give  '
	DB	'you a 5 Rupees  '
	DB	'prize for that. '
	DB	'You should try  '
	DB	'again!          '
	DB	'    Okay No'
	DB	WE2
;
MS4E;  When you don't have enough money
;
	DB	'You^re short of '
	DB	'Rupees?  Don^t  '
	DB	'worry about it. '
	DB	'You just come   '
	DB	'back when you   '
	DB	'have more money,'
	DB	'little buddy.'
	DB	WED
;
MS4F;  When you get a piece of heart
;
		db	'You^ve got a    '
		db	'Piece of Heart! '
		db	'Press SELECT on '
		db	'the Subscreen   '
		db	'to see.'
		db	WED
;
;;;;;;;;	DB	'You^ve got a    '
;;;;;;;;	DB	'Piece of Heart! '
;;;;;;;;	DB	WED
;
MS50;  When you collect 4 pieces of heart
;
	DB	'You collected   '
	DB	'four Pieces of  '
	DB	'Heart.  Now, you'
	DB	'have a complete '
	DB	'Heart Container!'
	DB	WED
;
MS51; Pure Ice Block in Dungeon 8
;
	DB	'Brrrr... This is'
	DB	'a block of solid'
	DB	'ice!  It^s very '
	DB	'cold!'
	DB	WED
;
MS52;  Bottle Imp
;
	DB	'NYAH NYAH! You  '
	DB	'can^t hurt me as'
	DB	'long as I have  '
	DB	'my bottle!'
	DB	WED
;
MS53;  When you break his bottle
;
	DB	'Waaaah! You- you'
	DB	'broke my bottle!'
	DB	'Why, you... You '
	DB	'make me hopping '
	DB	'mad!!!'
	DB	WED
;
MS54;  TARIN's Second message
;
	DB	'Well, #####, ya '
	DB	'finally snapped '
	DB	'out of it...    '
	DB	'Name^s Tarin... '
	DB	'Hope yer feelin^'
	DB	'better...  What?'
	DB	'How did I know  '
	DB	'your name?  You '
	DB	'think it^s weird'
	DB	'eh?  Well, I saw'
	DB	'it on back of   '
	DB	'this shield!'
	DB	WED
;
MS55;   Tarin after you get shield
;
	DB	'Oh, yeah... Some'
	DB	'other stuff like'
	DB	'this washed up  '
	DB	'on the beach... '
	DB	'If^n you go look'
	DB	'watch out for   '
	DB	'monsters! Ever  '
	DB	'since you showed'
	DB	'up, #####, I^ve '
	DB	'seen ^em all    '
	DB	'over the place!'
	DB	WED
;	********************
;	*** MAP MESSAGES ***
;	********************
MS56
	DB	'Level 1--       '
	DB	'     Tail Cave'
	DB	WED
MS57
	DB	'Level 2--       '
	DB	'   Bottle Grotto'
	DB	WED
MS58
	DB	'Level 3--       '
	DB	'      Key Cavern'
	DB	WED
MS59
	DB	'Level 4--       '
	DB	' Angler^s Tunnel'
	DB	WED
MS5A
	DB	'Level 5--       '
	DB	'   Catfish^s Maw'
	DB	WED
MS5B
	DB	'Level 6--       '
	DB	'     Face Shrine'
	DB	WED
MS5C
	DB	'Level 7--       '
	DB	'   Eagle^s Tower'
	DB	WED
MS5D
	DB	'Level 8--       '
	DB	'     Turtle Rock'
	DB	WED
MS5E
	DB	'Wind Fish^s Egg '
	DB	WED
MS5F; not used
MS60
	DB	'Mountain Bridge '
	DB	WED
MS61
	DB	'Sale^s House O^ '
	DB	'    Bananas'
	DB	WED
MS62
	DB	'Pothole Field'
	DB	WED
MS63
	DB	'    House By    '
	DB	'     The Bay'
	DB	WED
MS64
	DB	'   Trendy Game'
	DB	WED
MS65
	DB	'  Town Tool Shop'
	DB	WED
MS66
	DB	'Marin and       '
	DB	'   Tarin^s House'
	DB	WED
MS67
	DB	'   Witch^s Hut'
	DB	WED
MS68
	DB	'  Yarna Desert'
	DB	WED
MS69
	DB	'  Ukuku Prairie'
	DB	WED
MS6A
	DB	'Mysterious Woods'
	DB	WED
MS6B
	DB	'  Mt. Tamaranch '
	DB	WED
MS6C
	DB	'     Tal Tal    ' 
	DB	' Mountain Range '
	DB	WED
MS6D
	DB	'  Signpost Maze '
	DB	WED
MS6E
	DB	'  Mabe Village  '
	DB	WED
MS6F   
	DB	' Animal Village '
	DB	WED
MS70
	DB	'    Cemetery    '
	DB	WED
MS71
	DB	'   Rapids Ride  '
	DB	WED
MS72
	DB	'Koholint Prairie'
	DB	WED
MS73
	DB	' Toronbo Shores'
	DB	WED
MS74
	DB	'  Martha^s Bay'      
	DB	WED
MS75
	DB	'East of the Bay'
	DB	WED
MS76
	DB	'  Goponga Swamp'
	DB	WED
MS77
	DB	'   Face Shrine '
	DB	WED
MS78
	DB	' Kanalet Castle'
	DB	WED
MS79
	DB	'Tal Tal Heights'
	DB	WED
MS7A
	DB	'Tabahl Wasteland'
	DB	WED
MS7B
	DB	'  South of the  '
	DB	'    Village'
	DB	WED
MS7C
	DB	'  Fishing Pond  '
	DB	WED
MS7D
	DB	'Madam MeowMeow^s'
	DB	'     House      '
	DB	' Beware of Dog!'
	DB	WED
MS7E
	DB	'Old Man Ulrira^s'
	DB	'     House      '
	DB	WED
MS7F
	DB	'Weird Mr. Write '
	DB	WED
MS80      
	DB	' Crazy Tracy^s  '
	DB	'  Health Spa'
	DB	WED
MS81
	DB	'Quadruplet^s    '
	DB	'      House'
	DB	WED
MS82
	DB	'  Dream Shrine  '
	DB	WED
MS83
	DB	'Telephone Booth '
	DB	XD,' Signpost Maze '
	DB	WED
MS84
	DB	'Seashell Mansion'
	DB	WED
MS85
	DB	'Richard^s Villa '
	DB	WED
MS86
	DB	'     Hen House  '  
	DB	WED
MS87
	DB	'Village Library '
	DB	WED
MS88   
	DB	'    Raft Shop   ' 
	DB	WED
MS89
	DB	'    Warp Hole   '
	DB	WED
;
MS8A;	Rock that can be broken by a bomb
;
	DB	'This rock has   '
	DB	'many cracks...  '
	DB	'There must be   '
	DB	'some way to     '
	DB	'shatter it...'
	DB	WED
;
MS8B;	Rock that can be broken with dash 
;
	DB	'Oh? What a weird'
	DB	'object!  There  '
	DB	'must be some way'
	DB	'to tackle this  '
	DB	'obstacle.'
	DB	WED
;
MS8C;	Key Block
;
	DB	'Hunh?  This rock'
	DB	'has a key hole! '
	DB	'You should come '
	DB	'back with a key!'
	DB	WED
;
MS8D;	Picking up objects
;
	DB	'Wow!  This looks'
	DB	'pretty heavy!   '
	DB	'You won^t be    '
	DB	'able to lift it '
	DB	'with just your  '
	DB	'bare hands...'
	DB	WED
;
MS8E;	When you play the ocarina before you learn a song
;
	DB	'Well, it^s an   '
	DB	'Ocarina, but you'
	DB	'don^t know how  '
	DB	'to play it...'
	DB	WED
;
MS8F; When you attack a hen with Marin Option
;
	DB	'No!  No!  Poor  '
	DB	'hen!  Stop that!'
	DB	WED
;
MS90;	Power Bracelet -1
;
	DB	'You found the   '
	DB	'Power Bracelet! '
	DB	'At last, you can'
	DB	'pick up pots and'
	DB	'stones!'
	DB	WED
;
MS91;	Shield
;
		db	'You got your    '
		db	'shield back!    '
		db	'Press the button'
		db	'and repel       '
		db	'enemies with it!'
		db	WED
;
;;;;;;;;	DB	'You got your    '
;;;;;;;;	DB	'Shield back!    '
;;;;;;;;	DB	'You can use it  '
;;;;;;;;	DB	'to flip enemies!'
;;;;;;;;	DB	WED
;
MS92;  Pile of bones in Desert
;
	DB	'Ahhh... Yess... '
	DB	'That dust was so'
	DB	'refreshing...   '
	DB	'For that, I^ll  '
	DB	'tell you a hint!'
	DB	'Use a Bomb in a '
	DB	'place where the '
	DB	'sand swallows   '
	DB	'you... There is '
	DB	'a treat on the  '
	DB	'other side of   '
	DB	'the wall... Bye!'
	DB	WED
;
MS93;	Hook Shot
;
	DB	'You^ve got the  '
	DB	'Hook Shot!  Its '
	DB	'chain stretches '
	DB	'long when you   '
	DB	'use it!'
	DB	WED
;
MS94;	Magic rod
;
	DB	'You^ve got the  '
	DB	'Magic Rod!  Now '
	DB	'you can burn    '
	DB	'things! Burn it!'
	DB	'Burn, baby burn!'
	DB	WED
;
MS95;	Pegasus Boots
;
	DB	'You^ve got the  '
	DB	'Pegasus Boots!  '
	DB	'If you hold down'
	DB	'the Button, you '
	DB	'can dash!'
	DB	WED
;
MS96;	Ocarina
;
	DB	'You^ve got the  '
	DB	'Ocarina!  You   '
	DB	'should learn to '
	DB	'play many songs!'
	DB	WED
;
MS97;	Roc Feather
;
	DB	'You^ve got the  '
	DB	'Roc^s Feather!  '
	DB	'It feels like   '
	DB	'your body is a  '
	DB	'lot lighter!'
	DB	WED
;
MS98;	Shovel
;
	DB	'You^ve got a    '
	DB	'Shovel!  Now you'
	DB	'can feel the joy'
	DB	'of digging!' 
	DB	WED
;
MS99;	Magic Powder
;
	DB	'You^ve got some '
	DB	'Magic Powder!   '
	DB	'Try sprinkling  '
	DB	'it on a variety '
	DB	'of things!'
	DB	WED
;
MS9A;	
		db	'You^ve got a    '
		db	'bomb! Way to    '
		db	'go!'
		db	WED
;
MS9B;	Sword
;
	DB	'You found your  '
	DB	'Sword!  It must '
	DB	'be yours because'
	DB	'it has your name'
	DB	'engraved on it!'
	DB	WED
;
MS9C;	Flippers
;
	DB	'You^ve got the  '
	DB	'Flippers! If you'
	DB	'press the B     '
	DB	'Button while you'
	DB	'swim, you can   '
	DB	'dive underwater!'
	DB	WED
;
MS9D;	Magnifying Glass
;
	DB	'You^ve got the  '
	DB	'Magnifying Lens!'
	DB	'This will reveal'
	DB	'many things you '
	DB	'couldn^t see    '
	DB	'before!'
	DB	WED
;
MS9E; not used
MS9F;	Sword 2
;
	DB	'You^ve got a    '
	DB	'new Sword!  You '
	DB	'should put your '
	DB	'name on it right'
	DB	'away!'
	DB	WED
;
MSA0;
		db	'You found the   '
		db	'secret medicine!'
		db	'You should apply'
		db	'this and see    '
		db	'what happens!'
		db	WED
;
MSA1
;
	DB	'You^ve got the  '
	DB	'Tail Key!  Now  '
	DB	'you can open the'
	DB	'Tail Cave gate!'
	DB	WED
;
MSA2
;
	DB	'You^ve got the  '
	DB	'Slime Key!  Now '
	DB	'you can open the'
	DB	'gate in Ukuku   '
	DB	'Prairie!'
	DB	WED
;
MSA3
;
	DB	'You^ve got the  '
	DB	'Angler Key!'
	DB	WED
;
;
;====================================================================
BANK16  GROUP   $16
;;;;;;;;        ORG     $5700
;====================================================================
MSA4
	DB	'You^ve got the  '
	DB	'Face Key!'
	DB	WED
;
MSA5
;
	DB	'You^ve got the  '
	DB	'Bird Key!'
	DB	WED
;
MSA6
;
	DB	'At last, you got'
	DB	'a Map!  Press   '
	DB	'the START Button'
	DB	'to look at it!'
	DB	WED
;
MSA7
;
	DB	'You^ve got the  '
	DB	'Compass!  Now,  '
	DB	'you can see     '
	DB	'where the chests'
	DB	'and Nightmare   '
	DB	'are hidden! This'
	DB	'Compass has a   '
	DB	'new feature-- a '
	DB	'tone will tell  '
	DB	'you if a key is '
	DB	'hidden in a room'
	DB	'when you enter! '
	DB	WED
;
MSA8
;
		db	'You found a     '
		db	'stone beak!     '
		db	'Let^s find the  '
		db	'owl statue that '
		db	'belongs to it.'
		db	WED
;
;;;;;;;;	DB	'You found a     '
;;;;;;;;	DB	'fragment of a   '
;;;;;;;;	DB	'Stone Slab!  Now'
;;;;;;;;	DB	'you can read the'
;;;;;;;;	DB	'message on the  '
;;;;;;;;	DB	'wall!'
;;;;;;;;	DB	WED
;;;;;;;;;
MSA9
;
	DB	'You^ve got the  '
	DB	'Nightmare^s Key!'
	DB	'Now you can open'
	DB	'the door to the '
	DB	'Nightmare^s     '
	DB	'Lair!'
	DB	WED
;
MSAA
;
	DB	'You got a Small '
	DB	'Key!  You can   '
	DB	'open a locked   '
	DB	'door.'
	DB	WED
;
MSAB
;
	DB	'   You got 20   '
	DB	'     Rupees!    '
	DB	'      JOY!'
	DB	WED
;
MSAC
;
	DB	'    You got 50  '
	DB	'      Rupees!   '
	DB	'    Very Nice!'
	DB	WED
;
MSAD
;
	DB	'   You got 100  ' 
	DB	'     Rupees!    '
	DB	'  You^re Happy!' 
	DB	WED
;
MSAE
;
	DB	'   You got 200  '
	DB	'     Rupees!    '
	DB	'You^re Ecstatic!'
	DB	WED
;
MSAF;   Hippo model at Schule's house
;
	DB	'Leave me alone! '
	DB	'I^m trying to   '
	DB	'sit still so    '
	DB	'Schule can paint'
	DB	'my portrait!'
	DB	WED
;
;	DB	'Stop trying to  '
;	DB	'take my towel!  '
;	DB	'You aren^t an   '  
;	DB	'artist! Quit it!'
;	DB	WED
;
MSB0;	BOSS #1: Moldorm (worm)
;
	DB	'BUZZZZZ! BUZZZZ!'
	DB	'   OUTZZZIDER!  '
	DB	WED
;
MSB1;	BOSS #2  Big Slime on ceiling
;
	DB	'NEENER NEENER!  '
	DB	'You can^t find  '
	DB	'me!  NYAH NYAH!'
	DB	WED
;
MSB2;	BOSS #4  Big Fish
;
	DB	'BLOOOP! BLOOOP! '
	DB	'  GLUB!  GLUB!  '
	DB	'OGGGH!  FOOOOD! '
	DB	'BLOOOOP!  GLUB!'
	DB	WED
;
MSB3;	BOSS #5  Long worm (Lanmola)
;
	DB	'Ssso...you are  '
	DB	'the outsssider, '
	DB	'come to wake the'
	DB	'Wind Fisssh...  '
	DB	'KEEE-HEE-HEEEH! '
	DB	'I shall eat you!'
	DB	WED
;
MSB4;	BOSS #2  Boss in the pot
;
	DB	'HO HO HO!       '
	DB	'I^m your bad guy'
	DB	'this time!!     '
	DB	'HO HO HO!'
	DB	WED
;
MSB5;	BOSS #5 Lanmola second conversation
;
	DB	'TSSSK, TSSSK!   '
	DB	'You don^t ssseem'
	DB	'to know what    '
	DB	'kind of island  '
	DB	'thisss iss...   '
	DB	'KEEE-HEEE-HEEE! '
	DB	'What a fool...  '
	DB	'KEE-HEE-HEH!!'
	DB	WED
;
MSB6;	BOSS # 6, First speech
	DB	'Hey dummy! Need '
	DB	'a hint?  My weak'
	DB	'point is... !!  '
	DB	'Whoops!  There I'
	DB	'go, talking too '
	DB	'much again...'
	DB	WED
;
;	DB	'Hey dummy! Need '
;	DB	'a hint?  My weak'
;	DB	'point is XXXX!  '
;	DB	'Whoops!  There I'
;	DB	'go, talking too '
;	DB	'much again...'
;	DB	WED
;
MSB7;	BOSS #6, second speech
;
	DB	'Okay, listen up!'
	DB	'If the Wind Fish'
	DB	'wakes up, every-'
	DB	'thing on this   '
	DB	'island will be  '
	DB	'gone forever!   '
	DB	'And I do mean...'
	DB	'EVERYTHING!'
	DB	WED
;
MSB8;	not used
MSB9;	BOSS #7 Second speech
;
	DB	'My energy...    '
	DB	'gone...I...lost!'
	DB	'But you will be '
	DB	'lost too, if the'
	DB	'Wind Fish wakes!'
	DB	'Same as me...you'
	DB	'...are...in...  '
	DB	'his...dream...'
	DB	WED
;
MSBA;	BOSS #7 First speech
;
	DB	'BAH!  I^m not   '
	DB	'going to hold   '
	DB	'back!  I^m going'
	DB	'to make you wish'
	DB	'you were never  '
	DB	'born!!'
	DB	WED
;
MSBB;	not used
MSBC;	Big Fireball Boss #8
;
	DB	'CRACKLE-FWOOOSH!'
	DB	'You^re finished!'
	DB	'I will never let'
	DB	'you play the    '
	DB	'Instruments of  '
	DB	'the Sirens!!'
	DB	WED
;
MSBD;	BOSS #8 second speech
;
	DB	'C-C-CRACKLE!    '
	DB	'Why did you come'
	DB	'here?  If it    '
	DB	'weren^t for you,'
	DB	'nothing would   '
	Db	'have to change! '
	DB	'You cannot wake '
	DB	'the Wind Fish!  '
	DB	'Remember, you...'
	DB	'too...are in... '
	DB	'...the dream...'
	DB	WED
;
MSBE;	Deleted
MSBF;	Deleted
;
;	OWL'S MESSAGES
;
MSC0;	In the Mysterious Woods
;
	DB	'Hoot!  Ho, brave'
	DB	'lad, on your    '
	DB	'quest to wake   '
	DB	'the dreamer!    '
	DB	'Welcome to the  '
	DB	'Mysterious Wood!'
	DB	'Much of mystery '
	DB	'you will find on'
	DB	'this uncharted  '
	DB	'Koholint island!'
	DB	'I^m afraid you  '
	DB	'may find it a   '
	DB	'trifle difficult'
	DB	'to leave the    '
	DB	'island while the'
	DB	'Wind Fish naps. '
	DB	'...By the by,   '
	DB	'have you ever   '
	DB	'visited the Tail'
	DB	'Cave, which is  '
	DB	'south of the    '
	DB	'village?  Go    '
	DB	'there with the  '
	DB	'key you find in '
	DB	'this forest...  '
	DB	'The Wind Fish is'
	DB	'watching...Hoot!'
	DB	WED
;
MSC1;	In forest before you get Tail Key
;
	DB	'Hoot!  Take the '
	DB	'key and go to   '
	DB	'the Tail Cave.  '
	DB	'Retrieve the    '
	DB	'Instrument that '
	DB	'is hidden there!'
	DB	'Go now!  The    '
	DB	'Wind Fish is    '
	DB	'waiting!  Hooot!'
	DB	WED
;
MSC2;	After Dungeon #1 Cleared
;
	DB	'Hoooot!  That is'
	DB	'an ^Instrument  '
	DB	'of the Sirens!^ '
	DB	'I have to admit,'
	DB	'at first I did  '
	DB	'not believe you '
	DB	'were real...    '
	DB	'That Instrument,'
	DB	'along with the  '
	DB	'seven others in '
	DB	'the set, has the'
	DB	'power to wake   '
	DB	'the Wind Fish!  '
	DB	'You must collect'
	DB	'them all!  I was'
	DB	'instructed to   '
	DB	'give you direc- '
	DB	'tions...  Your  '
	DB	'next goal is    '
	DB	'north, in       '
	DB	'Goponga Swamp!! '
	DB	'Hoot, indeed!'
	DB	WED
;
MSC3;	Owl in mountains / Wanwan rescue team
;
	DB	'Hoot!  That is a'
	DB	'fearsome looking'
	DB	'animal you have '
	DB	'there!  Do not  '
	DB	'forget, the next'
	DB	'Instrument is in'
	DB	'Goponga Swamp!'
	DB	WED
;
MSC4;	Owl in mountains, #2 cleared
;
	DB	'Hoooot! The Wind'
	DB	'Fish sleeps long'
	DB	'and dreamily in '
	DB	'the Egg above...'
	DB	'When you play   '
	DB	'the eight Siren '
	DB	'Instruments in  '
	DB	'front of the Egg'
	DB	'he will awaken. '
	DB	'This, my friend,'
	DB	'is the only way '
	DB	'for you to leave'
	DB	'the island! Hoo!'
	DB	WED
;
MSC5;	Owl next to dungeon #3
;
	DB	'Hoot!  How many '
	DB	'Instruments     '
	DB	'have you gotten '
	DB	'so far?  When   '
	DB	'you play the    '
	DB	'Instruments in  '
	DB	'front of the    '
	DB	'Egg, the Wind   '
	DB	'Fish will wake  '
	DB	'and you will    '
	DB	'leave this      '
	DB	'island.  Now,   '
	DB	'you must hasten '
	DB	'to the Yarna    '
	DB	'Desert!  The    '
	DB	'dark, monstrous '
	DB	'inhabitants of  '
	DB	'the sand will   '
	DB	'show you the    '
	DB	'way! Hoot Hoot!'
	DB	WED
;
MSC6;	Owl in Yarna Desert
;
	DB	'Hoot!  The shape'
	DB	'of the key shows'
	DB	'a fish, swimming'
	DB	'up a cascade of '
	DB	'water!  Go now  '
	DB	'to the mountain '
	DB	'waterfall!  A   '
	DB	'leap from the   '
	DB	'top and you will'
	DB	'reach your goal!'
	DB	WED
;
MSC7;	Owl at the river bank between two shrines
;
	DB	'Hoot!  There are'
	DB	'two shrines, one'
	DB	'to the north,   '
	DB	'the other to the'
	DB	'south.  First,  '  
	DB	'head south,     '
	DB	'where ancient   '
	DB	'ruins speak of  '
	DB	'the Wind Fish...'  
	DB	'You will learn  '
	DB	'much there...'
	DB	WED
;
MSC8;	Owl outside south shrine after reading stone
;
	DB	'Hoot!  I see you'
	DB	'have read the   '
	DB	'relief...  While'
	DB	'it does say the '
	DB	'island is but a '
	DB	'dream of the    '
	DB	'Wind Fish, no   '
	DB	'one is really   '
	DB	'sure...  Just as'
	DB	'you cannot know '
	DB	'if a chest holds'
	DB	'treasure until  '
	DB	'you open it, so '
	DB	'you cannot tell '
	DB	'if this is a    '
	DB	'dream until you '
	DB	'awaken...  The  '
	DB	'only one who    '
	DB	'knows for sure  '
	DB	'is the Wind     '
	DB	'Fish...  Trust  '
	DB	'your feelings...'
	DB	'Someday you will'
	DB	'know for sure...'
	DB	WED
;
MSC9;	Owl, Shrine 6 cleared
;
	DB	'Hoot!  The many '
	DB	'monsters of this'
	DB	'island fear that'
	DB	'the Wind Fish is'
	DB	'about to awaken!'
	DB	'The monsters^   '
	DB	'power is real!  '
	DB	'They may conquer'
	DB	'the island and  '
	DB	'destroy their   '
	DB	'foes!  That day '
	DB	'may come soon!  '
	DB	'Now, go to the  '
	DB	'mountain tower! '
	DB	'Fly like a bird!'
	DB	'Hoot! Hoot!'
	DB	WED
;
MSCA;	Owl near Wind Fish Egg
;
		db	'Hoot hoot!      '
		db	'Your path is    '
		db	'not easy, but   '
		db	'you are almost  '
		db	'there. Go east. '
		db	'The Wind Fish   '
		db	'is getting      '
		db	' restless.'
		db	WED
;
;;;;;;;;	DB	'The going is    '
;;;;;;;;	DB	'much more trying'
;;;;;;;;	DB	'from this point!'
;;;;;;;;	DB	'You have only   '
;;;;;;;;	DB	'two more tasks  '
;;;;;;;;	DB	'to accomplish!  '
;;;;;;;;	DB	'The first is in '
;;;;;;;;	DB	'the east part of'
;;;;;;;;	DB	'the mountains,  '
;;;;;;;;	DB	'the second in   '
;;;;;;;;	DB	'the west.  Go!  '
;;;;;;;;	DB	'The Wind Fish   '
;;;;;;;;	DB	'grows restless!'
;;;;;;;;	DB	WED
;
MSCB;	Owl by the tombstone
;
	DB	'Hoot!  It has   '
	DB	'been some time  '
	DB	'since our paths '
	DB	'crossed, lad.   '
	DB	'You must dive   '
	DB	'into the waters '
	DB	'of Martha^s Bay '
	DB	'to enter the    '
	DB	'Catfish^s Maw...'
	DB	'The closer you  '
	DB	'get to the Wind '
	DB	'Fish, the more  '
	DB	'restless he     '
	DB	'sleeps.  Carry  '
	DB	'onward!  Hoot!'
	DB	WED
;
MSCC;	Owl at suspension bridge
;
	DB	'Hoot!  That girl'
	DB	'sang her song in'
	DB	'front of the    '
	DB	'Egg! Her ^Ballad'
	DB	'of the Wind     '
	DB	'Fish^ is a song '
	DB	'of awakening!   '
	DB	'Did she actually'
	DB	'intend to wake  '
	DB	'the Wind Fish?! ' 
	DB	'The next Sirens^'
	DB	'Instrument is in'
	DB	'the west.  Play '
	DB	'your melodies so'
	DB	'the unliving    '
	DB	'stones might    '
	DB	'hear!  Show your'
	DB	'courage!  The   '
	DB	'Wind Fish waits '
	DB	'for you!  Hoot!'
	DB	WED
;
MSCD;	Owl in front of Egg 2
;
	DB	'The time has    '
	DB	'come... The Wind'
	DB	'Fish awaits...  '
	DB	'Enter the Egg...'
	DB	'Hoot! Hoot!'
	DB	WED
;
MSCE;	not used
MSCF;	Owl in the woods
;
	DB	'Hoot! Young lad,'
	DB	'I mean... #####,'
	DB	'the hero!  You  '
	DB	'have defeated   '
	DB	'the Nightmares! '
	DB	'You have proven '
	DB	'your wisdom,    '
	DB	'courage and     '
	DB	'power!          '
	DB	'... ... ... ... '
	DB	'As part of the  '
	DB	'Wind Fish^s     '
	DB	'spirit, I am the'
	DB	'guardian of his '
	DB	'dream world...  '
	DB	'But one day, the'
	DB	'Nightmares      '
	DB	'entered the     '
	DB	'dream and began ' 
	DB	'wreaking havoc. '
	DB	'Then you, #####,'
	DB	'came to rescue  '
	DB	'the island...   '
	DB	'I have always   '
	DB	'trusted in your '
	DB	'courage to turn '
	DB	'back the Night- '
	DB	'mares.  Thank   '
	DB	'you, #####... My'
	DB	'work is done... '
	DB	'The Wind Fish   '
	DB	'will wake soon. '
	DB	'Good bye...Hoot!'
	DB	WED
;
MSD0;	THE WIND FISH
;
	DB	'... ... ... ... '
	DB	' ... ... ... ...'
	DB	' I AM THE WIND  '
	DB	'      FISH...   '
	DB	' LONG HAS BEEN  '
	DB	'  MY SLUMBER... '
	DB	' IN MY DREAMS...'
	DB	' AN EGG APPEARED'
	DB	'     AND WAS    '
	DB	'SURROUNDED BY AN'
	DB	'  ISLAND, WITH  '
	DB	'PEOPLE, ANIMALS,'
	DB	'AN ENTIRE WORLD!'
	DB	'... ... ... ... '
	DB	'  BUT, VERILY,  ' 
	DB	'IT BE THE NATURE'
	DB	'  OF DREAMS TO  ' 
	DB	'END! WHEN I DOST'
	DB	'AWAKEN, KOHOLINT'
	DB	' WILL BE GONE...'
	DB	'ONLY THE MEMORY '
	DB	' OF THIS DREAM  '
	DB	'LAND WILL EXIST '
	DB	'  IN THE WAKING '
	DB	'      WORLD...  '
	DB	' SOMEDAY, THOU  '
	DB	'MAY RECALL THIS '
	DB	' ISLAND...  THAT'
	DB	' MEMORY MUST BE '
	DB	' THE REAL DREAM '
	DB	'     WORLD...   '
	DB	'... ... ... ... '
	DB	' COME, #####... '
	DB	'LET US AWAKEN...'
	DB	'   TOGETHER!!'
	DB	WED
;
MSD1; deleted
MSD2;	WIND FISH
;
	DB	' PLAY THE EIGHT '
	DB	'  INSTRUMENTS!  '
	DB	'PLAY THE SONG OF'
	DB	'   AWAKENING!!'
	DB	WED
;
MSD3;	deleted
MSD4;	deleted
;
MSD5;	Map message   
	DB	'Mermaid Statue  '
	DB	WED
;
MSD6;	deleted
;
MSD7;	OWL when you beat the final final boss!
;
	DB	'...#####, you   '
	DB	'have beaten all '
	DB	'the Nightmares! '
	DB	'Climb the stairs'
	DB	'before you!'
	DB	WED
;
MSD8;	Shule the artist second message
;
	DB	'Ach! Vat are you'
	DB	'looking at vith '
	DB	'zat magnifying  '
	DB	'lens?  Stop it  '
	DB	'at vonce!'
	DB	WED
;
MSD9;	Owl at the beach, first conversation
;
	DB	'  Hoot!  Hoot!  '
	DB	'So you are the  '
	DB	'lad who owns the'
	DB	'sword...  Now I '
	DB	'understand why  '
	DB	'the monsters are'
	DB	'starting to act '
	DB	'so violently... '
	DB	'A courageous lad'
	DB	'has come to wake'
	DB	'the Wind Fish...'  
	DB	'It is said that '
	DB	'you cannot leave'
	DB	'the island      ' 
	DB	'unless you wake '
	DB	'the Wind Fish...'
	DB	'You should now  '
	DB	'go north, to the'
	DB	'Mysterious      '
	DB	'Forest.  I will '
	DB	'wait for you    '
	DB	'there!  Hoot!'
	DB	WED
;
MSDA;	Lanmolas in Desert
;
	DB	'Annoyance!  You '
	DB	'are only getting'
	DB	'in the way!'
	DB	WED
;
MSDB;	MAMU the SOUL FROG --  w/o ocarina
;
	DB	'Ribbit!  Ribbit!'
	DB	'Hey, man, I^m   '
	DB	'Mamu, on vocals!'
	DB	'Brother, you    '
	DB	'look like you   '
	DB	'don^t know      '
	DB	'squat about     '
	DB	'music!  Ribbit!'
	DB	WED
;
MSDC;	With Ocarina
;
	DB	'Ribbit!  Ribbit!'
	DB	'I^m Mamu, on    '
	DB	'vocals!  But I  '
	DB	'don^t need to   '
	DB	'tell you that,  '
	DB	'do I?  Everybody'
	DB	'knows me!  Want '
	DB	'to hang out and '
	DB	'listen to us    '
	DB	'jam?  For 300   '
	DB	'Rupees, we^ll   '
	DB	'let you listen  '
	DB	'to a previously '
	DB	'unreleased cut! '
	DB	'What do you do? '
	DB	'    Pay  Leave'
	DB	WE2
;
MSDD;	When answer to MSDC is Yes
;
	DB	'Thank you...    '
	DB	'Thank you very  '
	DB	'much... Croak!'
	DB	WED
;
MSDE;	When answer to DC is NO
;
	DB	'Well, that^s a  '
	DB	'shame, but we   '
	DB	'don^t play for  '
	DB	'free!'
	DB	WED
;
MSDF;	When you learn the frog's song
;
	DB	'You^ve learned  '
	Db	'The Frog^s Song '
	DB	'of Soul!  It^s a'
	DB	'very moving     '
	DB	'tune... It can  '
	DB	'even liven up   '
	DB	'unliving things!'
	DB	WED
;
MSE0;	After you learn the song, frog
;
	DB	'If you play this'
	DB	'song, you^ll    '
	DB	'make everything '
	DB	'around you feel '
	DB	'more alive!'
	DB	WED
;
MSE1;	IMP-- Same character as in SNES Zelda
;
	DB	'Hey, Kid!  You  '
	DB	'woke me up from '
	DB	'a fine nap!!    '
	DB	'...Thanks a lot!'
	DB	'But now, I^ll   '
	DB	'get my revenge! '
	DB	'Are you ready?! '
	DB	'    Yes  N-No'
	DB	WE2
;
MSE2;	Raises max magic powder
;
	DB	'I^ll let you    '
	DB	'carry more Magic'
	DB	'Powder!  He He! '
	DB	'Are you ready?! '
	DB	'    Yes  N-No'
	DB	WE2
;
MSE3;	Raises max bombs
;
	DB	'Okay, I^ll let  '
	DB	'you carry more  '
	DB	'Bombs! He He He!'
	DB	'Are you ready?! '
	DB	'    Yes  N-No'
	DB	WE2
;
MSE4;	Raises max arrows
;
	DB	'Fine, I^ll let  '
	DB	'you have more   '
	DB	'arrows! Heh Heh!'
	DB	'Are you ready?! '
	DB	'    Yes  N-No'
	DB	WE2
;
MSE5;	IMP'S LAST WORDS
;
	DB	'Heh Heh Heh!    '
	DB	'You deserve it! '
	DB	'Now look at all '
	DB	'that junk you   '
	DB	'have to carry!  '
	DB	'Hah!  Take care!'
	DB	'See you again!'
	DB	WED
;
MSE6;	Relief in Wind Fish Shrine
;
	DB	'??  There is a  '
	DB	'picture carved  '
	DB	'on the wall, but'
	DB	'you can^t see it'
	DB	'because it^s too'
	DB	'dark in here...'
	DB	WED
;
MSE7;	Relief 2   
;
	DB	'TO THE FINDER...'
	DB	'  THE ISLE OF   '
	DB	'KOHOLINT, IS BUT'
	DB	'  AN ILLUSION...'
	DB	' HUMAN, MONSTER,'
	DB	' SEA, SKY... A  '
	DB	'SCENE ON THE LID'
	DB	' OF A SLEEPER^S '
	DB	'  EYE...  AWAKE '
	DB	'THE DREAMER, AND'
	DB	'  KOHOLINT WILL '
	DB	'VANISH MUCH LIKE'
	DB	'  A BUBBLE ON A '
	DB	'NEEDLE... CAST- '
	DB	'AWAY, YOU SHOULD'
	DB	'KNOW THE TRUTH! '
	DB	'... ... ... ... '
	DB	'What?  Illusion?'
	DB	WED
;
;;;;;;;;;===================================================================
;;;;;;;;BANK9	GROUP	$09
;;;;;;;;;;;;;;;;	ORG	$6700
;;;;;;;;;===================================================================
MSE8;	Golden Leaves Events
;
		db	'You^ve found a  '
		db	'Gold Leaf! Press'
		db	'START to see    '
		db	'how many you^ve '
		db	'collected!'
		db	WED
;
;;;;;;;;	DB	'You^ve found a  '
;;;;;;;;	DB	'Golden Leaf!    '
;;;;;;;;	DB	'You can see how '
;;;;;;;;	DB	'many you have on'
;;;;;;;;	DB	'the Sub-Screen.'
;;;;;;;;	DB	WED
;
MSE9;	When you get the last Golden Leaf
;
	DB	'At last!  You^ve'
	DB	'got the final   '
	DB	'Golden Leaf!    '
	DB	'Now go and see  '
	DB	'Richard about   '
	DB	'that key...'
	DB	WED
;
MSEA;	deleted
MSEB;	deleted
;
MSEC;	Nut Protector
;
	DB	'You^ve got a    '
	DB	'Guardian Acorn! '
	DB	'It will reduce  '
	DB	'the damage you  '
	DB	'take by half!'
	DB	WED
;
MSED;	Shield 2
;
	DB	'You^ve got the  '
	DB	'Mirror Shield!  '
	DB	'You can now turn'
	DB	'back the beams  '
	DB	'you couldn^t    '
	DB	'block before!'
	DB	WED
;
MSEE;	Bracelet 2
;
	DB	'You^ve got a    '
	DB	'more Powerful   '
	DB	'Bracelet!  Now  '
	DB	'you can almost  '
	DB	'lift a whale!' 
	DB	WED
;
MSEF;	Seashell
;
	DB	'You found a     '
	DB	'Secret Seashell!'
	DB	'If you collect a'
	DB	'lot of these,   '
	DB	'something good  '
	DB	'is bound to     '
	DB	'happen!'
	DB	WED
;
;;;;;;;;;===================================================================
;;;;;;;;BANK9		group	009
;;;;;;;;;
;;;;;;;;;===================================================================
MSF0;	RAFTING, man at shop
;
	DB	'Want to go on a '
	DB	'raft ride for a '
	DB	'hundred Rupees? '
	DB	'    Yes  No Way'
	DB	WE2
;
MSF1;	When the answer is YES
;
	DB	'Okay, the raft  '
	DB	'is ready for you'
	DB	'outside!  Enjoy!'
	DB	WED
;
MSF2;	Map messages
;
	DB	'Waterfall at the'
	DB	'    Shrine'
	DB	WED
;
MSF3
	DB	' South of the   '
	DB	'    Shrine'
	DB	WED
;
MSF4
	DB	'Entrance to the '
	DB	' Animal Village'
	DB	WED
;
MSF5;	THE LAST BOSS First Speech
;
	DB	'We were born of '
	DB	'nightmares... To'
	DB	'take over this  '
	DB	'world, we made  '
	DB	'the Wind Fish   '
	DB	'sleep endlessly!'
	DB	'If the Wind Fish'
	DB	'doesn^t wake up,'
	DB	'this island will'
	DB	'never disappear!'
	DB	'We would have   '
;
	DB	'been the masters'
;	DB	'become the gods '
;
	DB	'of this place...'
	DB	'But you had to  '
	DB	'come here and   '
	DB	'disrupt our     '
	DB	'plans!  Heh heh!'
	DB	'You can never   '
	DB	'defeat us!!!    '
	DB	'Let^s rumble!'
	DB	WED
;
MSF6;	Last Boss second speech
;
	DB	'This island is  '
	DB	'going to dis-   '
	DB	'appear...  Our  '
	DB	'world is going  '
	DB	'to disappear... '
	DB	'Our world...    '
	DB	'Our... world... '
	DB	WED
;
MSF7;	MARIN OPTION, when you goto Trendy Game
;
	DB	'Wow!  #####, can'
	DB	'I try this?!    '
	DB	'What do you say?'
	DB	'    Okay No Way'
	DB	WE2
;
MSF8;	MARIN OPTION when MSF7 is NO
;
	DB	'C^mon!  I want  '
	DB	'to do it! Can I?'
	DB	'It looks so fun!'
	DB	'    Yes  Okay'
	DB	WE2
;
MSF9;	Sales Clerk afer Marin picks him up
;
	DB	'You^re good!    '
	DB	'You^re a pro,   '
	DB	'aren^t you?     '
	DB	'... ... ... ... '
	DB	'Well, beat it!  '
	DB	'Pros aren^t     '
	DB	'allowed in here!'
	DB	WED
;
MSFA;	Schule's Hippo Model
;
	DB	'Go away!'
	DB	WED
;
MSFB;	Hippo model 2
;
	DB	'Quit it!'
	DB	WED
;
MSFC;	When you look at the library shelf
;
	DB	'This is not a   '
	DB	'chest...  What? '
	DB	'You knew that?  '
	DB	'Okay.'
	DB	WED
;
MSFD;	When you open / check a chest
;
	DB	'##### checked   '
	DB	'the chest.  Wow!'
	DB	'This is a nice  '
	DB	'chest!'
	DB	WED
;
MSFE;	Magic Powder ready
;
	DB	'It^s all ready, '
	DB	'it is!  Take    '
	DB	'care, as there^s'
	DB	'not much there! '
	DB	'Why not try a   '
	DB	'bit in my hut?'
	DB	WED
;
MSFF;	Tarin scolds you for opening his chest
;
	DB	'Hey!  What are  '
	DB	'ya doin^ in my  '
	DB	'chest?!  Where^d'
	DB	'you learn ta do '
	DB	'such a thing?!'
	DB	WED
;
M100;	GETTING ITEMS
	DB	'You^ve got the  '
	DB	'Full Moon Cello!'
	DB	WED
;
M101;   
	DB	'You^ve got the  '
	DB	'Conch Horn!'
	DB	WED
;
M102;  
	DB	'You^ve got the  '
	DB	'Sea Lily^s Bell!'
	DB	WED
;
M103
	DB	'You^ve got the  '
	DB	'Surf Harp!'
	DB	WED
;
M104
	DB	'You^ve got the  '
	DB	'Wind Marimba!'
	DB	WED
;
M105
	DB	'You^ve got the  '
	DB	'Coral Triangle!'
	DB	WED
M106
	DB	'You^ve got the  '
	DB	'Organ of        '
	DB	'  Evening Calm!'
	DB	WED
;
M107
	DB	'You^ve got the  '
	DB	'Thunder Drum!'
	DB	WED
;
;===================================================================
BANK1C	GROUP	$1C
;;;;;;;;	ORG	$4A00
;===================================================================
;	STONE SLAB HINTS
;
M108;	�ʐ^�T�F�����炶�[����̊�
;
		db	'Hi! It^s me, the'
		db	'photographer!   '
		db	'You seem curious'
		db	'about Grandpa   '
		db	'Ulrira.'
		db	WED
;
;;;;;;;;	DB	'Turn aside the  '
;;;;;;;;	DB	'spined ones with'
;;;;;;;;	DB	'a shield...'
;;;;;;;;	DB	WED
;
M109;	�ʐ^�T�F�ʐ^���B�e�I
		db	'I^ll call this  '
		db	'^##### Dis-     '
		db	'covers Ulrira^s '
		db	'Secret!^'
		db	WED
;
;;;;;;;;	DB	'First, defeat   '
;;;;;;;;	DB	'the imprisoned  '
;;;;;;;;	DB	'Pols Voice,     '
;;;;;;;;	DB	'Last, Stalfos...'
;;;;;;;;	DB	WED
;;;;;;;;;
;;;;;;;;;	DB	'First Pols Voice'
;;;;;;;;;	DB	'Last Stalfos... '
;;;;;;;;	DB	WED
;
M10A;	�ʐ^�T�F�B�e��I
;
		db	'#####, now run  '
		db	'away before he  '
		db	'finds you.'
		db	WED
;
;;;;;;;;	DB	'Far away...     '
;;;;;;;;	DB	'Do not fear,    '
;;;;;;;;	DB	'dash and fly!'
;;;;;;;;	DB	WED
;
M10B;	#4
;
		db	'I^ll go develop '
		db	'this. Come see  '
		db	'it later, OK?'
		db	WED
;
;;;;;;;;	DB	'The glint of the'
;;;;;;;;	DB	'tile will be    '
;;;;;;;;	DB	'your guide...'
;;;;;;;;	DB	WED
;
M10C;	�ʐ^����b�i�ŏ��j
;
		db	'I just LOVE to  '
		db	'take pictures.  '
		db	'Will you let me '
		db	'take your       '
		db	'picture?        '
		db	'    YES  NO'
		db	WE2
;
;;;;;;;;	DB	'Dive under where'
;;;;;;;;	DB	'torchlight beams'
;;;;;;;;	DB	'do cross...'
;;;;;;;;	DB	WED
;
M10D;	�ʐ^����b�i�͂��̂Ƃ��A�ʐ^���B��܂ŌJ��Ԃ��j
;
		db	'Go to the back  '
		db	'of the room and '
		db	'stand in front  '
		db	'of the screen.'
		db	WED
;
;;;;;;;;	DB	'Enter the space '
;;;;;;;;	DB	'where the eyes  '
;;;;;;;;	DB	'have walls...'
;;;;;;;;	DB	WED
;
M10E;	�͂��̌�A�O�ɏo�悤�Ƃ���I
;
		db	'Hey! I haven^t  '
		db	'taken your      '
		db	'picture yet! Go '
		db	'back and stand  '
		db	'in front of the '
		db	'screen!'
		db	WED
;
;;;;;;;;	DB	'The riddle is   '
;;;;;;;;	DB	'solved when the '
;;;;;;;;	DB	'pillars fall!'
;;;;;;;;	DB	WED
;
M10F;	�ʐ^���B�e�i�͂��̂Ƃ��j
;
		db	'I^ll call this  '
		db	'^Here Stands A  '
		db	'Brave Man.^     '
		db	'Say cheese!'
		db	WED
;
;;;;;;;;	DB	'Fill all the    '
;;;;;;;;	DB	'holes with the  '
;;;;;;;;	DB	'rock that rolls,'
;;;;;;;;	DB	'this (',MK8,') is the '
;;;;;;;;	DB	'key!'
;;;;;;;;	DB	WED
;
M110;	Stone plate
;
		db	'This owl statue '
		db	'is trying to say'
		db	'something, but  '
		db	'you can^t       '
		db	'understand it   '
		db	'because it has  '
		db	'no beak.'
		db	WED
;
;;;;;;;;	DB	'Something is    '
;;;;;;;;	DB	'inscribed on the'
;;;;;;;;	DB	'stone slab, but '
;;;;;;;;	DB	'you can^t read  '
;;;;;;;;	DB	'it because a    '
;;;;;;;;	DB	'piece is gone.'
;;;;;;;;	DB	WED
;
M111;	Medium Boss-- Stalfos Knight
;
	DB	'^I^ve got what  '
	DB	'was inside this '
	DB	'box.  Come and  '
	DB	'get it, if you  '
	DB	'can!^  Master ',MK3
	DB	WED
;
M112;	Second time you see Stalfos
;
	DB	'Gulp!  You found'
	DB	'me!  You^re a   '
	DB	'real pesky kid, '
	DB	'you know that?!'
	DB	WED
;
M113;	First time you defeat Stalfos
;
	DB	'Arrgh!  I can^t '
	DB	'beat you!  I^m  '
	DB	'outta here!'
	Db	WED
;
M114;	Last time you fight Stalfos
;
	DB	'You again?!  You'
	DB	'keep going and  '
	DB	'going... I can^t'
	DB	'outlast you!    '
	DB	'All right, let^s'
	DB	'do it!'
	DB	WED
;
M115;	When you have Bow-wow with you, sometimes he tells you:
;
	DB	'WOOF! Dig! RUFF!'
	DB	WED
;
M116;	Place missing scale in mermaid
;
	DB	'You put the     '
	DB	'missing scale in'
	DB	'the mermaid     '
	DB	'statue!'
	DB	WED
;
M117;
		db	'Hey! Be more    '
		db	'careful next    '
		db	'time!'
		db	WED
;
;	KIDS MESSAGES
;
M118;	Kids first message 
;
	DB	'Hey, man!  When '
	DB	'you want to save'
	DB	'just push all   '
	DB	'the Buttons at  '
	DB	'once!  Uhh...   '
	DB	'Don^t ask me    '
	DB	'what that means,'
	DB	'I^m just a kid!'
	DB	WED
;
M119;	Kids second message
;
	DB	'Well, it seems  '
	DB	'that after you  '
	DB	'save, you will  '
	DB	'start at the    '
	DB	'last door you   '
	DB	'went through... ' 
	DB	'I^m not really  '
	DB	'sure why that is'
	DB	'^cause I^m just ' 
	DB	'a kid!'
	DB	WED
;
M11A;	Kids third message
;
	DB	'I heard that you'
	DB	'can press SELECT'
	DB	'to look at the  '
	DB	'island map...   '
	DB	'But, I don^t    '
	DB	'understand what '
	DB	'they mean by    ' 
	DB	'that...'
	DB	WED
;
M11B;	Kids fourth message
;
	DB	'When you^re     '
	DB	'running out of  '
	DB	'Hearts, you^d   '
	DB	'better enter a  '
	DB	'house or cave...'
	DB	'Why?  I have no '
	DB	'idea, I^m just a'
	DB	'kid!'
	DB	WED
;
M11C;	Little kid Tamtam
;
	DB	'Hey, dude! What '
	DB	'do you think of '
	DB	'Marin?  Uhh...  '
	DB	'I don^t know,   '
	DB	'I^m just a kid!'
	DB	WED
;
M11D;	TenTen
;
	DB	'Where are you   '
	DB	'from, brother?  '
	DB	'...Outside the  '
	DB	'island?  What is'
	DB	'^outside?^  I^ve'
	DB	'never thought   '
	DB	'about it...'
	DB	WED
;
M11E;	Tomtom
;
	DB	'The giant egg on'
	DB	'top of Tamaranch'
	DB	'Mountain?  They '
	DB	'say the Wind    '
	DB	'Fish is sleeping'
	DB	'inside of it... '
	DB	'Why?  I don^t   '
	DB	'know either...'
	DB	WED
;
M11F;	Kenken
;
	DB	'Dude!  You^re   '
	DB	'asking me when  '
	DB	'we started to   '
	DB	'live on this    '
	DB	'island?  What do'
	DB	'you mean by     '
	DB	'^when?^  Whoa!  '
	DB	'The concept just'
	DB	'makes my head   '
	DB	'hurt!'
	DB	WED
;
M120;	Boy by weathercock
;
	DB	'Marin? She likes'
	DB	'to go stare at  '
	DB	'the ocean all by'
	DB	'herself...  Why?'
	DB	'Hey, I^m just a '
	DB	'kid, don^t ask  '
	DB	'me!'
	DB	WED
;
M121;	Kid when player is with Marin Option
;
	DB	'Hey... Where^re '
	DB	'you two going   '
	DB	'together?  Hunh?'
	DB	'Uh, I didn^t    '
	DB	'mean anything...'
	DB	'I^m just a kid!'
	DB	WED
;
M122;	Boy by Dream Shrine
;
	DB	'Hey hey, bro!   '
	DB	'About the Dream '
	DB	'Shrine there... '
;
	DB	'They say there^s'
	DB	'something good  '
;;	DB	'There^s a XXXXX '
;
	DB	'inside... ...   '
	DB      'I better not say'
	DB	'anything else   '
	DB	'as I^m just a   '
	DB	'kid!'
	DB	WED
;
M123;	After Link leaves Marin
;
	DB	'Hunh?!  Marin^s '
	DB	'not with you?   '
	DB	'What happened to'
	DB	'her?'
	DB	WED
;
M124;
		db	'WHOA! That^s a  '
		db	'big one! Hey,   '
		db	'photo guy! Can  '
		db	'you take a      '
		db	'picture of this?'
		db	WED
;
M125;
		db	'I have a        '
		db	'feelin^ that    '
		db	'I^ll catch a big'
		db	'fish again.'
		db	WED
;
M126;	�ʐ^��̃]�[���i�J��Ԃ��j
		db	'If you keep me a'
		db	'secret, I^ll    '
		db	'tell you some-  '
		db	'thing useful.   '
		db	'Go to Toronbo   '
		db	'Shores, use the '
		db	'magnifying glass'
		db	'and you will    '
		db	'find someone    '
		db	'like me.'
		db	WED
;
M127;	If reply to 12B is NO
;
	DB	'Tsk tsk...  What'
	DB	'a shame...'
	DB	WED
;
M128;	If reply to 12B is YES
;
	DB	'Oh thank you!   '
	DB	'You are indeed a'
	DB	'generous person!'
	DB	'Ah!  I will give'
	DB	'you this in     '
	DB	'return!'
	DB	WED
;
M129;	Trade Yoshi for Hair Ribbon
;
	DB	'You traded your '
	DB	IT1,' for ',IT2,'!  Maybe '
	DB	'you can trade   '
	DB	'the ribbon for  '
	DB	'something else!'
	DB	WED
;
M12A;	First time, Quads mother speech
;
		db	'Because they all'
		db	'look alike, even'
		db	'I am sometimes  '
		db	'confused. . .   '
		db	'By the way, my  '
		db	'baby wants a    '
		db	'Yoshi Doll.     '
		db	'I saw one at the'
		db	'Trendy Game,    '
		db	'but I couldn^t  '
		db	'get it.'
		db	WED
;
;;;;;;;;	DB	'Because they all'
;;;;;;;;	DB	'look alike, even'
;;;;;;;;	DB	'I am sometimes  '
;;;;;;;;	DB	'confused...     '
;;;;;;;;	DB	'By the way, do  '
;;;;;;;;	DB	'you know Yoshi? '
;;;;;;;;	DB	'My baby keeps on'
;;;;;;;;	DB	'asking for a    '
;;;;;;;;	DB	'Yoshi Doll and I'
;;;;;;;;	DB	'don^t know what '
;;;;;;;;	DB	'to do about it!'
;;;;;;;;	DB	WED
;
M12B;	When you have Yoshi doll
;
	DB	'Oh!  Will you   '
	DB	'give that doll  '
	DB	'to my baby?!    '
	DB	'    Yes  No'
	DB	WE2
;
M12C;	After exchanging ribbom
;
	DB	'Because they all'
	DB	'look alike, even'
	DB	'I am sometimes  '
	DB	'confused...     '
	DB	WED
;
M12D;	PRINCE RICHARD, when you have bowwow
;
	DB	'Ahem!  Really, I'
	DB	'must insist that'
	DB	'you not bring   '
	DB	'that awful beast'
	DB	'in here!  Leave '
	DB	'that creature   '
	DB	'outside and then'
	DB	'we can talk!    '
	DB	'Good Bye!'
	DB	WED
;
M12E;
;;;;;;;;		db	'Ah how I love   '
;;;;;;;;		db	'pictures. Hey,  '
;;;;;;;;		db	'#####! What are '
;;;;;;;;		db	'you doing here? '
		db	'You want to know'
		db	'about that      '
		db	'ghost? I^ll bet '
		db	'he^s happy      '
		db	'thanks to you.  '
		db	'Are you ready   '
		db	'for a picture?'
		db	WED
;
M12F;	Madam Meowmeow
;
	DB	'Ho ho ho!       '
	DB	'I really appre- '
	DB	'ciate what you  '
	DB	'did for my poor,'
	DB	'precious BowWow!'
	DB	'You are such a  '
	DB	'nice boy!  How  '
	DB	'can I ever repay'
	DB	'you?  I know... '
	DB	'  SMOOOOOOOCH!  '
	DB	'You got a reward'
	DB	'from Madam Meow-'
	DB	'Meow... ... ... '
	DB	'L-l-lucky!'
	DB	WED
;
M130;	Madam Meowmeow, first speech
;
	DB	'Ho ho ho!  My   '
	DB	'BowWow is so    '
	DB	'proud of his    '
	DB	'fine fur coat!'
	DB	WED
;
M131;	When BowWow is gone
;
	DB	'AIEEEEEEEE!     '
	DB	'It^s terrrrible!'
	DB	'My BowWow was   '
	DB	'dognapped by... '
	DB	'Mo-mo-MOBLINS!! '
	DB	'OHHH!  AHHHH!   '
	DB	'Please! Somebody'
	DB	'help my poor    '
	DB	'BowWow!!'
	DB	WED
;
M132;	When player brings BowWow back
;
	DB	'Oh thank you!   '
	DB	'I^m so happy you'
	DB	'brought my baby '
	DB	'back! Now, would'
	DB	'you be a dear   '
	DB	'and take him for'
	DB	'a walk? It would'
	DB	'really help me  '
	DB	'out a lot!  You '
	DB	'will?!  Thanks!'
	DB	WED
;
M133;	Mr Write
;
	DB	'Well... I pretty'
	DB	'much stick to   '
	DB	'myself, me and  '
	DB	'my letters...   '
	DB	'My name^s Write!'
	DB	'The only thing I'
	DB	'don^t like about'
	DB	'my hobby is that'
	DB	'I never receive '
	DB	'a response...'
	DB	WED
;
M134;	When player brings him a letter
;
	DB	'What^s this?!  A'
	DB	'letter for me?! '
	DB	'I^m so happy!   '
	DB	'...And look! The'
	DB	'letter came with'
	DB	'a photograph!'
	DB	WED
;
M135;	continued
;
	DB	'Mmm... She^s so '
	DB	'beautiful...    '
	DB	'I must give you '
	DB	'something for   '
	DB	'your trouble... '
	DB	'Hmm...  Well, it'
	DB	'looks like all I'
	DB	'have is this    '
	DB	'broom... how^ll '
	DB	'that be?        '
	DB	'    Fine No...'
	DB	WE2
;
M136;	If M135 = Fine
;
	DB	'You got a Broom '
	DB	'as your reward  '
	DB	'from Mr. Write! '
	DB	'But that photo  '
	DB	'was not of...'   
	DB	WED
;
M137;	If M135 = no good
;
	DB	'Please! I really'
	DB	'must insist you '
	DB	'have this ',IT9,'!    '
	DB	'    Okay No Way'
	DB	WE2
;
M138;	After the trade
;
	DB	'Oh boy!  Letter '
	DB	'writing is such '
	DB	'a great hobby!'
	DB	WED
;
M139;	Second speech after exchange
;
	DB	'Hello!  I^m     '
	DB	'writing back to '
	DB	'Christine now!'
	DB	WED
;
M13A;	RICHARD, first speech w/o BowWow
;
	DB	'Salutations!    '
	DB	'You wouldn^t    '
	DB	'know by the look'
	DB	'of me, but I    '
	DB	'used to live in '
	DB	'the castle! My  '
	DB	'servants went   '
	DB	'berserk and I   '
	DB	'was forced to   '
	DB	'flee to my      '
	DB	'villa... So, you'
	DB	'want the key to '
	DB	'Ukuku Prairie,  '
	DB	'do you?  I may  '
	DB	'be able to help '
	DB	'you...  Let^s   '
	DB	'make... a deal, '
	DB	'shall we? I want'
	DB	'you to retrieve '
	DB	'the Golden Leaf '
	DB	'I left behind in'
	DB	'the castle when '
	DB	'I fled...       '
	DB	'    Okay No Way'
	DB	WE2
;
M13B;	When 13A is OKAY
;
		db	'I am impressed. '
		db	'There are five  '
		db	'leaves in all.  '
		db	'Remember to buy '
		db	'a shovel on your'
		db	'way back.'
		db	WED
;
;;;;;;;;	DB	'Smashing!  To   '
;;;;;;;;	DB	'tell you the    '
;;;;;;;;	DB	'truth, there are'
;;;;;;;;	DB	'five leaves, and'
;;;;;;;;	DB	'I want them all!'
;;;;;;;;	DB	'Oh, you^ll need '
;;;;;;;;	DB	'to do some dig- ' 
;;;;;;;;	DB	'ging, so buy a  '
;;;;;;;;	DB	'shovel! Are you '
;;;;;;;;	DB	'off, then?  Good'
;;;;;;;;	DB	'luck!'
;;;;;;;;	DB	WED
;
M13C;	When 13B is No Way
;
	DB	'Well, I never!  '
	DB	'I thought you   '
	DB	'looked cowardly,'
	DB	'but...  Please, '
	DB	'leave me... just' 
	DB	'get out here!' 
	DB	WED
;
M13D;	When you got all the leaves
;
	DB	'Ahh!  Tres Bien!'
	DB	'I see you have  '
	DB	'recovered all of'
	DB	'the leaves! Now,'
	DB	'move this box   '
	DB	'and you will    '
	DB	'find your       '
	DB	'reward!'
	DB	WED
;
M13E;	If player talks to Richard again
;
	DB	'I am forever in '
	DB	'your debt for   '
	DB	'getting my      '
	DB	'leaves back!'
	DB	WED
;
M13F;	When you bring 1-4 leaves
;
	DB	'Ah!  Bonjour!   '
	DB	'#####, for the  '
	DB	'love of justice,'
	DB	'and my own sake,'
	DB	'you must find   '
	DB	'all the leaves!'
	DB	WED
;
M140;	Hints from Ulrira
;
	DB	'Er...Uh...Hmm...'
	DB	'How to say...   '
	DB	'Please call...  '
	DB	'Outside...  ... '
	DB	'It seems that   '
	DB	'old man Ulrira  '
	DB	'is a shy guy,   '
	DB	'in person...'
	DB	WED
;
M141;	Speech of Ulrira through phone
;
	DB	'^BRRING! BRRING!'
	DB	'Hello!  It^s me,'
	DB	'Ulrira!  Ask me '
	DB	'anything about  '
	DB	'the island!  If '
	DB	'you get lost,   '
	DB	'give me a call! '
	DB	'Bye! CLICK!^'
	DB	WED
;
M142;	Ulrira 2  Moblins
;
	DB	'^BRRING! BRRING!'
	DB	'Hello, this is  '
	DB	'Ulrira! ...Well,'
	DB	'most Moblins    '
	DB	'live in the Mys-'
	DB	'terious Forest, '
	DB	'but some live in'
	DB	'the caves of Tal'
	DB	'Tal Heights...  '
	DB	'I hope that is  '
	DB	'what you wanted '
	DB	'to know! CLICK!^'
	DB	WED
;
M143;	Ulrira 3  Flowers in swamp
;
	DB	'^BRRING! BRRING!'
	DB	'Yes, this is    '
	DB	'Ulrira.  The    '
	DB	'Indigestible    '
	DB	'Flowers of      '
	DB	'Goponga Swamp...'
	DB	'Those flowers   '
	DB	'are BowWow^s    '
	DB	'favorite.  Why  '
	DB	'don^t you take  '
	DB	'him for a walk  '
	DB	'there?  CLICK!^'
	DB	WED
;
M144;	Ulrira 4  Richard
;
	DB	'^BRRING! BRRING!'
	DB	'Hi, it^s Ulrira!'
	DB	'...Have you met '
	DB	'everyone on the '
	DB	'island?  There^s'
	DB	'a man named     '
	DB	'Richard who     '
	DB	'lives in Pothole'
	DB	'Field, southeast'
	DB	'of the village. '
	DB	'Why not pay him '
	DB	'a visit?  That^s'
	DB	'all I can tell  '
	DB	'you for now!    '
	DB	'Bye!  CLICK!^'
	DB	WED
;
M145;	Ulrira 5   Bananas
;
	DB	'^BRRING! BRRING!'
	DB	'Old man Ulrira  '
	DB	'here! ...Do you '
	DB	'like bananas?   '
	DB	'Try talking to  '
	DB	'people in the   '
	DB	'village again!  '
	DB	'Bye!  CLICK!^'
	DB	WED
;
M146;	Ulrira 6  Library
;
	DB	'^BRRING! BRRING!'
	DB	'Ulrira speaking!'
	DB	'You know, there '
	DB	'is a library in '
	DB	'the village that'
	DB	'might have some '
	DB	'good information'
	DB	'for you!  Talk  '
	DB	'to you later!   '
	DB	'CLICK!^'
	DB	WED
;
M147;	Ulrira 7 Leaves
;
		db	'^BRRING! BRRING!'
		db	'Ya, it^s Ulrira!'
		db	'You say you     '
		db	'haven^t found   '
		db	'all five Golden '
		db	'Leaves? Go ask  '
		db	'the crow at the '
		db	'castle. I^m sure'
		db	'he can help you.'
		db	'Bye!            '
		db	'CLICK!^'
		db	WED
;
;;;;;;;;	DB	'^BRRING! BRRING!'
;;;;;;;;	DB	'Yeah, it^s me,  '
;;;;;;;;	DB	'Ulrira!  Hmmm...'
;;;;;;;;	DB	'You can^t find  '
;;;;;;;;	DB	'all the leaves  '
;;;;;;;;	DB	'you say?  That^s'
;;;;;;;;	DB	'a stumper!  Ahh,'
;;;;;;;;	DB	'check out the   '
;;;;;;;;	DB	'raven by the    '
;;;;;;;;	DB	'castle!  In any '
;;;;;;;;	DB	'case, try many  '
;;;;;;;;	DB	'things!  CLICK!^'
;;;;;;;;	DB	WED
;
M148;	Ulrira 8  Shovel
;
	DB	'^BRRING! BRRING!'
	DB	'Ulrira here! ...'
	DB	'Shovel...  Did  '
	DB	'you purchase a  '
	DB	'shovel?  You may'
	DB	'find something  '
	DB	'if you dig here '
	DB	'and there!  Bye!'
	DB	'CLICK!^'
	DB	WED
;
M149;	Ulrira 9   Ukuku Prairie Key Cave
;
	DB	'^BRRING! BRRING!'
	DB	'Ya, it^s Ulrira!'
	DB	'The cave in the '
	DB	'Ukuku Prairie is'
	DB	'the key!  Yes, I'
	DB	'mean the key    '
	DB	'cave, no pun    '
	DB	'intended!  Bye! '
	DB	'CLICK!^'
	DB	WED
;
M14A;	Ulrira 10  Angler's key
;
	DB	'^BRRING! BRRING!'
	DB	'Hi, this is     '
	DB	'Ulrira!  In the '
	DB	'Yarna Desert,   '
	DB	'which is located'
	DB	'in the southeast'
	DB	'of the island,  '
	DB	'you will find   '
	DB	'something called'
;
	DB	'the Angler Key. '	
;	DB	'the Angler^s    '
;	DB	'Key... ... ...  '
	DB	'Hmmm... How much'
	DB	'more obvious do '
	DB	'I have to be?   '
	DB	'Bye! CLICK!^'
	DB	WED
;
M14B;	Ulrira 11 Ghost
;
	DB	'^BRRING! BRRING!'
	DB	'This is Ulrira! '
	DB	'Now you^re being'
	DB	'haunted by a    '
	DB	'ghost?! Well,   '
	DB	'how about taking'
	DB	'him where he    '
	DB	'wants to go?    '
	DB	'Bye! CLICK!^'
	DB	WED
;
M14C;	Ulrira 12 Catfish
	DB	'^BRRING! BRRING!'
	DB	'Hi, it^s Ulrira!'
	DB	'The Catfish^s   '
	DB	'mouth is wide   '
	DB	'open?  It sounds'
	DB	'like a great    '
	DB	'place to dive!  '
	DB	'Bye!  CLICK!^'
	DB	WED
;
M14D;	Ulrira 13 Level 6
;
	DB	'^BRRING! BRRING!'
	DB	'Ulrira here! ...'
	DB	'Have you been to'
	DB	'the Face Shrine?'
	DB	'It is north of  '
	DB	'Animal Village. '
	DB	'That is a very  '
	DB	'interesting     '
	DB	'ruin... CLICK!^'
	DB	WED
;
M14E;	Ulrira Bird
;
	DB	'^BRRING! BRRING!'
	DB	'Hi, it^s Ulrira!'
	DB	'Have you heard  '
	DB	'of the Flying   '
	DB	'Rooster of Mabe '
	DB	'Village?  In the'
	DB	'good old days,  '
	DB	'it used to give '
	DB	'us rides if we  '
	DB	'held it above   '
	DB	'our heads... Now'
	DB	'it is lying     '
	DB	'under the       '
	DB	'Weathercock...  '
	DB	'Is that useful  '
	DB	'for you?  I hope'
	DB	'so! Bye! CLICK!^'
	DB	WED
;
M14F;	Ulrira Turtle Rock
;
	DB	'^BRRING! BRRING!'
	DB	'Hi, it^s Ulrira!'
	DB	'The head of the '
	DB	'turtle is in    '
	DB	'your way?  Put  '
	DB	'life into it and'
	DB	'it will move!   '
	DB	'It^s true! True!'
	DB	'Bye!  CLICK!^'
	DB	WED
;
M150;	DUNGEON CLEAR MESSAGES, LEVEL 1
;
	DB	'   ...SWAMP...  '
	DB	' A path opens...'
	DB	'in the blooms...'
	DB	WED
;
M151;	Level 2 clear
;
	DB	'  ...PRAIRIE... '
	DB	'  ...PRAIRIE... '
	DB	' The Prairie is '
	DB	'     waiting...'
	DB	WED
;
M152;	Level 3 clear
;
	DB	'...WATERFALL... '
	DB	'It is hidden in '
	DB	'the waterfall...'
	DB	WED
;
M153;	Level 4 clear
;
	DB	'    ...BAY...   '
	DB	'Your road goes  '
	DB	'into the bay... '
	DB	WED
;
M154;	Level 5 clear
;
	DB	'   ...SHRINE... '
	DB	'An island secret'
	DB	'in the shrine...'
	DB	WED
;
M155;	Level 6 clear
;
	DB	' ...MOUNTAIN... '
	DB	'Something calls '
	DB	'  ...from the   '
	DB	'  mountains...'
	DB	WED
;
M156;	Level 7 clear
;
	DB	'  ...OCARINA... '
	DB	'The music of the'
	DB	'Ocarina leads...'
	DB	WED
;
M157;	Level 8 clear
;
	DB	'    ...EGG....  '
	DB	'The Egg on the  '
	DB	'mountain calls!'
	DB	WED
;
M158;	not used
;
M159;	GRANDMA YAHOO, when answer to 15C is NO
;
	DB	'Then YOU sweep  '
	DB	'the island!'
	DB	WED
;
M15A;	Yahoo, first time
;
	DB	'YAHOO!   I^m    '
	DB	'fine, and you?!'
	DB	WED
;
M15B;	Yahoo, after #5 clear
;
	DB	'YAHOO!  I worked'
	DB	'too hard and now'
	DB	'my broom is worn'
	DB	'to the handle!'
	DB	WED
;
M15C;	When player has broom
;
	DB	'YAHOO!  YAHOO!  '
	DB	'A new broom?!   '
	DB	'For me?  It is, '
	DB	'isn^t it?!      '
	DB	'    Yes  No'
	DB	WE2
;
M15D;	15C = YES
;
	DB	'Okay!  In return'
	DB	'you can have    '
	DB	'this fishing    '
	DB	'hook I found    '
	DB	'when I swept by '
	DB	'the river bank!'
	DB	WED
;
M15E;	Explanation
;
	DB	'You exchanged ',IT9,' '
	DB	'for the fishing '
	DB	'hook ',ITA,'!  What   '
	DB	'will the fishing'
	DB	'hook become?'
	DB	WED
;
M15F;	Yahoo
;
	DB	'YAHOO!  A new   '
	DB	'broom!  Superb!'
	DB	WED
;
M160; SARU KIKI,  when you bring BowWow to Kiki
;
	DB	'Kiiiki!  What?! '
	DB	'All right, mutt!'
	DB	'Let^s battle!!'
	DB	WED
;
M161;	Player has no banana
;
	DB	'Chi-kiita! Chi- '
	DB	'kiita!  Kiki the'
	DB	'monkey!  Hungry!'
	DB	'Kiki the monkey!'
	DB	WED
;
M162;	When M165 = Yes
;
	DB	'    ',IT4,'!    ',IT4,'!    '
	DB	'Oooh! Ooh! Kiki!'
	DB	'Monkeys!  Come! '
	DB	'Repay him! Kiki!' 
	DB	WED
;
M163;	When bridge is done
;
	DB	'Monkey business!'
	DB	'Done!  Bye bye! '
	DB	'Oooh!  Kiki!'
	DB	WED
;
M164;	Monkey left stick
;
	DB	'You found a     '
	DB	'stick a monkey  '
	DB	'left behind...  '
	DB	'You take it!'
	DB	WED
;
M165; When player brings banana to Kiki
;
	DB	'    ',IT4,'!    ',IT4,'!    '
	DB	'  Oooh!  Oooh!  '
	DB	' Give to Kiki!? '
	DB	'    Yes  No!'
	DB	WE2
;
M166;	CHRISTINE THE GOAT, When enter w/o anything
;
	DB	'You don^t know  '
	DB	'the proper      '
	DB	'etiquette when  '
	DB	'dealing with a  '
	DB	'lady, do you?   '
	DB	'You should have '
	DB	'brought flowers '
	DB	'or something,   '
	DB	'then I might be '
	DB	'more inclined to'
	DB	'talk with you...'
	DB	'Oh yes, in my   '
	DB	'case, hibiscus  '
	DB	'are best...'
	DB	WED
;
M167;	When you have Hibiscus
;
	DB	'Oh, you brought '
	DB	'me a hibiscus!  '
	DB	'How sweet! Well,'
	DB	'since you are   '
	DB	'such a gentleman'
	DB	'I have a request'
	DB	'to make of you. '
	DB	'Will you listen?'
	DB	'    Yes  No'
	DB	WE2
;
M168;	When answer to 167 is Yes
;
	DB	'I would like you'
	DB	'to take this    '
	DB	'letter to a Mr. '
	DB	'Write who lives '
	DB	'on the border of'
	DB	'the Mysterious  '
	DB	'Forest, please!'
	DB	WED
;
M169;	When answer to 167 is NO
;
	DB	'...Is that so?  '
	DB	'And I thought   '
	DB	'you were a      '
	DB	'gentleman...'
	DB	WED
;
M16A;	After player says yes
;
	DB	'You traded ',IT8,' for'
	DB	'a goat^s letter '
	DB	ITE,'!  ...Great!?'
	DB	WED
;
M16B;	After exchanging, goat's speech
;
	DB	'You know, some- '
	DB	'times I can^t   '
	DB	'help eating a   '
	DB	'delicious piece '
	DB	'of paper, even  '
	DB	'if it^s a letter'
	DB	'to my darling   '
	DB	'Mr. Write... How'
	DB	'embarrassing!'
	DB	WED
;
M16C;	Event, when you first find BowWow
;
	DB	'You^ve saved    '
	DB	'BowWow!  What a '
	DB	'fearsome beast!'
	DB	WED
;
M16D;	Event, when you play ocarina before rooster bones
;
	DB	'Wow! The Rooster'
	DB	'has recovered!  '
	DB	'He seems very   '
	DB	'friendly!'
	DB	WED
;
M16E;
		db	'^BRRING! BRRING!'
		db	'Ya, it^s Ulrira!'
		db	'My wife went to '
		db	'the Animal      '
		db	'Village and left'
		db	'me all alone.   '
		db	'Can you tell    '
		db	'her to come home'
		db	'as soon as she  '
		db	'is done         '
		db	'cleaning?       '
		db	'Bye!            '
		db	'CLICK!^'
		db	WED
;
M16F;
		db	'Grandma^s not   '
		db	'here. She^s in  '
		db	'the Animal      '
		db	'Village. That^s '
		db	'what Grandpa    '
		db	'Ulrira said on  '
		db	'the phone!'
		db	WED
;
M170;	PAPAHL, when player finds him in the mountains w/pineapple
;
	DB	'Yep, Papahl got '
	DB	'lost, just like '
	DB	'he said!  Now, I'
	DB	'am so famished I'
	DB	'can^t move!  Can'
	DB	'you give me some'
	DB	'vittles?        '
	DB	'    Yes  Nope'
	DB	WE2
;
M171;	if M170 is No
;
	DB	'You^re one cold '
	DB	'hombre...'
	DB	WED
;
M172;	If m170 = yes
;
	DB	'This ',IT7,' is so    ' 
	DB	'delicious!  I^m '
	DB	'going to eat the'
	DB	IT7,' right now!     '
	DB	'Bon Appetit!'
	DB	WED
;
M173;	After eating
;
	DB	'AH!  This isn^t '
	DB	'meant to be a   '
	DB	'reward...  Here,'
	DB	'take this ',IT8,'!    '
	DB	'It^s a hibiscus!'
	DB	WED
;
M174;	computer after trade
;
	DB	'You traded the ',IT7
	DB	'for the ',IT8,'!'
	DB	WED
;
M175;	Papahl as he eats
;
	DB	'Delicious!  Yum!'
	DB	'I^m filled with '
	DB	'energy, now!'
	DB	WED
;
M176;	Papahl at home after saving him
;
	DB	'I^ve got to say,'
	DB	'thanks again!'
	DB	WED
;
M177;	Player finds Papahl w/o pineapple
;
	DB	'Yep, Papahl got '
	DB	'lost, just like '
	DB	'he said!  Now, I'
	DB	'am so famished I'
	DB	'can^t move!  Can'
	DB	'you give me some'
	DB	'vittles?        '
	DB	'    Nope Can^t'
	DB	WE2
;
M178;	Yahoo in front of Meowmeow's house
;
	DB	'She^s had an    '
	DB	'awful tragedy   '
	DB	'in the house    '
	DB	'across the way! '
	DB	'It^s just awful,'
	DB	'and all I can do'
	DB	'is sweep!'
	DB	WED
;
M179;
		db	'I am the spirit '
		db	'of the mansion. '
		db	'I have been     '
		db	'waiting for     '
		db	'someone to      '
		db	'overcome the    '
		db	'darkness. Find  '
		db	'all the secret  '
		db	'shells and go   '
		db	'through the     '
		db	'gate to receive '
		db	'the ultimate    '
		db	'sword!'
		db	WED
;
M17A;
		db	'Hmmm. No        '
		db	'response. You   '
		db	'must not have   '
		db	'enough shells.'
		db	WED
;
M17B;
		db	'My job here     '
		db	'is finished.'
		db	WED
;
M17C;
		db	'Hey you! Have   '
		db	'you been to the '
		db	'Camera Shop in  '
		db	'Tal Tal Heights?'
		db	'I've heard that '
		db	'young people    '
		db	'like to go there'
		db	'and take        '
		db	'pictures of     '
		db	'themselves.     '
		db	'Seems kinda     '
		db	'funny to me.'
		db	WED
;
M17D;
		db	'Step right up   '
		db	'and get your    '
		db	'souvenir photo!'
		db	WED
;
M17E;
		db	'Good job!       '
		db	'Use it on your  '
		db	'enemies and see '
		db	'what happens.   '
		db	'If you run out, '
		db	'go to the for-  '
		db	'est, pick some  '
		db	'mushrooms, and  '
		db	'I will make you '
		db	'more.'
		db	WED
;
M17F;
		db	'. . . .! I can^t'
		db	'move! But I am  '
		db	'still all right.'
		db	'Your little     '
		db	'sword won^t     '
		db	'break this      '
		db	'bottle!'
		db	WED
;
M180;		KYAN KYAN, BowWow's Puppy, first speech
;
	DB	'Make-up! Jewels!'
	DB	'Dresses!  I want'
	DB	'it all!  Sigh...' 
	DB	'And some new    '
	DB	'accessories     '
	DB	'would be nice...'
	DB	WED
;
M181;	If you have the ribbon
;
	DB	'Make-up! Jewels!'
	DB	'Dresses!  I want'
	DB	'it all!  Sigh...' 
	DB	'And some new    '
	DB	'accessories     '
	DB	'would be nice...'
	DB	'Oh! That Ribbon!'
	DB	'I need it!  Will'
	DB	'you trade for my'
	DB	'dog food?       '
	DB	'    Yes  No!'
	DB	WE2
;
M182;	computer after exchange
;
	DB	'You exchanged ',IT2,' '
	DB	'for ',IT3,'! It^s full'
	DB	'of juicy beef!'
	DB	WED
;
M183;	M181 = Yes
;
	DB	'Lucky!  Thanks! '
	DB	'Well, here^s    '
	DB	'your ',IT3,'!'
	DB	WED
;
M184;	M184 = No
;
	DB	'Eh?!  I can^t   '
	DB	'believe it!  You'
	DB	'are the worst!!'
	DB	WED
;
M185;		MAMBO, the big fish
;
	DB	'I am Manbo,     '
	DB	'child of the Sun'
	DB	'Fish!  Have you '
	DB	'got an Ocarina? '
	DB	'    Yes  No'
	DB	WE2
;
M186;	Answer 185 no
;
	DB	'Very well...    '
	DB	'Glub Blub Bloop!'
	DB	WED
;
M187;	Answer 185 yes
;
	DB	'Ahaha!  Then I  '
	DB	'can teach you my'
	DB	'song! Bloop!'
	DB	WED
;
M188;	When you learn his song
;
	DB	'You^ve learned  '
	DB	'Manbo^s Mambo!  '
	DB	'When you get out'
	Db	'of the water,   '
	DB	'play it!'
	DB	WED
;
M189;	After you learn the song
;
	DB	'I am Manbo,     '
	DB	'child of the Sun'
	DB	'Fish!  When you '
	DB	'play my Mambo,  '
	DB	'you can warp to '
	DB	'Manbo Pond!  Try'
	DB	'this tune in the'
	DB	'dungeons, too!  '
	DB	'Cha-cha-cha!'
	DB	WED
;
M18A;	When player doesn't have the ocarina
;
	DB	'Aha... You don^t'
	DB	'have an Ocarina,'
	DB	'so...Glub glub!'
	DB	WED
;
M18B;	HEN HOUSE ON MOUNTAIN
;
	DB	'Chickens these  '
	DB	'days don^t have '
	DB	'the fighting    '
	DB	'spirit they used'
	DB	'to!  In the old '
	DB	'days, they could'
	DB	'fly, flap flap! '
	DB	'But now, see?   '
	DB	'Cluck cluck!'
	DB	WED
;
M18C;	When player has flying rooster
;
	DB	'Wow!  Amazing!  '
	DB	'That rooster is '
	DB	'actually flying!'
	DB	'It^s just like I'
	DB	'said, eh?  Have '
	DB	'you tried to    '
	DB	'hold him over   '
	DB	'your head? Cluck'
	DB	'Cluck!'
	DB	WED
;
M18D;	When player returns after giving flying rooster
;
	DB	'Wooo!  Finally! '
	DB	'This flying     '
	DB	'rooster is the  '
	DB	'greatest!'
	DB	WED
;
M18E;	sign on Weathercock
;
	DB	' Here Sleeps The'
	Db	' Flying Rooster'
	DB	WED
;
M18F;
		db	'Iz zat zee      '
		db	'Mermaid scale?  '
		db	'I can^t use it  '
		db	'now. I have to  '
		db	'werk on zis     '
		db	'drawing. You    '
		db	'should go finish'
		db	'zee mermaid     '
		db	'statue for me.'
		db	WED
;
;====================================================================
BANK1D	GROUP	$1D
	ORG	$4000
;====================================================================
M190;	MOBLIN BOSS, when player enters cave to save BowWow
;
	DB	'Ennh?  Who^s    '
	DB	'this suspicious-'
	DB	'looking runt?!  '
	DB	'Okay boys, let^s'
	DB	'get ridda him!'
	DB	WED
;
M191;		continued
;
	DB	'You must be an  '
	DB	'assassin sent by'
	DB	'Madam MeowMeow  '
	DB	'to rescue the   '
	DB	'mutt!  You came '
	DB	'here to get me, '
	DB	'but it is I who '
	DB	'will get you!!'
	DB	WED
;
M192;	MARIN in the Animal Village, w/o ocarina & no song
;
	DB	'Oh, #####.  I   '
	DB	'often come to   '
	DB	'this village to '
	DB	'sing, too!  It  '
	DB	'seems that just '
	DB	'about everyone  '
	DB	'loves my ^Ballad'
	DB	'of the Wind     '
	DB	'Fish!^  #####,  '
	DB	'what is your    '
	DB	'favorite song?'
	DB	WED
;
M193;		After player learns song
;
	DB	'Please, don^t   '
	DB	'ever forget this'
	DB	'song...or me...'
	DB	WED
;
M194;	After saving MARIN on suspension bridge
;
	DB	'Thank you for   '
	DB	'everything!     '
	DB	'#####, you are  '
	DB	'the kindest boy '
	DB	'I know.  One day'
	DB	'I made a wish to'
	DB	'the Wind Fish...'
	DB	'What was the    '
	DB	'wish?  It was...'
	DB	'No, it^s secret!'
	DB	WED
;
M195;	Continued
;
	DB	'#####, some day '
	DB	'you will leave  '
	DB	'this island...  '
	DB	'I just know it  '
	DB	'in my heart...  '
	DB	'...Don^t ever   '
	DB	'forget me... If '
	DB	'you do, I^ll    '
	DB	'never forgive   '
	DB	'you!'
	DB	WED
;
M196;	Animal listening to Marin's song
;
	DB	'... ... ... ... '
	DB	'It seems to be  '
	DB	'totally absorbed'
	DB	'in Marin^s song!'
	DB	WED
;
M197;	Marin -3
;
	DB	'They say the    '
	DB	'^Ballad of the  '
	DB	'Wind Fish^ is a '
	DB	'song of awaken- '
	DB	'ing.  I wonder, '
	DB	'if the Wind Fish'
	Db	'wakes up, will  '
	DB	'he make my wish '
	Db	'come true?'
	DB	WED
;
M198;Marin Option, if you try to go into dungeon
;
	DB	'Eh?  You want me'
	DB	'to go in there? '
	Db	'No, I think I^ll'
	DB	'wait out here...'
	DB	'Take care of    '
	DB	'yourself, #####!'
	DB	WED
;
M199;	If player breaks pots with Marin
;
	DB	'Ahhh!  Ahhh, you'
	DB	'are a bad boy,  '
	DB	'#####!'
	DB	WED
;
M19A;	After buying medicine from Tracy
;
	DB	'Here^s some     '
	DB	'bonus treatment!'
	DB	'Behold!  Your   '
	DB	'Hearts are full!'
	DB	WED
;
M19B;	Schule, alligator artist, first speech
;
	DB	'Ya, I am Schule '
	DB	'Donavitch!  Zee '
	DB	'mermaid statue  '
	DB	'by zee bay iz my'
	Db	'masterpiece! ...'
	DB	'To tell you zee '
	DB	'truth, zis werk '
	DB	'iz not complete!'
	DB	'Zee art, it^z...'
	DB	'difficult for   '
	DB	'you to grasp, iz'
	DB	'it not?'
	DB	WED
;
M19C;	Mermaid statue sign
;
	DB	'  THE MOURNING  '
	DB	'     MERMAID    '
	DB	'    By SCHULE   '
	DB	'? ...A scale is '
	DB	'missing...'
	DB	WED
;
M19D;	PLACARDS
;
	DB	'Seashell Mansion'
	DB	WED
;
M19E
;
	DB	'Entrance to     '
	DB	'  Yarna Desert ',XR
	DB	WED
;
M19F;	deleted
;
M1A0;
;
	DB	'   Mysterious   '
	DB	'     Forest     '
	DB	' (It^s a little '  
	DB	' bit mysterious)'
	DB	WED
;
M1A1
;
	DB	'Do you want to  '
	DB	'challenge the   '
	DB	'river rapids on '
	DB	'a raft?  Proceed'
	DB	'to the office at'
	DB	'once, please!'
	DB	WED
;
M1A2
;
	DB	'East ',XR,' Ukuku    '
	DB	'       Prairie  '
	DB	'Farther East    '
	DB	'  Animal Village'
	Db	WED
;
M1A3
;
	DB	'Mt. Tamaranch   '
	DB	WED
;
M1A4;	south of the village
;
	DB	XR,' Tail Cave     '
	DB	XD,' Toronbo Shores'
	Db	WED
;
M1A5;	West of swamp
;
	DB	XR,' Gopongo Swamp '
	DB	XD,' Mysterious    '
	DB	'  Forest'
	DB	WED
;
M1A6;	Mysterious Forest, in front of tunnel
;
	DB	'Beware of floors'
	DB	'with cracks!  A '
	DB	'heavy person    '
	DB	'should not stand'
	DB	'on them!'
	DB	WED
;
M1A7
	DB	'Telephone Booth '
	DB	WED
;
M1A8;	Swamp
;
	DB	'     DANGER!    '
	DB	'    Keep out!   '
	DB	'(Except BowWow)'
	DB	WED
;
M1A9;	outside signpost maze
;
	DB	XD,' GO THIS WAY'
	DB	WED
;
M1AA;	in maze
;
	DB	XU,' GO THIS WAY'
	DB	WED
;
M1AB
;
	DB	XR,' GO THIS WAY'
	DB	WED
;
M1AC
;
	DB	XL,' GO THIS WAY'
	DB	WED
;
M1AD;	if you make a mistake
;
	DB	' TRY AGAIN FROM '
	DB	'   THE START'
	DB	WED
;
M1AE;	if finish maze
;
	DB	'GREAT!  YOU DID '
	DB	'IT!  YOUR REWARD'
	DB	'IS ',XR,' THIS WAY!'
	db	WED
;
M1AF;	frog's sign after song is learned
;
	DB	'GONE ON TOUR    '
	DB	'         MAMU'
	DB	WED
;
M1B0;	sign outside tracy's
;
	DB	XR,' Crazy Tracy   '
	DB	XD,' Manbo^s Pond'
	DB	WED
;
M1B1
;
	DB	XR,' Animal Village'
	DB	XD,' Martha^s Bay'
	DB	WED
;
M1B2
;
	DB	XR,' Welcome to the'
	DB	' Animal Village!'
	DB	WED
;
M1B3
;
	DB	XR,' Cemetery      '
	DB	XD,' Ukuku Prairie '
	DB	WED
;
M1B4
		db	'You^re close to '
		db	'Tal Tal Heights.'
		db	'The Camera Shop '
		db	'is nearby.'
		db	WED
;;;;;;;;	DB	'Tal Tal Heights'
;;;;;;;;	DB	WED
;
M1B5
;
	DB	XR,' Tamaranch Mt. '
	DB	XL,' Goponga Swamp '
	DB	WED
;
M1B6;	***OWL STATUES***, #1
;
	DB	'MUSIC, THE FISH '
;	DB	'A SOUND, THE GOD'
	DB	'STIRS IN THE EGG'
	DB	'YOU ARE THERE...'
	DB	WED
;
M1B7;	#2
;
	DB	'THE WIND FISH IN'
	DB	'NAME ONLY, FOR  '
	DB	'IT IS NEITHER.'
	DB	WED
;
M1B8;	#3
;
	DB	'IN SOIL SLEEPS  '
;	DB	'IN HUMUS SLEEPS '
	DB	'SECRETS, BENEATH'
	DB	'YOUR SOLES...'
	DB	WED
;
M1B9;	#4
;
	DB	'IN SOIL SLEEPS  '
;	DB	'IN HUMUS SLEEPS '
	DB	'SECRETS, BENEATH'
	DB	'YOUR SOLES...'
	DB	WED
;
M1BA;	#5
;
	DB	'AROUND HERE,    '
	DB	'SECRETS ARE NIGH'
	DB	WED
;
M1BB;	#6
;
	DB	'SECRETS ARE LIKE'
	DB	'WATER WHEN IT   '
	DB	'COMES TO BRIDGES'
	DB	WED
;
M1BC;
	DB	'NOW YOU NEED    '
	DB	'LOOK FAR FOR    '
	DB	'A SECRET...'
	DB	WED
;
M1BD;
;
	DB	'THE WIND FISH   '
	DB	'SLUMBERS LONG...'
	DB	'THE HERO^S LIFE '
	DB	'GONE...'
	DB	WED
;
M1BE;
;
	DB	'SEA BEARS FOAM, '
	DB	'SLEEP BEARS     '
	DB	'DREAMS. BOTH END'
	DB	'IN THE SAME WAY '
	DB	'CRASSSH!'
	DB	wed
;
M1BF;	Deleted
;
M1C0;	TARIN w/ stick
;
	DB	'Oh?!  #####, I  '
	DB	'see ya have a   '
	DB	'nice stick...   '
	DB	'Can I borrow it '
	DB	'for a second?   '
	DB	'    Can  Can^t'
	DB	WE2
;
M1C1;	When answer is yes, after Tarin chased by bees
;
	DB	IT5,' became the    '
	DB	'honeycomb ',IT6,'!    '
	DB	'You^re not sure '
	DB	'how it happened,'
	DB	'but take it!'
	DB	WED
;
M1C2;	When answer is NO to M1C0
;
	DB	'Hmmm, #####, you'
	DB	'are mean!'
	DB	WED
;
M1C3;	Placard on Beach
;
	DB	'Beware of Sea   '
	DB	'Urchins!  Don^t '
	DB	'touch them with '
	DB	'your bare hands!'
	DB	WED
;
M1C4;	not used
M1C5;	Tarin eating bananas at home
;
	DB	'I was hungry    '
	DB	'somethin^ fierce'
	DB	'so I went and   '
	DB	'got bananas at  '
	DB	'the beach...    '
	DB	'#####, if you   '
	DB	'want some, you  '
	DB	'should go and   '
	DB	'get some!'
	DB	WED
;
M1C6;	Banana seller SALE
;
	DB	'Welcome to      '
	DB	'Sale^s House O^ '
	DB	'Bananas!  I^m   '
	Db	'Sale, this is my'
	DB	'house! Actually,'
	DB	'my hobby is col-' 
	DB	'lecting rare and'
	DB	'unusual canned  '
	DB	'food. My brother'
	DB	'is an artist, so'
	DB	'I guess strange '
	DB	'hobbies run in  '
	DB	'the family!'
	DB	WED
;
M1C7;	With dog food
;
	DB	'What^s that you '
	DB	'have?!  It^s    '
	DB	'canned food! For'
	DB	'heaven^s sake,  '
	DB	'man, give that ',IT3
	DB	'to ME!!  PLEASE!'
	DB	'He^s hysterical!'
	DB	'What do you do? '
	DB	'    Give Don^t'
	DB	WE2
;
M1C8;	When 1C7 is YES
;
	DB	'Oh thank you!   '
	DB	'I^ll take that!'
	Db	WED
;
M1C9;	When you answer NO
;
	DB	'I don^t suppose ' 
	DB	'it would do any '
	DB	'good to beg?    '
	DB	'Well, if you    '
	DB	'change your     '
	DB	'mind, tell me.'
	DB	WED
;
M1CA;	Dog food eaten
;
	DB	'  MUNCH MUNCH!! '  
	DB	'... ... ... ... '
	DB	'That was great! '
	DB	'I know it^s not '
	DB	'a fair trade,   '
	DB	'but here^s some '
	DB	'bananas! YUM...'
	DB	WED
;
M1CB;	computer explains
;
	DB	'You gave him ',IT3,'  '
	DB	'and got bananas '
	DB	IT4,' in return!    '
	DB	'Good deal!'
	Db	WED
;
M1CC;	after trade, Sale's speech
;
	DB	'Thank you again!'
	Db	'That was yummy!'
	DB	WED
;
M1CD;	another message
;
	DB	'Hey friend! Have'
	DB	'you ever ridden '
	DB	'the rapids on a '
	Db	'raft?  You can, '
	DB	'near Tal Tal    '
	DB	'Heights!  You   '
	Db	'ought to try it!'
	DB	WED
;
M1CE;	Bear Chef in animal village, 
;
	DB	'Rik^m rak^m! I  '
	DB	'ran out of      '
	DB	'ingredients!  If'
	DB	'I had honey, I  '
	DB	'could make this '
	DB	'fit for a king!'
	DB	WED
;
M1CF;	with honeycomb
;
	DB	'Hi ho! Hey you! '
	DB	'Is that possibly'
	DB	'a ',IT6,' you have?   '
	DB	'I just ran out! '
	DB	'Will you swap it'
	DB	'for a pineapple?'
	DB	'    Yes  No'
	DB	WE2
;
M1D0;	When 1CF = yes
;
	DB	'You exchanged ',IT6,' '
	DB	'for ',IT7,'!  It^s not'
	DB	'as sweet, but it'
	DB	'is delicious!   '
	DB	WED
;
M1D1;	When 1CF = No
;
	DB	'That^s a crying '
	DB	'shame, but I    '
	DB	'realize those   '
	DB	'are a rare      '
	DB	'delicacy!'
	DB	WED
;
M1D2;	After exchange, talk to Bear again
;
	DB	'Hi ho! Yeah, I  '
	DB	'know, that tub  '
	DB	'of goo is asleep'
	DB	'right in the way'
	DB	'to Yarna Desert!'
	DB	'Once he^s asleep'
	DB	'he won^t budge  '
	DB	'for a loooooonng' 
	DB	'time.  But hey! '
	DB	'Take Little     '
	DB	'Marin and wake  '
	DB	'him up with her '
	Db	'song!  That slob'
	DB	'would wake up   '
	DB	'with a jump if  '
	DB	'he heard her    '
	Db	'sing, for sure! '
	DB	'Heh heh heh!'
	DB	WED
;
M1D3;	Next time talk to Bear
;
	DB	'My ultimate plan'
	DB	'is to open a    '
	Db	'branch in Mabe  '
	DB	'Village!'
	DB	WED
;
M1D4;	When you talk to bear w/Marin
;
	DB	'HI HO!  Little  '
	DB	'Marin!  Welcome!'
	DB	'... ... ... ... '
	DB	'Oh, shucks!  You'
	DB	'are here too... '
	DB	'Sorry...'
	DB	WED
;
M1D5;	MARIN at Secret Beach
;
	DB	'Oh, #####, I^m  '
	DB	'glad you found  '
	DB	'this place.     '
	DB	'Will you stay   '
	DB	'and talk to me  '
	DB	'for a while?    '
	Db	'    Yes! No...'
	DB	WE2
;
M1D6;	If answer to M1D5 is no
;
	DB	'Okay, I^ll just '
	DB	'watch the waves '
	DB	'for a while...'
	DB	WED
;
M1D7;	Note left by Marin at house
;
	DB	'At the beach...'
	DB	'  Marin  ',MK5
	DB	WED
;
M1D8;	New view of scene, long conversation
;
	DB	'I wonder where  '
	DB	'these coconut   '
	DB	'trees come from?'
	DB	'...Tarin says   '
	DB	'there is nothing'
	DB	'beyond the sea, '
	DB	'but I believe   '
	DB	'there must be   '
	DB	'something over  '
	DB	'there...  When I'
	DB	'discovered you, '
	DB	'#####, my heart '
	DB	'skipped a beat! '
	DB	'I thought, this '
	DB	'person has come '
	DB	'to give us a    '
	DB	'message...'
	DB	WED
;
M1D9;	continued
;
	DB	'... ... ... ... '
	DB	'... ... ... ... '
	DB	'If I was a sea  '
	DB	'gull, I would   '
	DB	'fly as far as I '
	DB	'could!  I would '
	DB	'fly to far away '
	DB	'places and sing '
	DB	'for many people!'
	DB	'...If I wish to '
	Db	'the Wind Fish,  '
	DB	'I wonder if my  '
	DB	'dream will come '
	Db	'true... ... ...'
	DB	WED
;
M1DA;
;
	DB	'Hey!  Are you   '
	DB	'listening?      '
	DB	'#####, are you  '
	DB	'listening to me?'
	DB	'    Yeah No...'
	DB	WE2
;
M1DB;		If YES to M1DA
;
	DB	'I want to know  '
	DB	'everything about'
	DB	'you...Err...Uhh,'
	DB	'Ha ha ha ha!'
	DB	WED
;
M1DC;
;
	DB	'Hunh? The walrus'
	DB	'wants me to go  '
	DB	'to him?  It     '
	DB	'doesn^t matter, '
	DB	'I will go with  '
	DB	'you to him...'
	DB	WED
;
M1DD;	Tarin in bed after being chased by bees
;
	DB	'Unnnngh! Owwwww!'
	DB	'... ... ... ... '
	DB	'I^ve sure lost  '
	DB	'my taste for    '
	DB	'honey!'
	DB	WED
;
M1DE;	If NO to M1DA
;
	DB	'Humph! Your head'
	DB	'is always in the'
	DB	'clouds! Will you'
	DB	'please listen to'
	DB	'me next time?!'
	DB	WED
;
M1DF;
		db	'Ha! That^s all  '
		db	'you^ve got?!    '
		db	'Get ready for   '
		db	'THIS!'
		db	WED
;
M1E0;	WALRUS
;
	DB	'ZZZ ZZZ ZZZ ZZZ '
	DB	' ... ',MK5,' ... ',MK5,' ...'
	DB	WED
;
M1E1;	Marin to Walrus
;
	DB	'Yes, it^s that  '
	DB	'lazy walrus!    '
	DB	'Shall we give   '
	DB	'him a little    '
	DB	'surprise?       '
	DB	'    Yes  No...'
	DB	WE2
;
M1E2;	1E1 = yes
;
	DB	'Aha ha ha!  Wow!'
	DB	'He certainly    '
	Db	'woke with a     '
	DB	'start!'
	Db	WED
;
M1E3;	Rabbit comes to Marin
;
	DB	'Hunh?  Oh, he^s '
	DB	'calling me...   '
	DB	'It^s the same as'
	DB	'always... Ha ha!'
	DB	WED
;
M1E4;	if M1E1 is NO
;
	DB	'You^re right, it'
	DB	'would be mean to'
	DB	'wake him up now!'
	DB	'Let^s let him   '
	DB	'sleep some more!'
	DB	WED
;
M1E5;	continuation of M1E3
;
	DB	'#####, I^m going'
	DB	'to the Animal   '
	Db	'Village!  Please'
	DB	'drop by, okay?'
	DB	WED
;
M1E6;	if link plays ocarina where walrus jumped into water
;
	DB	'Arfh! Arfh! Arf!'
	DB	' ',MK5,'  ',MK5,'!  ',MK5,'   ',MK5,'!  '
	DB	'..... ',MK4,'?? '
	DB	WED
;
M1E7;	FISHERMAN under bridge
;
	DB	'It^s no use,    '
	DB	'little buddy!  A'
	DB	'fish took my    '
	DB	'hook... I keep  '
	DB	'casting my line '
	DB	'into the water, '
	Db	'but I haven^t   '
	DB	'got a bite... I '
	DB	'thought this    '
	DB	'would happen...'
	DB	WED
;
M1E8;	when you have the hook
;
	DB	'Oh! What is that'
	DB	'you have in your'
	DB	'hand?  It^s not '
	DB	'a fishing hook, '
	DB	'is it?  You had '
	DB	'better let me   '
	DB	'have it.  I^ll  '
	DB	'give you my next'
	DB	'catch if you let'
	DB	'me have it...   '
	DB	'    Okay No'
	DB	WE2
;
M1E9;	when 1E8 = yes
;
		db	'Keep your eyes  '
		db	'open and watch  '
		db	'a pro at work.'
		db	WED
;
;;;;;;;;	DB	'All right, boy, '
;;;;;;;;	DB	'feast your eyes '
;;;;;;;;	DB	'on a display of '
;;;;;;;;	DB	'fishing skill!'
;;;;;;;;	DB	WED
;
M1EA;	When 1E8 = NO
;
	DB	'You should be   '
	DB	'more kind to me!'
	DB	'I thought we    '
	DB	'were buddies!'
	DB	WED
;
M1EB;	when catching something
;
		db	'My, that^s a    '
		db	'BIIIIG one!'
		db	WED
;
;;;;;;;;	DB	'Whoooah nellie!!'  
;;;;;;;;	DB	'It^s a big one!!'
;;;;;;;;	DB	'Big! Big! Yaaah!'
;;;;;;;;	DB	WED
;
M1EC;	computer explains
	DB	'The ',ITA,' became a  '
	DB	'necklace ',ITB,'!     '
	DB	'L-l-lucky!' 
;                                      '
;	DB	'Your ',ITA,' is now a '
;	DB	'pink swimming   '
;	DB	'suit top ',ITB,'!     '
;	DB	'L-l-lucky!'
	DB	WED
;
M1ED;	After exchange
;
	DB	'I can^t wait to '
	DB	'see what I^ll   '
	DB	'catch next!'
	DB	WED
;
M1EE;
		db	'My husband is   '
		db	'lost in the     '
		db	'woods! Please   '
		db	'go find him!'
		db	WED
;
M1EF;
		db	'Hey, you can see'
		db	'me?! You must   '
		db	'have a magnify- '
		db	'ing glass. I^m  '
		db	'not a trouble   '
		db	'maker. I just   '
		db	'want to live in '
		db	'peace.'
		db	WED
;
;	MERMAID
M1F0;	Talking to the mermaid
	DB	'When I was swim-'
	DB	'ming in the bay,'
	DB	'the waves took a'
	DB	'very important  '
	DB	'necklace from   '
	DB	'around my neck! '
	DB	'If you find it, '
	DB	'I will let you  '
	DB	'take a scale    '
	DB	'from my tail!   '
	DB	WED
;
;	DB	'When I was swim-'
;	DB	'ming in the bay,'
;	DB	'a wave came and '
;	DB	'took my swim    '
;	DB	'suit top...  If '
;	DB	'you find it, I  '
;	DB	'will give you...'
;	DB	'XXXXX.'
;	DB	WED
;
M1F1;	When you dive near the mermaid
	DB	'I have already  '
	DB	'looked around   '
	DB	'here!'
;
;	DB	'Hey!  Quit it!  '
	DB	WED
;
M1F2;	When you have swim suit top
	DB	'Ahh!  That^s it!'
	DB	'That^s my neck- '
	DB	'lace!  Give it! '
	DB	'Give it back!  I'
	DB	'will give you a '
	DB	'scale as I said!'
	DB	'    Give Keep'
	DB	WE2
;
;	DB	'Ahh!  That^s it!'
;	DB	'My swim suit!   '
;	DB	'Hey!  Give it to'
;	DB	'me!  Give it!   '
;	DB	'If you give it  '
;	DB	'back, I will let'
;	DB	'you take a scale'
;	DB	'from my tail!   '
;	DB	'    Yes! No Way'
;	DB	WE2
;
M1F3;	When 1F2 = Yes
;
	DB	'Promise!  You^ll'
	DB	'only take one!'
;	DB	'A-Ah, only take '
;	DB	'one!'
	DB	WED
;
M1F4;	when 1F2 = No
	DB	'You are heart-  '
	DB	'less and cruel!'
;
;	DB	'Boo hoo!  You^re'
;	DB	'such a meanie!'
	DB	WED
;
M1F5;	computer explains
	DB	'You returned the'
	DB	'necklace ',ITB,' and  '
	DB	'got a scale ',ITC,' of'
	DB	'the mermaid^s   '
	DB	'tail.  How will '
	DB	'you use this?'
;
;	DB	'You took a scale'
;	DB	'from the mermaid'
;	DB	ITC,' and gave the ',ITB
;	DB	'back to her. You'
;	DB	'are very happy!'
	DB	WED
;
M1F6;
		db	'I^ll call this  '
		db	'^I Was Very     '
		db	'Afraid.^ Smile!'
		db	WED
;
M1F7;	after exchange talk to mermaid
;
	DB	'An artist once  '
	DB	'asked me to pose'
	DB	'for him, and he '
	DB	'wanted a scale, '
	DB	'too...  Can the '
	DB	'legend of the   '
	DB	'Magnifying Lens '
	DB	'be true...?'
	DB	WED

;
M1F8;
		db	'Hi there! It^s  '
		db	'me, the photo-  '
		db	'grapher! You say'
		db	'Zora is in the  '
		db	'house? I HAVE to'
		db	'take a picture  '
		db	'of that. I^ll   '
		db	'call it ^I Found'
		db	'Zora.^'
		db	WED
;
M1F9;	PLACARD, in front of Richard's house
;
	DB	'Richard^s Villa '
	DB	WED
;
M1FA;   
;
	DB	'Kanalet Castle  '
	DB	'10 Min. ',XR,' ',XU
	DB	WED
;
M1FB;
;       
	DB	'Kanalet Castle  '
	DB	'5 Min. ',XR
	DB	WED
;
M1FC;
;
	DB	'Kanalet Castle  '
	DB	'50 Paces ',XU
	DB	WED
;
M1FD;	Phone in Ulrira's house
;
	DB	'^BRRING! BRRING!'
	DB	' BRRING! CLICK! ' 
	DB	'Yeees!  It^s the'
	DB	'Bucket Mouse!   '
	DB	'Thanks for call-'
	DB	'ing! ...Well... '
	DB	'CLICK!^  ??? ...'
	DB	'You must have   '
	DB	'dialed a wrong  '
	DB	'number...'
	DB	WED
;
M1FE;	When you catch a fish with a piece of heart
;
	DB	'Oh!  It^s a big '
	DB	'one!  And it has'
	DB	'a Piece of      '
	DB	'Heart, too!  You'
	DB	'get a 20 Rupee  '
	DB	'prize on top of '
	DB	'that! Try again?'
	DB	'    Yes  No' 
	DB	WE2
;
M1FF;	If you complete a heart container w/ fish piece of heart
;
	DB	'Oh!  It^s a big '
	DB	'one!  And it has'
	DB	'a Piece of      '
	DB	'Heart, too!  You'
	DB	'have completed  '
	DB	'another Heart   '
	DB	'Container!  On  '
	DB	'top of that, you'
	DB	'get a 20 Rupee  '
	DB	'prize! Want to  '
	DB	'try again?      '
	DB	'    Yes  No'
	Db	WE2
;
M200;	LIBRARY, Books
;
	DB	' ^How To Handle '   
	DB	'   Your Shield  '
	DB	'   Like A Pro!^ '
	DB	'Read this book? '
	DB	'    YES  NO'
	DB	WE2
;
M201;	200 = read
;
	DB	'^If you hold the'
	DB	'Button down, you'
	DB	'can defend your-'
	DB	'self from enemy '
	DB	'attacks, and you'
	DB	'can flip some   '
	DB	'enemies, too... '
	DB	'Besides the     '
	DB	'standard shield '
	DB	'there is also a '
	DB	'mirrored variety'
	DB	'which can defend'
	DB	'against beams!^'
	DB	WED
;
M202;
;
	DB	' ^Selecting The '
	DB	'   Item That^s  '
	DB	'  Right For You^' 
	DB	'Read this book? '
	DB	'    YES  NO'
	DB	WE2
;
M203;	if 202 = read
;
	DB	'^You can select '
	DB	'your favorite   '
	DB	'item for the A  '
	DB	'and B Buttons on'
	DB	'the Sub-Screen. '
	DB	'Using different '
	DB	'items, you can  '
	DB	'fight without a '
	DB	'sword!  Try many'
	DB	'different things'
	DB	'to find what^s  '
	DB	'right for you!^'
	DB	WED
;
M204;  
;       
	DB	' ^Auto Map and  '  
	DB	'Memo Guide Book^'
	DB	'Read this book? '
	DB	'    YES  NO'
	DB	WE2
;
M205;	if 204 = yes
;
	DB	'^You can see an '
	DB	'island map by   '
	DB	'pressing the    '
	DB	'SELECT Button.  '
	DB	'The dark parts  '
	DB	'of the map are  '
	DB	'places you have '
	DB	'not yet visited.'
	DB	'Move the cursor '
	DB	'and press the A '
	DB	'Button to get   '
	DB	'more information'
	DB	'about an area,  '
	DB	'or to replay the'
	DB	'message you got '
	DB	'there...^  Ahhh!'
	DB	'How convenient!'
	DB	WED
;
M206;
;
	DB	' ^Secrets Of The'
	DB	' Whirling Blade^'  
	DB	'Read this book? '
	DB	'    YES  NO'
	DB	WE2
;
M207;	206 = Read
;
	DB	'^The Whirling   '
	DB	'Blade technique '
	DB	'has been handed '
	DB	'down from gener-'
	DB	'ation to gener- '
	DB	'ation by the    '
	DB	'family of the   '
	DB	'hero. To use it,'
	DB	'hold down the   '
	DB	'Sword Button and'
	DB	'build up your   '
	DB	'power.  When you'
	DB	'have enough, you'
	DB	'can release the '
	DB	'Button!  Can you'
	DB	'master this?^'
	DB	WED
;
M208;
;
	DB	'^The Properties '
	DB	'  Of Warp Holes^'
	DB	'Read this book? '
	DB	'    YES  NO'
	DB	WE2
;
M209;
;
	DB	'^There are some '
	DB	'Warp Holes on   '
	DB	'Koholint Island.'
	DB	'You can warp to '
	DB	'and fro using   '
	DB	'these holes.  If'
	DB	'you jump into   '
	DB	'the Warp Hole   '
	DB	'at which you    '
	DB	'arrived, you    '
	DB	'will go to the  '
	DB	'next one in the '
	DB	'sequence.  You  '
	DB	'can only warp to'
	DB	'a hole you have '
	DB	'seen with your  '
	DB	'own eyes...^'
	DB	WED
;
M20A;
;
	DB	'^Fun With Bombs^'
	DB	'Read this book? '
	DB	'    YES  NO'
	DB	WE2
;
M20B;	if 20A is yes
;
	DB	'^After you put a'
	DB	'Bomb down, you  '
	DB	'can pick it up  '
	DB	'by pressing the '
	DB	'Button again.   '
	DB	'You can then    '
	DB	'throw it by     '
	DB	'pushing the     '
	DB	'Button one more '
	DB	'time.  Did you  '
	DB	'know that?^'
	DB	WED
;
M20C;	Map of Island in Library
;
	DB	'   ^Atlas Of    '
	DB	'Koholint Island^'
	DB	'You can move the'
	DB	'cursor and look '
	DB	'up the name of a'
	DB	'place...  Do you'
	DB	'want to look at '
	DB	'this map?       '
	DB	'    Look Don^t'
	DB	WE2
;
M20D;
;
	DB	' ^Dark Secrets  '   
	DB	'  And Mysteries '
	DB	'   Of Koholint^ '
	DB	'Do you really   '
	DB	'want to read it?'
	DB	'    YES  NO'
	DB	WE2
;
M20E;	if 20D is yes
;
	DB	'Gasp! Wha-What^s'
	DB	'this! ... ...   '
	DB	'You can^t read  '
	DB	'the tiny print  '
	DB	'without the aid '
	DB	'of a magnifying '
	DB	'glass...'
	DB	WED
;
M20F;	not used
;
;		GHOST OPTION
;
M210;	first ghost message
	DB	'...my grave...  '
	DB	'...take me...   '
	DB	'...my grave...'
;
;	DB	' ...cemetery... '
;	DB	' ...take me...  '
;	DB	' ...my grave...'
	DB	WED
;
M211;	second ghost message
;
	DB	'...the house... '
	DB	' ...take me...  '
	DB	'...the house... '
	DB	'...at the bay...'
	DB	WED
;
M212;	when you try to enter a dungeon
;
	DB	'...N-N-No!...   '
	DB	'...N-not there!'
	DB	WED
;
M213;	Near the house
;
	DB	'   ...Here!...  '
	DB	'   ...enter...  '
	DB	' ...my house...'
	DB	WED
;
M214;	In the house
;
	DB	' ...Nostalgia...'
	DB	' ...unchanged...'
	DB	' ...boo hoo...'
	DB	WED
;
M215;	in the house 2
;
	DB	'  ...Enough...  '
	DB	' ...cemetery... '
	DB	'  ...take me... '
	DB	' ...my grave...'
	DB	WED
;
M216;	Parting with ghost
;
	DB	'...Thank you... '
	DB	' ...a jar...    '
	DB	'...in my home...'
	DB	'...look inside..'
	DB	'...bye...bye...'
	DB	WED
;
M217;	Last dungeon instructions #1, L,L,U,R,R,U,L,U
;
	DB	'Round and round,'
	DB	'the passageways '
	DB	'of the Egg...   '
	DB	XL,' ',XL,' ',XU,' ',XR,' ',XR,' ',XU,' ',XL,' ',XU,' '
	DB	'??  ...Hmmmmmm, '
	DB	'this book reeks '
	DB	'of secrets...'
	DB	WED
;
M218;	Last dungeon pattern #2, R,U,U,R,U,U,R,U
;
	DB	'Round and round,'
	DB	'the passageways '
	DB	'of the Egg...   '
	DB	XR,' ',XU,' ',XU,' ',XR,' ',XU,' ',XU,' ',XR,' ',XU,' '
	DB	'??  ...Hmmmmmm, '
	DB	'this book reeks '
	DB	'of secrets...'
	DB	WED
;
M219;	Last dungeon pattern #3, L,U,R,U,L,U,R,U
;
	DB	'Round and round,'
	DB	'the passageways '
	DB	'of the Egg...   '
	DB	XL,' ',XU,' ',XR,' ',XU,' ',XL,' ',XU,' ',XR,' ',XU,' '
	DB	'??  ...Hmmmmmm, '
	DB	'this book reeks '
	DB	'of secrets...'
	DB	WED


M21A;	Last dungeon pattern #4, R,R,R,R,U,U,U,U
;
	DB	'Round and round,'
	DB	'the passageways '
	DB	'of the Egg...   '
	DB	XR,' ',XR,' ',XR,' ',XR,' ',XU,' ',XU,' ',XU,' ',XU,' '
	DB	'??  ...Hmmmmmm, '
	DB	'this book reeks '
	DB	'of secrets...'
	DB	WED
;
M21B;	MARIN OPTION  when in dungeon more than 5 min
;
	DB	'...You^re late! '
	DB	'I thought you^d '
	DB	'never come back!'
	DB	WED
;
M21C;	when you return with hearts almost gone
;
	DB	'...EEEK!  You^re'
	DB	'hurt!  Arrrgh!  '
	DB	'Don^t be so     '
	DB	'reckless!'
	DB	WED
;
M21D;	when you return okay
;
	DB	'#####! You^re   '
	DB	'back!  Are you  '
	DB	'hurt?'
	DB	WED
;
M21E;	randomly if Link is injured
;
	DB	'...You idiot!   '
	DB	'I told you this '
	DB	'would happen... '
	DB	'Eh?!  What?  I  '
	DB	'didn^t say any- '
	DB	'thing, really!'
	DB	WED
;
M21F;	no used
;
M220;	After you finish the first dungeon, two kids
;
	DB	'Hey buddy!  It^s'
	DB	'serious!  Yeah, '
	DB	'really serious!!'
	DB	'Yeah, it is!    '
	DB	'The Moblins came'
	DB	'to the village! '
	DB	'Yeah, that^s    '
	DB	'right!  A whole '
	DB	'gang of Moblins!'
	DB	'Then... It^s for'
	DB	'real!  They all '
	DB	'went to the     '
	DB	'house...  Yeah, '
	DB	'that house, and '
	DB	'then they did   '
	DB	'something at Bow'
	DB	'Wow^s house!!   '
	DB	'It was a really '
	DB	'bad scene, with '
	DB	'the M-m-moblins!'
	DB	'So, I mean, ahh!'
	DB	'... ... ... ... '
	DB	'... ... ... ... '
	DB	'It might be     '
	DB	'faster to find  '
	DB	'out for yourself'
	DB	'what happened!'
	DB	WED
;
M221;	BOOMERANG TRADER
;
	DB	'I found a good  '
	DB	'item washed up  '
	DB	'on the beach... '
	DB	'I^ll trade it to'
	DB	'you for what you'
	DB	'have in your B  '
	DB	'Button...       '
	DB	'    Okay No'
	DB	WE2
;
M222;	when 221 = yes
;
	DB	'Okay, let^s do  '
	DB	'it!  When you   '
	DB	'don^t want the  '
	DB	'Boomerang any   '
	DB	'more, come back!'
	DB	WED
;
M223;	when 223 = no
;
	DB	'Oh, yeah, uh... '
	DB	'okay, whatever.'
	DB	WED
;
M224;	computer after exchange
;
	DB	'You got the     '
	DB	'Boomerang in    '
	DB	'exchange for the'
	DB	'item you had.'
	DB	WED
;
M225;	when you come back with the boomerang
;
	DB	'Give me back the'
	DB	'Boomerang, I beg'
	DB	'you! I^ll return'
	DB	'the item you    '
	DB	'gave to me!     '
	DB	'    Okay Not Now'
	DB	WE2
;
M226;	After exchanging back
;
	DB	'The item came   '
	DB	'back to you. You'
	DB	'returned the    '
	DB	'Boomerang.'
	DB	WED
;
M227;	if the player tries to trade sword or shield
;
	DB	'Ah... Don^t give'
	DB	'me that item... '
	DB	'How about some- '
	DB	'thing else?'
	DB	WED
;
M228;
		db	'^BRRING! BRRING!'
		db	'Ya, it^s Ulrira!'
		db	'You haven^t     '
		db	'found the 5     '
		db	'Golden Leaves?  '
		db	'Keep an eye on  '
		db	'the ones you    '
		db	'have. Someone   '
		db	'might try and   '
		db	'take ^em! Bye!  '
		db	'CLICK!^'
		db	WED
;
M229;
		db	'^BRRING! BRRING!'
		db	'Ya, it^s Ulrira!'
		db	'You haven^t     '
		db	'found the 5     '
		db	'Golden Leaves?  '
		db	'Try bombing sus-'
		db	'picious places. '
		db	'Hope that helps.'
		db	'Bye!            '
		db	'CLICK!^'
		db	WED
;
M22A;
		db	'^BRRING! BRRING!'
		db	'Ya, it^s Ulrira!'
		db	'You haven^t     '
		db	'found the 5     '
		db	'Golden Leaves?  '
		db	'Go scare that   '
		db	'crow by the     '
		db	'castle and see  '
		db	'if that helps!  '
		db	'Bye!            '
		db	'CLICK!^'
		db	WED
;
M22B;
		db	'^The Travels of '
		db	'#####^ Do you   '
		db	'want to look at '
		db	'your album?     '
		db	'    Look Don^t'
		db	WE2
;
M22C;
		db	'Which picture   '
		db	'would you like  '
		db	'to see? Use ',MK8,' to'
		db	'select, then    '
		db	'press the A     '
		db	'Button!'
		db	WED
;
M22D;
		db	'You are near the'
		db	'Eagle^s Tower.  '
		db	'Beware of the   '
		db	'bird!'
		db	WED
;
M22E;
		db	'Hi, #####. You  '
		db	'know I love to  '
		db	'take pictures.  '
		db	'Wouldn^t this   '
		db	'old castle make '
		db	'a great photo?'
		db	WED
;
M22F;/
;
M230;	Tale's Keyhole
;
	DB	'Hunh?  A keyhole'
	DB	'here?  It says, '
	DB	'^Tale Keyhole^'
	DB	WED
;
M231
;
	DB	'Hunh?  A keyhole'
	DB	'here?  It says, '
	DB	'^Slime Keyhole^'
	DB	WED
;
M232        
;
	DB	'Hunh?  A keyhole'
	DB	'here?  It says, '
	DB	'^Angler Keyhole^'
	DB	WED
;
M233
;
	DB	'Hunh?  A keyhole'
	DB	'here?  It says, '
	DB	'^Bird Keyhole^'
	DB	WED
;
M234
;
	DB	'Hunh?  A keyhole'
	DB	'here?  It says, '
	DB	'^Face Keyhole^'
	DB	WED
;
M235;	MARIN at suspension bridge
;
	DB	'Somebody, HELP!'
	DB	WED
;
M236;	She sees player
;
	DB	'Hey!  #####!    '
	DB	'Some monsters   '
	DB	'put me up here! '
	DB	'What should I   '
	DB	'do?!  I^m afraid'
	DB	'of heights!!'
	DB	WED
;
M237;	When Link rescues her
;
	DB	'Yow!  That was a'
	DB	'surprise! #####,'
	DB	'thank you!'
	DB	WED
;
M238;	continued
;
	DB	'... ... ... ... '
	DB	'... ... ... ... '
	DB	'Say... #####... '
	DB	WED
;
M239;	continued
;
	DB	'Uhh... I don^t  '
	DB	'know how to say '
	DB	'this... but...'
	DB	WED
;
M23A;	Tarin suddenly appears.
;
	DB	'Hunh?!  Tarin??!'
	DB	'... ... ... ... '
	DB	'Uh... Nevermind,'
	DB	'I... I gotta go!'
	DB	WED
;
M23B;	Tarin calling for Marin
;
	DB	'MAAAAAAARINNNN!!'
	DB	WED
;
M23C;
		db	'Nothing yet?! I '
		db	'grow tired of   '
		db	'waiting. I want '
		db	'those Golden    '
		db	'Leaves delivered'
		db	'soon!           '
		db	'Courage like    '
		db	'this deserves a '
		db	'photo, don^t you'
		db	'think?'
		db	WED
;
M23D;
		db	'Hey, Marin and  '
		db	'#####! Are you  '
		db	'taking pictures?'
		db	'You should take '
		db	'pictures of     '
		db	'everyone,       '
		db	'including me.'
		db	WED
;
M23E;
		db	'I use this to   '
		db	'take pictures.  '
		db	'Are you ready?  '
		db	'Say ^mushroom!^'
		db	WED
;
M23F;
		db	'OK, I^m done.   '
		db	'I^ll go home    '
		db	'now.'
		DB	WED
;
M240;	MORE ULRIRA OLD PAL, Waterfall hint
;
	DB	'^BRRING! BRRING!'
	DB	'This is Ulrira! '
	DB	'Oh, I heard from'
	DB	'grandma that    '
	DB	'there is some-  '
	DB	'thing hidden    '
	DB	'behind the falls'
	DB	'in the Tal Tal  ' 
	DB	'Mountains.  Does'
	DB	'that help?  Bye!'
	DB	'CLICK!^'
	DB	WED
;
M241;	Ulrira about tower
;
	DB	'^BRRING! BRRING!'
	DB	'Ulrira here...  '
	DB	'Yes, when I was '
	DB	'just a lad, I   '
	DB	'recall seeing a '
	DB	'high tower in   '
	DB	'the mountains!  '
	DB	'You should go   '
	DB	'there!  Is that '
	DB	'helpful for you?'
	DB	'Bye! CLICK!^'
	DB	WED
;
M242;	Holy Egg
;
	DB	'^BRRING! BRRING!'
	DB	'Hello, this is  '
	DB	'Ulrira speaking!'
	DB	'#####, it^s time'
	DB	'for you to face '
	DB	'the Egg on Mt.  '
	DB	'Tamaranch!  Be  '
	DB	'careful, #####! '
	DB	'Bye!  CLICK!^'
	DB	WED
;
M243;	Ulrira on the passageway in the egg
;
	DB	'^BRRING! BRRING!'
	DB	'This is Ulrira! '
	DB	'You^re lost in  '
	DB	'the Egg?  Hmmmm.'
	DB	'No sir, I can^t '
	DB	'help you on that'
	DB	'one.  How about '
	DB	'the library?    '
	DB	'And hey, don^t  '
	DB	'stop calling me '
	DB	'because I didn^t'
	DB	'know one little '
	DB	'answer!  CLICK!^'
	DB	WED
;
M244;	Ulrira about Wanwan
;
	DB	'^BRRING! BRRING!'
	DB	'Ulrira at your  '
	DB	'service!  Oh?   '
	DB	'You should take '
	DB	'BowWow home now,'
	DB	'Madam MeowMeow  '
	DB	'would appreciate'
	DB	'it! Bye! CLICK!^'
	DB	WED
;
M245;	Ulrira about the frog
;
	DB	'^BRRING! BRRING!'
	DB	'Yeah, this is   '
	DB	'Ulrira!  You are'
	DB	'starting to like'
	DB	'music, eh?      '
	DB	'Well, a frog    '
	DB	'named Mamu, who '
	DB	'lives in the    '
	DB	'Signpost Maze,  '
	DB	'might know some '
	DB	'new songs, but  '
	DB	'he charges a lot'
	DB	'to play them!   '
	DB	'Bye!  CLICK!^'
	DB	WED
;
M246;	Ulrira Hen house
;
	DB	'^BRRING! BRRING!'
	DB	'Hi, it^s Ulrira!'
	DB	'You are doing   '
	DB	'great!  Your    '
	DB	'efforts will end'
	DB	'soon... By the  '
	DB	'way, have you   '
	DB	'visited the Hen '
	DB	'House on the    '
	DB	'mountain?  There'
	DB	'is a cave nearby'
	DB	'with something  '
	DB	'important in it.'
	DB	'Bye!  CLICK!^'
	DB	WED
;
M247;	Ulrira, seashells
;
	DB	'^BRRING! BRRING!'
	DB	'Ulrira speaking!'
	DB	'Are your enemies'
	DB	'too strong for  '
	DB	'you?  In that   '
	DB	'case, you better'
	DB	'collect all the '
	DB	'Seashells...Just'
	DB	'believe in your-'
	DB	'self and do your'
	DB	'best!  CLICK!^'
	DB	WED
;
M248;	Ulrira, last
;
	DB	'^BRRING! BRRING!'
	DB	'Ulrira here! ...'
	DB	'Go for it!      '
	DB	'You^re almost   '
	DB	'there! I^m pull-' 
	DB	'ing for you!    '
	DB	'Bye!  CLICK!^'
	DB	WED
;
M249;
;;;11/04		db	'Courage like    '
;;;11/04		db	'this deserves a '
;;;11/04		db	'photo, don^t you'
;;;11/04		db	'think? Go ahead '
;;;11/04		db	'and take a      '
;;;11/04		db	'picture of me.  '
;;;11/04		db	'Any angle you   '
;;;11/04		db	'like!'
		db	'Go ahead and    '
		db	'take a picture  '
		db	'of me. Any angle'
		db	'you like!'
		db	WED
;
M24A;	Little animal kids Rabbits #1  Before Marin
;
	DB	'Yarna Desert?   '
	DB	'There^s a way to'
	DB	'get there to the'
	DB	'south, but you  '
	DB	'might not be    '
	DB	'able to get     '
	DB	'through if that '
	DB	'lazy walrus is  '
	DB	'in the way!'
	DB	WED
;
M24B;	bored little rabbit
;
	DB	'Ahhh... Sigh... '
	DB	'On such a nice  '
	DB	'day, we need a  '
	DB	'song from Marin!'
	DB	WED
;
M24C;
;
	DB	'Hey! Did ya know'
	DB	'Animal Village  '
	DB	'and Mabe Village'
	DB	'are sister      '
	DB	'cities?  Yes,   '
	DB	'even though they'
	DB	'aren^t large    '
	DB	'enough to be    '
	DB	'called cities...'
	DB	'Anyway, I heard '
	DB	'from a very good'
	DB	'source that they'
	DB	'have a Dream    '
	DB	'Shrine in Mabe, '
;
	DB	'and that it has '
	DB	'something good  '
;;	DB	'and that XXX is ' 
;
	DB      'inside...  Is   '
	DB	'that true?'
	DB	WED
;
M24D;	rabbit kid
;
		db	'I can^t go to   '
		db	'Mabe Village    '
		db	'because of all  '
		db	'the monsters.   '
		db	'I hope Marin    '
		db	'is all right.'
		db	WED
;
;;;;;;;;	DB	'Lately there    '
;;;;;;;;	DB	'have been a lot '
;;;;;;;;	DB	'of monsters in  '
;;;;;;;;	DB	'the area, so we '
;;;;;;;;	DB	'can^t go to Mabe'
;;;;;;;;	DB	'Village...  I   '
;;;;;;;;	DB	'wonder how Marin'
;;;;;;;;	DB	'is doing?'  
;;;;;;;;	DB	WED
;
;======================================================================
BANK9		group	009
;
;======================================================================
M24E;	rabbit kid
;
	DB	'Have you heard  '
	DB	'of the Flying   '
	DB	'Rooster?  They  '
	DB	'say it lived in '
	DB	'Mabe Village a  '
	DB	'long time ago...'
	DB	'I wonder if it^s'
	DB	'true...'
	DB	WED
;
M24F;	rabbit
;
	DB	'Aaaah, Little   '
	DB	'Marin... I want '
	DB	'her to come back'
	DB	'again...Her song'
	DB	'is the best...'
	DB	WED
;
M250;	rabbit
;
	DB	'I dreamed that  '
	DB	'I turned into a '
	DB	'carrot last     '
	DB	'night...  What  '
	DB	'an odd dream...'
	DB	WED
;
M251;	rabbit
;
	DB	'Eh?  How can an '
	DB	'animal talk?    '
	DB	'How?  Hey, I^m  '
	DB	'just a rabbit,  '
	DB	'so I don^t know!'
	DB	WED
;
M252;	When you have Marin, all rabbits say:
;
	DB	'Ahhh!  It^s her!'
	DB	'Little Marin!!'
	DB	WED
;
M253;
		db	'If you have no  '
		db	'courage,then    '
		db	'you have no     '
		db	'strength.       '
		db	'Gravestones     '
		db	'won^t move for  '
		db	'cowards.'
		db	WED
;
M254;
		db	'I^m not afraid. '
		db	'I just decided  '
		db	'to wait at home.'
		db	WED
;
M255;
		db	'This is my first'
		db	'walk with you,  '
		db	'#####.'
		db	WED
;
M256;
		db	'. . . . .'
		db	WED
;
M257;
		db	'This cliff will '
		db	'be our secret   '
		db	'place. '
		db	WED
;
M258;
		db	'Aren^t you going'
		db	'to say anything?'
		db	WED
;
M259;
		db	'Oh how I love   '
		db	'pictures! Why   '
		db	'don^t you take  '
		db	'a picture when  '
		db	'no one is       '
		db	'around? You can '
		db	'call it . . .'
		db	WED
;
M25A;
		db	'You^ve got the  '
		db	'Blue Clothes!   '
		db	'Your damage will'
		db	'be reduced by   '
		db	'half!'
		db	WED
;
M25B;
		db	'You^ve got the  '
		db	'Red Clothes!    '
		db	'Your body is    '
		db	'full of energy! '
		db	WED
;
M25C;
		db	'Red for offense,'
		db	'blue for        '
		db	'defense. Which  '
		db	'do you choose?  '
		db	'    RED  BLUE'
		db	WE2
;
M25D;
		db	'Are you sure?   '
		db	'    YES  NO'
		db	WE2
;
M25E;
		db	'The fairy queen '
		db	'is waiting for  '
		db	'you.'
		db	WED
;
M25F;
		db	'Do you have the '
		db	'powder? If not, '
		db	'you must go     '
		db	'back.'
		db	WED
;
M260;
		db	'Our colors are  '
		db	'never the same! '
		db	'If I am red, he '
		db	'is blue! If he  '
		db	'is red, I am    '
		db	'blue! What color'
		db	'is my cloth?    '
		db	'    Red  Blue'
		db	WE2
;
M261;
		db	'BOO! I am no    '
		db	'weakling! Your  '
		db	'pitiful sword is'
		db	'no match for me!'
		db	WED
;
M262;
		db	'I am sorry, but '
		db	'this is the     '
		db	'Color Dungeon.  '
		db	'Only those with '
		db	'the power of    '
		db	'color may enter.'
		db	'If you can tell '
		db	'who wears red   '
		db	'and who wears   '
		db	'blue, you may   '
		db	'enter.          '
		db	'Farewell.'
		db	WED
;
M263;
		db	'Here is your    '
		db	'clue. Make      '
		db	'all the red     '
		db	'blue.'
		db	WED
;
M264;
		db	'No,  no. Take a '
		db	'closer look and '
		db	'try again.'
		db	WED
;
M265;
		db	'Don^t tell      '
		db	'anyone.'
		db	WED
;
M266;
		db	'Do you want to  '
		db	'read this book? '
		db	'    YES  NO'
		db	WE2
;
M267;
		db	'New world of    '
		db	'color under the '
		db	'5 gravestones.  '
		db	'                '
		db	'   3',XU,'  4',XR,'  5',XU,'   '
		db	'   2',XL,'  1',XD,'       '
		db	'Try with all    '
		db	'your might. Open'
		db	'a new path!     '
		db	'Whoever is      '
		db	'worthy receives '
		db	'the power of    '
		db	'color. I wonder '
		db	'what the world  '
		db	'of color is?'
		db	WED
;
M268;
		db	'Welcome, #####. '
		db	'I admire you for'
		db	'coming this far.'
		db	'I will give you '
		db	'the power of    '
		db	'color. If you   '
		db	'want offense,   '
		db	'choose red. If  '
		db	'you want defense'
		db	'choose blue.    '
		db	'Which power do  '
		db	'you want?       '
		db	'    RED  BLUE'
		db	WE2
;
M269;
		db	'You fool! Your  '
		db	'sword won^t     '
		db	'work! Try       '
		db	'something else!'
		db	WED
;
M26A;
		db	'What a greedy   '
		db	'fool! You want  '
		db	'more power?! A  '
		db	'buffoon like you'
		db	'might as well   '
		db	'give up and     '
		db	'go home!'
		db	WED
;
M26B;
		db	'Relax and close '
		db	'your eyes.'
		db	WED
;
M26C;
		db	'I will now take '
		db	'you out.'
		db	WED
;
M26D;
		db	'Blue is safe.   '
		db	'Yellow is       '
		db	'caution. Red is '
		db	'danger.'
		db	WED
;
M26E;
		db	'Yellow is       '
		db	'caution. Red is '
		db	'danger,Take     '
		db	'your time.'
		db	WED
;
M26F;
		db	'Blue. Start     '
		db	'over. Yellow is '
		db	'caution. Red is '
		db	'danger.'
		db	WED
;
M270;
		db	'Hey, that looks '
		db	'great! I^ll call'
		db	'it ^##### Plays '
		db	'With BowWow!^   '
		db	'Now get closer  '
		db	'to BowWow!'
		db	WED
;
M271;
		db	'Grrrr!'
		db	WED
;
M272;
		db	'#####, get      '
		db	'closer!'
		db	WED
;
M273;
		db	'Grrrr! Grrrr!!'
		db	WED
;
M274;
		db	'Much closer! OK,'
		db	'I^m ready.      '
		db	'Smile!'
		db	WED
;
M275;
		db	'Grrrr! Grrrr!!  '
		db	'GRRRR!'
		db WED
;
;;;;;;;;;======================================================================
;;;;;;;;BANK9	GROUP	$09
;;;;;;;;;;;;;;;;	ORG	$7D00
;;;;;;;;;======================================================================
M276;	MARIN OPTION  sometimes when you hit chicken
;
	DB	'Ha ha ha! Do it!'
	DB	'Do it!  Do it   '
	DB	'moooore! ... ...'
	DB	'Hunh?  No, it^s '
	DB	'nothing... I    '
	DB	'didn^t mean it.'
	DB	WED
;
M277;	MARIN OPTION when you try Ocarina w/o learning song
;
	DB	'Not very good...'
	DB	'Eh?  What?  Did '
	DB	'I say something?'
	DB	'No, you^re hear-'
	DB	'ing things...'
	DB	WED
;
M278;	When you open drawers with Marin Option
;
	DB	'#####, do you   '
	DB	'always look in  '
	DB	'other people^s  '
	DB	'drawers?'
	DB	WED
;
M279;	When you dig with Marin
;
	DB	'Great!  Dig it! '
	DB	'Dig it!  Dig to '
	DB	'the center of   '
	DB	'the earth!!'
	DB	WED
;
M27A;	When you jump in a hole with Marin Option (get out of way)
;
	DB	'Whew!  What a   '
	DB	'surprise!'
	DB	WED
;
M27B;	If you don't get out of the way
;
	DB	'Ohh!  I^m sorry!'
	DB	'Are you okay?!  '
	DB	'#####?'
	DB	WED
;
M27C;	Tony Harman
;
	DB	'Hey Mon!'
	DB	WED
;
M27D;
	DB	'You know me, I  '
	DB	'like short names'
	DB	'the best...' 
	DB	WED
;
M27E;
;
	DB	'It can display  '
	DB	'millions of     '
	DB	'polygons!'
	DB	WED
;
M27F;
;
	DB	'I definitely    '
	DB	'need it, as soon'
	DB	'as possible!'
	DB	WED
;
M280;	#1
;
	DB	'Turn aside the  '
	DB	'spined ones with'
	DB	'a shield...'
	DB	WED
;
M281;	#2
	DB	'First, defeat   '
	DB	'the imprisoned  '
	DB	'Pols Voice,     '
	DB	'Last, Stalfos...'
	DB	WED
;
;	DB	'First Pols Voice'
;	DB	'Last Stalfos... '
	DB	WED
;
M282;	#3
;
	DB	'Far away...     '
	DB	'Do not fear,    '
	DB	'dash and fly!'
	DB	WED
;
M283;	#4
;
	DB	'The glint of the'
	DB	'tile will be    '
	DB	'your guide...'
	DB	WED
;
M284;	#5
;
	DB	'Dive under where'
	DB	'torchlight beams'
	DB	'do cross...'
	DB	WED
;
M285;	#6
;
	DB	'Enter the space '
	DB	'where the eyes  '
	DB	'have walls...'
	DB	WED
;
M286;	#7 
;
	DB	'The riddle is   '
	DB	'solved when the '
	DB	'pillars fall!'
	DB	WED
;
M287;	#8
;
	DB	'Fill all the    '
	DB	'holes with the  '
	DB	'rock that rolls,'
	DB	'this (',MK8,') is the '
	DB	'key!'
	DB	WED
;
M288
		db	'If there is a   '
		db	'door that you   '
		db	'can^t open, move'
		db	'a stone block.'
		db	WED
;
M289
		db	'Make every block'
		db	'design the same.'
		db	'A new path will '
		db	'open.'
		db	WED
;
M28A
		db	'Part of the     '
		db	'floor is raised.'
		db	'Tap the blue    '
		db	'crystal.'
		db	WED
;
M28B
		db	'To defeat the   '
		db	'black monster   '
		db	'with the hard   '
		db	'shell, feed him '
		db	'something ex-   '
		db	'plosive.'
		db	WED
;
;;;;;;;;		db	'If a rock with a'
;;;;;;;;		db	'face is blocking'
;;;;;;;;		db	'your way, use   '
;;;;;;;;		db	'your Pegasus    '
;;;;;;;;		db	'Boots.          '
;;;;;;;;		db	'Don^t be afraid.'
;;;;;;;;		db	WED
;
M28C
		db	'Poke suspicious '
		db	'parts of the    '
		db	'wall with your  '
		db	'sword and listen'
		db	'to the sounds it'
		db	'makes.'
		db	WED
;
M28D
		db	'If you can^t    '
		db	'destroy a       '
		db	'skeleton with   '
		db	'your sword, try '
		db	'using a bomb.'
		db	WED
;
M28E
		db	'To open a       '
		db	'treasure chest, '
		db	'use the pots    '
		db	'around it.'
		db	WED
;
M28F
		db	'Hop on top of   '
		db	'the crystals to '
		db	'move forward.'
		db	WED
;
M290
		db	'If you can^t go '
		db	'over the poles, '
		db	'try throwing    '
		db	'things you have '
		db	'in your hands.'
		db	WED
;
M291
		db	'Jump off the    '
		db	'floor above to  '
		db	'reach the chest '
		db	'on the table.'
		db	WED
;
M292
		db	'To defeat the   '
		db	'monsters who    '
		db	'hold the key,   '
		db	'attack them from'
		db	'a higher place.'
		db	WED
;
M293
		db	'If the statue   '
		db	'looks strange,  '
		db	'shoot it with   '
		db	'the bow.'
		db	WED
;
M294;	�ʐ^����b�i�������̂Ƃ��F�ʐ^���P���j�b�g���߂Â��j
		db	'Let^s take a    '
		db	'picture!        '
		db	'    YES  NO'
		db	WE2
;
M295
		db	'No picture?! Are'
		db	'you pullin^ my  '
		db	'leg?            '
		db	'    Yes  No way'
		db	WE2
;
M296
		db	'What a bummer!'
		db	WED
;
M297
		db	'Beautiful! I^ll '
		db	'call this ^Game '
		db	'Over.^'
		db	WED
;
M298
		db	'What^s your     '
		db	'name, young man?'
		db	'#####? Well     '
		db	'here^s your     '
		db	'album, #####.   '
		db	'Give it a look  '
		db	'before you      '
		db	'leave!'
		db	WED
;
M299
		db	'Let^s see if we '
		db	'can fill that   '
		db	'album!'
		db	WED
;
M29A
		db	'11 shots left!  '
		db	'What kind of    '
		db	'picture should  '
		db	'I take?'
		db	WED
;
M29B
		db	'10 shots left!  '
		db	'What kind of    '
		db	'picture should  '
		db	'I take?'
		db	WED
;
M29C
		db	'9 shots left!   '
		db	'What kind of    '
		db	'picture should  '
		db	'I take?'
		db	WED
;
M29D
		db	'8 shots left!   '
		db	'What kind of    '
		db	'picture should  '
		db	'I take?'
		db	WED
;
M29E
		db	'7 shots left!   '
		db	'What kind of    '
		db	'picture should  '
		db	'I take?'
		db	WED
;
M29F
		db	'6 shots left!   '
		db	'What kind of    '
		db	'picture should  '
		db	'I take?'
		db	WED
;
;
;;;;;;;;;====================================================================
;;;;;;;;BANK3F		group	03fh
;;;;;;;;		org	04000h
;;;;;;;;;====================================================================
M2A0
		db	'5 shots left!   '
		db	'What kind of    '
		db	'picture should  '
		db	'I take?'
		db	WED
;
M2A1
		db	'4 shots left!   '
		db	'What kind of    '
		db	'picture should  '
		db	'I take?'
		db	WED
;
M2A2
		db	'3 shots left!   '
		db	'What kind of    '
		db	'picture should  '
		db	'I take?'
		db	WED
;
M2A3
		db	'2 shots left!   '
		db	'What kind of    '
		db	'picture should  '
		db	'I take?'
		db	WED
;
M2A4
		db	'1 shots left!   '
		db	'What kind of    '
		db	'picture should  '
		db	'I take?'
		db	WED
;
M2A5
		db	'Oh no! You^re   '
		db	'out of film!    '
		db	'Don^t forget to '
		db	'look at your    '
		db	'album!'
		db	WED
;
M2A6
		db	'Hi! I^m the     '
		db	'photographer!   '
		db	'What a great    '
		db	'photo moment!   '
		db	'I^ll call this  '
		db	'^Heads Up!^'
		db	WED
;
M2A7
		db	'Hey, this       '
		db	'represents your '
		db	'adventures      '
		db	'perfectly!'
		db	WED
;
M2A8
		db	'I^ll call this  '
		db	'one ^Close      '
		db	'Call.^ Hmm.'
		db	WED
;
M2A9
		db	'I^m too close.'
		db	WED
;
M2AA
		db	'I should back '
		db	'up.'
		db	WED
;
M2AB
		db	'Aaaaaah!'
		db	WED
;
M2AC
		db	'I^m going back  '
		db	'to the store.   '
		db	'Bye!'
		db	WED
;
M2AD
		db	'See me later,   '
		db	'when you^re     '
		db	'alone!'
		db	WED
;
M2AE
		db	'Are you sure?   '
		db	'    YES  NO'
		db	WE2
;
M2AF
		db	'Ah how I love   '
		db	'pictures. Hey,  '
		db	'#####! What are '
		db	'you doing here? '
		db	WED
;
;====================================================================
	END

