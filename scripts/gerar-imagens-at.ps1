$root = "$([Environment]::GetFolderPath('Desktop'))\antigo-testamento"

$images = @(
  # === 01-genesis ===
  @{Dir="01-genesis";File="capa.jpg";Prompt="Book of Genesis scroll with tree of life and serpent, creation of the world, cosmic light, garden of Eden, biblical art, majestic atmosphere, golden light from heaven"}
  @{Dir="01-genesis";File="cap-1.jpg";Prompt="God creating the heavens and the earth, light separating from darkness, cosmic creation scene, stars and galaxies, divine hand reaching down, majestic biblical illustration"}
  @{Dir="01-genesis";File="cap-2.jpg";Prompt="Noah ark on floodwaters, rain pouring from dark sky, animals entering the ark, rainbow appearing in distance, biblical deluge scene, dramatic lighting"}
  @{Dir="01-genesis";File="cap-3.jpg";Prompt="Abraham looking at stars in night sky, God covenant with Abraham, old patriarch with beard, tent in background, starry night, biblical faith scene"}
  @{Dir="01-genesis";File="cap-4.jpg";Prompt="Jacob wrestling with angel at night, Peniel river crossing, struggle and blessing, divine encounter, dramatic moonlight scene, biblical transformation"}
  @{Dir="01-genesis";File="cap-5.jpg";Prompt="Joseph in Egyptian royal court interpreting Pharaoh dream, governor robes, granaries of Egypt, brothers bowing before him, biblical providence scene"}

  # === 02-exodo ===
  @{Dir="02-exodo";File="capa.jpg";Prompt="Parting of the Red Sea, Moses with staff raised, walls of water on both sides, Israelites crossing on dry ground, pillar of fire behind, dramatic biblical scene"}
  @{Dir="02-exodo";File="cap-1.jpg";Prompt="Hebrew slaves building pyramids in Egypt, taskmasters with whips, harsh labor, brickmaking, ancient Egyptian setting, oppression scene, biblical captivity"}
  @{Dir="02-exodo";File="cap-2.jpg";Prompt="Moses before Pharaoh, Aaron with staff turning into serpent, Egyptian court, Nile river turning to blood, ten plagues, dramatic biblical confrontation"}
  @{Dir="02-exodo";File="cap-3.jpg";Prompt="Passover night, Hebrew family eating lamb with unleavened bread, doorposts marked with blood, angel of death passing over, dramatic biblical scene"}
  @{Dir="02-exodo";File="cap-4.jpg";Prompt="Moses receiving the Ten Commandments on Mount Sinai, tablets of stone, lightning and thunder, divine glory descending, mountain covered in cloud, biblical law scene"}
  @{Dir="02-exodo";File="cap-5.jpg";Prompt="Tabernacle in the wilderness, tent of meeting, pillar of cloud above, bronze altar and laver, priests ministering, divine presence, biblical worship scene"}

  # === 03-levitico ===
  @{Dir="03-levitico";File="capa.jpg";Prompt="Ancient altar of sacrifice, fire consuming lamb on bronze altar, smoke rising to heaven, priest in holy garments, tabernacle background, biblical sacrifice scene"}
  @{Dir="03-levitico";File="cap-1.jpg";Prompt="Israelite bringing lamb to priest at tabernacle entrance, laying hands on animal, various offerings displayed, worship scene, biblical sacrifice system"}
  @{Dir="03-levitico";File="cap-2.jpg";Prompt="High priest Aaron in full priestly garments, breastplate with twelve stones, turban with golden plate, ephod and robe, standing before tabernacle, biblical priest scene"}
  @{Dir="03-levitico";File="cap-3.jpg";Prompt="Clean and unclean animals, separation between holy and common, water purification, leprosy examination, priest inspecting skin disease, biblical purity scene"}
  @{Dir="03-levitico";File="cap-4.jpg";Prompt="Day of Atonement, high priest entering Holy of Holies, mercy seat on ark of covenant, scapegoat being sent into wilderness, solemn biblical ceremony"}
  @{Dir="03-levitico";File="cap-5.jpg";Prompt="Feast of Tabernacles celebration, Israelites in booths, religious festival, joyful worship, temple celebration, biblical feast scene, community gathering"}

  # === 04-numeros ===
  @{Dir="04-numeros";File="capa.jpg";Prompt="Israelite camp in the wilderness, twelve tribes arranged around tabernacle, tents stretching across desert, pillar of cloud above, biblical journey scene"}
  @{Dir="04-numeros";File="cap-1.jpg";Prompt="Moses and Aaron counting the people of Israel, census scene, tribal leaders presenting, wilderness camp, organization and order, biblical numbering scene"}
  @{Dir="04-numeros";File="cap-2.jpg";Prompt="Israelites wandering in desert wilderness, pillars of cloud and fire leading, people following through barren landscape, biblical exodus journey"}
  @{Dir="04-numeros";File="cap-3.jpg";Prompt="Fiery serpents among the people, Moses lifting bronze serpent on pole, Israelites looking and being healed, desert camp, divine judgment and mercy scene"}
  @{Dir="04-numeros";File="cap-4.jpg";Prompt="Balaam and the talking donkey, angel with drawn sword blocking path, Balaam on donkey, Moabite mountains in background, divine intervention scene"}
  @{Dir="04-numeros";File="cap-5.jpg";Prompt="Joshua and Caleb bringing cluster of grapes from Canaan, two spies carrying fruit, Promised Land in distance, fertile valley, biblical exploration scene"}

  # === 05-deuteronomio ===
  @{Dir="05-deuteronomio";File="capa.jpg";Prompt="Moses preaching to all Israel on plains of Moab, scroll of law in hands, people listening intently, Promised Land in distance, dramatic biblical scene"}
  @{Dir="05-deuteronomio";File="cap-1.jpg";Prompt="Moses reviewing history of Israel, elders gathered around, recounting wilderness journey, teaching the law, plains of Moab, biblical teaching scene"}
  @{Dir="05-deuteronomio";File="cap-2.jpg";Prompt="Ten Commandments on stone tablets, divine light shining on them, Mount Sinai background, law of God revealed, biblical covenant scene"}
  @{Dir="05-deuteronomio";File="cap-3.jpg";Prompt="Mount Gerizim and Mount Ebal, blessings and curses, two mountains with paths diverging, choice between obedience and rebellion, biblical decision scene"}
  @{Dir="05-deuteronomio";File="cap-4.jpg";Prompt="Shema Israel, father teaching children the word of God, family gathered in tent, scroll open, passing faith to next generation, biblical education scene"}
  @{Dir="05-deuteronomio";File="cap-5.jpg";Prompt="Moses viewing Promised Land from Mount Nebo, Pisgah summit, Joshua beside him, land of Canaan spread below, sunset, final view, biblical farewell scene"}

  # === 06-josue ===
  @{Dir="06-josue";File="capa.jpg";Prompt="Joshua leading Israel across Jordan River, priests carrying ark of covenant, waters parting, people crossing on dry ground, biblical conquest scene"}
  @{Dir="06-josue";File="cap-1.jpg";Prompt="Joshua receiving command from God, military leader kneeling, sword beside him, divine commission, strong and courageous, biblical leadership scene"}
  @{Dir="06-josue";File="cap-2.jpg";Prompt="Walls of Jericho falling, trumpets sounding, people shouting, walls crumbling to dust, ark of covenant carried around, dramatic biblical miracle scene"}
  @{Dir="06-josue";File="cap-3.jpg";Prompt="Joshua and Israelites in battle, sun standing still over Gibeon, extended daylight, military campaign, biblical conquest, divine intervention scene"}
  @{Dir="06-josue";File="cap-4.jpg";Prompt="Joshua dividing the Promised Land among twelve tribes, map scroll being unrolled, tribal leaders receiving inheritance, biblical settlement scene"}
  @{Dir="06-josue";File="cap-5.jpg";Prompt="Joshua renewing covenant at Shechem, all Israel gathered, great stone set up as witness, commitment to serve the Lord, biblical renewal scene"}

  # === 07-juizes ===
  @{Dir="07-juizes";File="capa.jpg";Prompt="Cycle of judges, alternating darkness and light, Israel turning from God and returning, ancient battle scenes, oppression and deliverance, biblical art"}
  @{Dir="07-juizes";File="cap-1.jpg";Prompt="Deborah under palm tree judging Israel, Barak before her, mountain and army background, prophetess and leader, biblical female judge scene"}
  @{Dir="07-juizes";File="cap-2.jpg";Prompt="Gideon with fleece of wool, dew on ground, testing God will, trumpet and torch in hands, Midianite camp in distance, biblical faith scene"}
  @{Dir="07-juizes";File="cap-3.jpg";Prompt="Samson breaking pillars of Philistine temple, Gaza temple collapse, blind but strong final act, dramatic destruction scene, biblical strongman"}
  @{Dir="07-juizes";File="cap-4.jpg";Prompt="Levite and concubine, Gibeah tragedy, moral decay of Israel, dark streets, biblical corruption scene, warning of lawlessness"}
  @{Dir="07-juizes";File="cap-5.jpg";Prompt="Israel crying out to God for a king, Samuel anointing Saul, transition from judges to monarchy, people gathering, biblical leadership change scene"}

  # === 08-rute ===
  @{Dir="08-rute";File="capa.jpg";Prompt="Ruth gleaning in the wheat fields of Bethlehem, golden harvest scene, sheaves of grain, sunrise over fields, biblical redemption scene, warm light"}
  @{Dir="08-rute";File="cap-1.jpg";Prompt="Naomi and her daughters-in-law on road to Bethlehem, Orpah departing, Ruth clinging to Naomi, Moabite hills, journey of loyalty, biblical scene"}
  @{Dir="08-rute";File="cap-2.jpg";Prompt="Ruth in fields of Boaz, gleaning barley, humble foreigner working, provision for the poor, ancient harvest, biblical gleaning scene"}
  @{Dir="08-rute";File="cap-3.jpg";Prompt="Boaz at threshing floor winnowing barley, Ruth approaching at night, lying at feet of Boaz, starlit night, kinsman-redeemer, biblical scene"}
  @{Dir="08-rute";File="cap-4.jpg";Prompt="Boaz and Ruth wedding celebration, Naomi rejoicing, Bethlehem community, marriage covenant, redemption fulfilled, joyful biblical wedding scene"}
  @{Dir="08-rute";File="cap-5.jpg";Prompt="Ruth holding baby Obed, Naomi with grandchild, genealogy line continuing, David descendant, hope and restoration, family blessing scene"}

  # === 09-1-samuel ===
  @{Dir="09-1-samuel";File="capa.jpg";Prompt="Samuel anointing David as king, horn of oil, shepherd boy among brothers, divine election, prophetic scene, biblical anointing, warm light"}
  @{Dir="09-1-samuel";File="cap-1.jpg";Prompt="Young Samuel in temple, hearing voice of God, Eli the priest in background, night scene, divine calling, child prophet, biblical vocation scene"}
  @{Dir="09-1-samuel";File="cap-2.jpg";Prompt="Ark of covenant captured by Philistines, Dagon statue fallen before ark, Philistine temple, divine power over idols, biblical scene"}
  @{Dir="09-1-samuel";File="cap-3.jpg";Prompt="Samuel anointing Saul as first king of Israel, people gathered, tall Saul standing above crowd, monarchy established, biblical coronation scene"}
  @{Dir="09-1-samuel";File="cap-4.jpg";Prompt="David and Goliath battle, shepherd boy with sling and stone, giant Philistine warrior, Valley of Elah, dramatic confrontation, biblical victory scene"}
  @{Dir="09-1-samuel";File="cap-5.jpg";Prompt="David fleeing from Saul, cave of Adullam, loyal followers around, king in distress, friendship of Jonathan, wilderness refuge scene"}

  # === 10-2-samuel ===
  @{Dir="10-2-samuel";File="capa.jpg";Prompt="King David on throne of Israel, Jerusalem golden city background, royal crown, scepter, psaltery, united kingdom, biblical royal scene"}
  @{Dir="10-2-samuel";File="cap-1.jpg";Prompt="David bringing ark of covenant to Jerusalem, dancing before the Lord, Michal watching from window, celebration and worship, biblical procession scene"}
  @{Dir="10-2-samuel";File="cap-2.jpg";Prompt="Prophet Nathan before David, parable of the lamb, David confronted with sin, Bathsheba in background, royal court, biblical confrontation scene"}
  @{Dir="10-2-samuel";File="cap-3.jpg";Prompt="Absalom rebellion, David fleeing Jerusalem across Kidron Valley, weeping king, loyal followers, betrayal and exile, dramatic biblical scene"}
  @{Dir="10-2-samuel";File="cap-4.jpg";Prompt="David composing psalms with harp, elderly king, Jerusalem sunset, spiritual legacy, man after God own heart, biblical musician scene"}
  @{Dir="10-2-samuel";File="cap-5.jpg";Prompt="David last words, mighty men of David gathered, kingdom established, legacy of faith, throne promised forever, biblical farewell scene"}

  # === 11-1-reis ===
  @{Dir="11-1-reis";File="capa.jpg";Prompt="Solomon temple in Jerusalem, golden glory, priests and worshippers, divine presence cloud, First Temple, biblical architecture, magnificent scene"}
  @{Dir="11-1-reis";File="cap-1.jpg";Prompt="King Solomon on throne judging between two mothers, wisdom of Solomon, baby divided, royal court, wise judgment, biblical wisdom scene"}
  @{Dir="11-1-reis";File="cap-2.jpg";Prompt="Solomon temple being built, thousands of workers, cedar from Lebanon, gold and bronze, magnificent construction, biblical building scene"}
  @{Dir="11-1-reis";File="cap-3.jpg";Prompt="Queen of Sheba visiting Solomon, gifts of gold and spices, Jerusalem royal court, wisdom exchange, magnificent palace, biblical meeting scene"}
  @{Dir="11-1-reis";File="cap-4.jpg";Prompt="Elijah on Mount Carmel, altar of twelve stones, fire descending from heaven, prophets of Baal defeated, dramatic biblical miracle scene"}
  @{Dir="11-1-reis";File="cap-5.jpg";Prompt="Elijah fed by ravens at brook Cherith, wilderness provision, birds bringing bread, drought landscape, divine sustenance, biblical faith scene"}

  # === 12-2-reis ===
  @{Dir="12-2-reis";File="capa.jpg";Prompt="Chariot of fire separating Elijah and Elisha, horses of fire, mantle falling, prophet ascending to heaven, dramatic biblical scene"}
  @{Dir="12-2-reis";File="cap-1.jpg";Prompt="Elisha striking Jordan river with Elijah mantle, waters parting, prophetic successor, double portion anointing, biblical transition scene"}
  @{Dir="12-2-reis";File="cap-2.jpg";Prompt="Naaman the Syrian being healed in Jordan river, dipping seven times, Elisha watching, leprosy cleansed, divine healing, biblical miracle scene"}
  @{Dir="12-2-reis";File="cap-3.jpg";Prompt="King Josiah reading the Book of the Law discovered in temple, people gathered, reformation and revival, destroying idols, biblical renewal scene"}
  @{Dir="12-2-reis";File="cap-4.jpg";Prompt="Nebuchadnezzar army besieging Jerusalem, walls breached, temple burning, people exiled, Babylonian conquest, destruction, biblical judgment scene"}

  # === 13-1-cronicas ===
  @{Dir="13-1-cronicas";File="capa.jpg";Prompt="Ancient scrolls of genealogies, family tree of Israel from Adam to David, names and lineages, biblical history record, heritage scene"}
  @{Dir="13-1-cronicas";File="cap-1.jpg";Prompt="King David on throne making preparations for the temple, gathering materials, gold and silver, plans laid out, biblical royal planning scene"}
  @{Dir="13-1-cronicas";File="cap-2.jpg";Prompt="David dancing before ark of covenant, bringing ark to Jerusalem, celebration with music and instruments, biblical worship and procession scene"}
  @{Dir="13-1-cronicas";File="cap-3.jpg";Prompt="King David receiving covenant from God, Nathan the prophet, promise of eternal throne, divine covenant establishment, biblical prophecy scene"}
  @{Dir="13-1-cronicas";File="cap-4.jpg";Prompt="David organizing priests and Levites for temple service, musicians with harps and cymbals, worship order, biblical liturgical scene"}

  # === 14-2-cronicas ===
  @{Dir="14-2-cronicas";File="capa.jpg";Prompt="Solomon temple dedication, altar and sacrifices, fire from heaven consuming offering, glory of Lord filling temple, dramatic biblical scene"}
  @{Dir="14-2-cronicas";File="cap-1.jpg";Prompt="Solomon praying at temple dedication, hands raised to heaven, ark of covenant, divine glory cloud, people worshipping, biblical prayer scene"}
  @{Dir="14-2-cronicas";File="cap-2.jpg";Prompt="King Asa leading Judah in religious reform, destroying idols and high places, covenant renewal, faithful king, biblical reformation scene"}
  @{Dir="14-2-cronicas";File="cap-3.jpg";Prompt="King Jehoshaphat leading army with singers, choir going before soldiers, enemies defeated, faith and worship battle, biblical praise scene"}
  @{Dir="14-2-cronicas";File="cap-4.jpg";Prompt="Cyrus decree allowing Jews to return, rebuilding temple, exiles returning, foundation laid, prophetic fulfillment, biblical restoration scene"}

  # === 15-esdras ===
  @{Dir="15-esdras";File="capa.jpg";Prompt="Ezra the scribe reading the Law to gathered people, scroll open, assembly listening intently, return from exile, biblical revival scene"}
  @{Dir="15-esdras";File="cap-1.jpg";Prompt="Exiles returning from Babylon to Jerusalem, caravan on road, city in distance, hope and restoration, biblical return scene"}
  @{Dir="15-esdras";File="cap-2.jpg";Prompt="Foundation of second temple being laid, Zerubbabel overseeing, workers building, celebration with music, biblical reconstruction scene"}
  @{Dir="15-esdras";File="cap-3.jpg";Prompt="Ezra the scribe studying and teaching the Law, scrolls spread before him, dedication to word of God, biblical scholarship scene"}
  @{Dir="15-esdras";File="cap-4.jpg";Prompt="People confessing sins, covenant renewal ceremony, Ezra leading repentance, separation from foreign influences, biblical reformation scene"}

  # === 16-neemias ===
  @{Dir="16-neemias";File="capa.jpg";Prompt="Nehemiah rebuilding walls of Jerusalem, workers with tools, walls rising from ruins, city restoration, biblical rebuilding scene"}
  @{Dir="16-neemias";File="cap-1.jpg";Prompt="Nehemiah cupbearer to king Artaxerxes, Persian court, sad face before king, royal permission granted, biblical favor scene"}
  @{Dir="16-neemias";File="cap-2.jpg";Prompt="Nehemiah inspecting Jerusalem walls at night, rubble and destruction, city gates burned, determination on face, biblical night scene"}
  @{Dir="16-neemias";File="cap-3.jpg";Prompt="Builders working on walls with swords and spears, half working half guarding, opposition from enemies, biblical perseverance scene"}
  @{Dir="16-neemias";File="cap-4.jpg";Prompt="Ezra and Nehemiah leading covenant renewal, all people gathered, law read aloud, celebration, walls complete, biblical dedication scene"}

  # === 17-ester ===
  @{Dir="17-ester";File="capa.jpg";Prompt="Queen Esther in royal Persian court, golden throne, crown, palace of Susa, dramatic biblical scene, courage and beauty"}
  @{Dir="17-ester";File="cap-1.jpg";Prompt="King Ahasuerus grand banquet in Susa, royal feast, queen Vashti refusing to appear, opulent Persian palace, biblical court scene"}
  @{Dir="17-ester";File="cap-2.jpg";Prompt="Esther being chosen as queen, beauty pageant, Persian court, Mordecai watching, divine providence, biblical coronation scene"}
  @{Dir="17-ester";File="cap-3.jpg";Prompt="Mordecai at palace gate refusing to bow to Haman, proud Haman angry, gallows being built, conspiracy, biblical conflict scene"}
  @{Dir="17-ester";File="cap-4.jpg";Prompt="Esther before king without summons, golden scepter extended, dramatic moment, life at stake, courage of queen, biblical intercession scene"}
  @{Dir="17-ester";File="cap-5.jpg";Prompt="Purim celebration, Jews rejoicing, feasting and gladness, Mordecai honored, Haman executed, deliverance and victory scene"}

  # === 18-jo ===
  @{Dir="18-jo";File="capa.jpg";Prompt="Job sitting on ash heap, torn robes, suffering yet righteous, friends visiting, dark sky, dramatic biblical scene of suffering and faith"}
  @{Dir="18-jo";File="cap-1.jpg";Prompt="Job prosperity, large family, livestock and servants, blessed household, pastoral wealth, biblical prosperity scene"}
  @{Dir="18-jo";File="cap-2.jpg";Prompt="Satan before God heavenly court, Job suffering boils, loss and affliction, divine testing, spiritual battle, biblical scene"}
  @{Dir="18-jo";File="cap-3.jpg";Prompt="Job three friends Eliphaz Bildad Zophar sitting with him in silence, seven days of mourning, ash heap, compassion, biblical comfort scene"}
  @{Dir="18-jo";File="cap-4.jpg";Prompt="God answering Job from whirlwind, storm clouds, divine voice, creation questions, Job covering mouth, divine majesty scene"}
  @{Dir="18-jo";File="cap-5.jpg";Prompt="Job restoration, double blessing, new family, prosperity returned, old age blessing, redemption fulfilled, biblical restoration scene"}

  # === 19-salmos ===
  @{Dir="19-salmos";File="capa.jpg";Prompt="King David playing harp, psaltery, worship in the temple, musical notes floating, heavenly light, book of Psalms, biblical music scene"}
  @{Dir="19-salmos";File="cap-1.jpg";Prompt="Heavens declaring glory of God, stars and galaxies, sunrise over mountains, creation worshipping, cosmic praise, majestic scene"}
  @{Dir="19-salmos";File="cap-2.jpg";Prompt="Soul in distress crying out to God, tears and prayers, hands raised to heaven, dark night, lament and hope, biblical prayer scene"}
  @{Dir="19-salmos";File="cap-3.jpg";Prompt="Shepherd leading sheep beside still waters, green pastures, rod and staff, peaceful valley, divine care, Psalm 23 scene"}
  @{Dir="19-salmos";File="cap-4.jpg";Prompt="King and Messiah on throne, crowns, all nations bowing, royal scepter, eternal kingdom, prophetic reign, biblical messianic scene"}
  @{Dir="19-salmos";File="cap-5.jpg";Prompt="Giving thanks with joyful noise, musical instruments, dancing, congregation worshipping, celebration, biblical thanksgiving scene"}

  # === 20-proverbios ===
  @{Dir="20-proverbios";File="capa.jpg";Prompt="Ancient scroll of Proverbs, tree of life, wisdom woman calling, lamp and light, golden biblical wisdom illustration"}
  @{Dir="20-proverbios";File="cap-1.jpg";Prompt="Person standing at crossroads, two paths, wisdom and folly signs, choice before them, illuminated path, biblical decision scene"}
  @{Dir="20-proverbios";File="cap-2.jpg";Prompt="Lady Wisdom calling at city gates, inviting to feast, prepared table, open arms, personification of wisdom, biblical invitation scene"}
  @{Dir="20-proverbios";File="cap-3.jpg";Prompt="Scales of justice balancing, righteous and wicked paths, fruit of the spirit, moral choices, biblical justice scene"}
  @{Dir="20-proverbios";File="cap-4.jpg";Prompt="Words as honeycomb and fire, tongue as rudder, speech and silence, communication wisdom, biblical speech illustration"}
  @{Dir="20-proverbios";File="cap-5.jpg";Prompt="Virtuous woman managing household, children rising, husband at gates, industrious family, Proverbs 31 scene, biblical family blessing"}

  # === 21-eclesiastes ===
  @{Dir="21-eclesiastes";File="capa.jpg";Prompt="Vanity of vanities, empty vessels, fading flowers, setting sun, book of Ecclesiastes, philosophical biblical scene, contemplative mood"}
  @{Dir="21-eclesiastes";File="cap-1.jpg";Prompt="Sun rising and setting, river flowing to sea, cycle of life, vanity of human effort, philosophical scene, book of Ecclesiastes theme"}
  @{Dir="21-eclesiastes";File="cap-2.jpg";Prompt="Time for everything under heaven, seasons changing, birth and death, planting and harvest, calendar of life, biblical wisdom scene"}
  @{Dir="21-eclesiastes";File="cap-3.jpg";Prompt="Two contrasting paths, wisdom building house with pillars, folly with torn curtains, Solomon teaching, biblical comparison scene"}
  @{Dir="21-eclesiastes";File="cap-4.jpg";Prompt="Wealth and poverty, injustice under sun, oppressed weeping, no comforter, social inequality, biblical lament scene"}
  @{Dir="21-eclesiastes";File="cap-5.jpg";Prompt="Old age approaching, remember your Creator, silver cord loosed, golden bowl broken, sunset of life, biblical reflection scene"}

  # === 22-cantares ===
  @{Dir="22-cantares";File="capa.jpg";Prompt="Bride and bridegroom in garden of love, Song of Solomon, flowering vineyard, romantic biblical scene, beauty and devotion"}
  @{Dir="22-cantares";File="cap-1.jpg";Prompt="Beloved seeking her lover, vineyard of En Gedi, springtime flowers, love and longing, biblical romance scene"}
  @{Dir="22-cantares";File="cap-2.jpg";Prompt="Bridegroom praising his beloved, beautiful description, garden imagery, love poetry, biblical admiration scene"}
  @{Dir="22-cantares";File="cap-3.jpg";Prompt="Bride searching through city streets at night for her beloved, watchmen passing, night scene, love seeking, biblical devotion scene"}
  @{Dir="22-cantares";File="cap-4.jpg";Prompt="Wedding procession, Solomon carriage, fragrant spices, flowers, celebration of love, biblical wedding scene"}
  @{Dir="22-cantares";File="cap-5.jpg";Prompt="Love as strong as death, many waters cannot quench love, seal upon heart, eternal devotion, profound biblical love scene"}

  # === 23-isaias ===
  @{Dir="23-isaias";File="capa.jpg";Prompt="Prophet Isaiah vision, temple of God, Seraphim with six wings, holy holy holy calling, smoke filling temple, majestic biblical scene"}
  @{Dir="23-isaias";File="cap-1.jpg";Prompt="Isaiah vision in temple, coal of fire touching lips, altar and incense, cleansing of prophet, divine calling, biblical prophetic scene"}
  @{Dir="23-isaias";File="cap-2.jpg";Prompt="Nations streaming to mountain of Lord, swords beaten into plowshares, peace and justice, kingdom of God, biblical peace scene"}
  @{Dir="23-isaias";File="cap-3.jpg";Prompt="Suffering Servant, man of sorrows, crown of thorns, wounded for transgression, bruised for iniquities, prophetic messianic scene"}
  @{Dir="23-isaias";File="cap-4.jpg";Prompt="New heavens and new earth, Jerusalem rejoicing, wolf and lamb together, child playing, peaceable kingdom, biblical restoration scene"}

  # === 24-jeremias ===
  @{Dir="24-jeremias";File="capa.jpg";Prompt="Jeremiah weeping over Jerusalem, scroll in hand, tears, destroyed city in background, lonely prophet, biblical lament scene"}
  @{Dir="24-jeremias";File="cap-1.jpg";Prompt="Jeremiah called as prophet, divine hand touching mouth, almond branch and boiling pot, young prophet, biblical calling scene"}
  @{Dir="24-jeremias";File="cap-2.jpg";Prompt="Jeremiah preaching in temple court, warning of judgment, people rejecting message, pottery vessel, prophetic confrontation scene"}
  @{Dir="24-jeremias";File="cap-3.jpg";Prompt="Potter and clay wheel, vessel being reshaped, divine sovereignty, Jeremiah watching, biblical metaphor scene"}
  @{Dir="24-jeremias";File="cap-4.jpg";Prompt="New covenant promise, heart of flesh replacing heart of stone, law written on hearts, Jeremiah prophecy, biblical hope scene"}
  @{Dir="24-jeremias";File="cap-5.jpg";Prompt="Jeremiah in muddy cistern, being pulled out with ropes, persecuted prophet, suffering for truth, biblical endurance scene"}

  # === 25-lamentacoes ===
  @{Dir="25-lamentacoes";File="capa.jpg";Prompt="Desolate Jerusalem, destroyed temple, rubble and ruins, weeping figure, dark sky, book of Lamentations, biblical sorrow scene"}
  @{Dir="25-lamentacoes";File="cap-1.jpg";Prompt="Princess city sitting alone, former princess now slave, weeping bitterly, deserted streets, personified Jerusalem, biblical mourning scene"}
  @{Dir="25-lamentacoes";File="cap-2.jpg";Prompt="Divine judgment pouring down, fire from heaven, temple destroyed, altar broken, anger of Lord, biblical judgment scene"}
  @{Dir="25-lamentacoes";File="cap-3.jpg";Prompt="Great is thy faithfulness, sunrise after night, mercies new every morning, hope rising from ashes, biblical restoration scene"}
  @{Dir="25-lamentacoes";File="cap-4.jpg";Prompt="Repentance and confession, people bowing, acknowledging sin, seeking forgiveness, turning back to God, biblical repentance scene"}
  @{Dir="25-lamentacoes";File="cap-5.jpg";Prompt="Restoration cry, people returning to rebuild, prayer for renewal, hope restored, city rising from ruins, biblical renewal scene"}

  # === 26-ezequiel ===
  @{Dir="26-ezequiel";File="capa.jpg";Prompt="Ezekiel vision of wheel within wheel, living creatures, four faces, divine glory, apocalyptic biblical scene, fiery vision"}
  @{Dir="26-ezequiel";File="cap-1.jpg";Prompt="Ezekiel vision of divine chariot, wheels and living creatures, amber and fire, glory of God, majestic apocalyptic scene"}
  @{Dir="26-ezequiel";File="cap-2.jpg";Prompt="Ezekiel eating scroll, sweet as honey in mouth, prophetic word consumed, divine message, biblical prophetic calling scene"}
  @{Dir="26-ezequiel";File="cap-3.jpg";Prompt="Valley of dry bones, scattered skeletons, sinews and flesh forming, breath entering bodies, army rising, dramatic biblical restoration scene"}
  @{Dir="26-ezequiel";File="cap-4.jpg";Prompt="New temple vision, river flowing from temple, trees bearing fruit, living waters, Ezekiel vision, biblical restoration prophecy"}

  # === 27-daniel ===
  @{Dir="27-daniel";File="capa.jpg";Prompt="Daniel in lions den, lions surrounding, angel protecting, hands raised in prayer, divine light, dramatic biblical deliverance scene"}
  @{Dir="27-daniel";File="cap-1.jpg";Prompt="Daniel and friends refusing royal food, eating vegetables and water, healthy and wise, Babylonian court, biblical faithfulness scene"}
  @{Dir="27-daniel";File="cap-2.jpg";Prompt="Nebuchadnezzar golden statue, fiery furnace, Shadrach Meshach and Abednego refusing to bow, four men walking in fire, biblical miracle scene"}
  @{Dir="27-daniel";File="cap-3.jpg";Prompt="Belshazzar feast, handwriting on wall, fingers writing, terrified king, Daniel interpreting, judgment prophecy, biblical scene"}
  @{Dir="27-daniel";File="cap-4.jpg";Prompt="Ancient of Days on throne, Son of Man coming with clouds, beasts and kingdoms, apocalyptic vision, biblical prophetic scene"}

  # === 28-oseias ===
  @{Dir="28-oseias";File="capa.jpg";Prompt="Prophet Hosea with unfaithful wife Gomer, marriage covenant, broken heart yet faithful love, biblical illustration of divine love"}
  @{Dir="28-oseias";File="cap-1.jpg";Prompt="Hosea marrying Gomer, wedding ceremony, prophet and unfaithful woman, divine command, biblical symbolic marriage scene"}
  @{Dir="28-oseias";File="cap-2.jpg";Prompt="Israel as unfaithful wife, chasing other lovers, Baal worship, idolatry, covenant broken, biblical adultery metaphor scene"}
  @{Dir="28-oseias";File="cap-3.jpg";Prompt="Hosea buying back Gomer, redeeming his wife, market transaction, faithful love, restoration, biblical redemption scene"}
  @{Dir="28-oseias";File="cap-4.jpg";Prompt="Israel returning to God, repentance and restoration, wheat and vine, harvest blessing, renewed covenant, biblical restoration scene"}

  # === 29-joel ===
  @{Dir="29-joel";File="capa.jpg";Prompt="Locust swarm darkening the sky, devastation over fields, plague of insects, biblical judgment scene, prophetic warning"}
  @{Dir="29-joel";File="cap-1.jpg";Prompt="Swarm of locusts consuming everything, dark cloud of insects, devastated crops, agricultural disaster, biblical plague scene"}
  @{Dir="29-joel";File="cap-2.jpg";Prompt="Day of the Lord, cosmic disturbance, dark sun and blood moon, fire and smoke, apocalyptic biblical scene"}
  @{Dir="29-joel";File="cap-3.jpg";Prompt="People repenting, weeping between temple porch and altar, returning to God with all heart, biblical repentance scene"}
  @{Dir="29-joel";File="cap-4.jpg";Prompt="Holy Spirit poured out like tongues of fire, all people prophesying, dreams and visions, Pentecost prophecy, biblical revival scene"}

  # === 30-amos ===
  @{Dir="30-amos";File="capa.jpg";Prompt="Amos the shepherd prophet, fig trees, staff, wild landscape, justice theme scale, biblical prophetic scene"}
  @{Dir="30-amos";File="cap-1.jpg";Prompt="Shepherd called to be prophet, Amos leaving flock, divine call, wilderness setting, simple man, biblical prophetic calling scene"}
  @{Dir="30-amos";File="cap-2.jpg";Prompt="Plumb line against crooked wall, divine standard of justice, measuring righteousness, Amos vision, biblical judgment illustration"}
  @{Dir="30-amos";File="cap-3.jpg";Prompt="Oppression of poor, dishonest scales, luxury and injustice, wealthy trampling needy, social injustice, biblical protest scene"}
  @{Dir="30-amos";File="cap-4.jpg";Prompt="Justice rolling like waters, righteousness like mighty stream, river scene, divine justice flow, biblical prophetic scene"}

  # === 31-obadias ===
  @{Dir="31-obadias";File="capa.jpg";Prompt="Obadiah prophecy scroll, Edom mountains falling, pride brought low, eagle nest among stars, judgment scene"}
  @{Dir="31-obadias";File="cap-1.jpg";Prompt="Prophet Obadiah receiving vision, divine message, scroll and hand from heaven, prophetic calling, biblical scene"}
  @{Dir="31-obadias";File="cap-2.jpg";Prompt="Edom in rock fortress, eagle nest high in cliffs, proud city of Petra, seemingly invincible, biblical pride scene"}
  @{Dir="31-obadias";File="cap-3.jpg";Prompt="Day of the Lord cosmic judgment, nations drinking wrath, fire consuming Edom, divine justice, apocalyptic scene"}
  @{Dir="31-obadias";File="cap-4.jpg";Prompt="Israel restored, Mount Zion deliverance, kingdom of God established, peace and blessing, biblical restoration scene"}

  # === 32-jonas ===
  @{Dir="32-jonas";File="capa.jpg";Prompt="Great fish swallowing Jonah, stormy sea, ships, dramatic biblical scene, divine intervention, repentance theme"}
  @{Dir="32-jonas";File="cap-1.jpg";Prompt="Jonas fleeing to Tarshish, ship leaving Joppa port, storm clouds gathering, disobedience, biblical flight scene"}
  @{Dir="32-jonas";File="cap-2.jpg";Prompt="Jonah inside great fish, surrounded by seaweed, praying, darkness, three days, repentance, biblical deliverance scene"}
  @{Dir="32-jonas";File="cap-3.jpg";Prompt="Jonah preaching in Nineveh, large ancient city, people repenting in sackcloth and ashes, king on throne, biblical revival scene"}
  @{Dir="32-jonas";File="cap-4.jpg";Prompt="Jonah under withered vine, hot sun, angry prophet, God teaching compassion, Nineveh spared, biblical mercy scene"}

  # === 33-miqueias ===
  @{Dir="33-miqueias";File="capa.jpg";Prompt="Prophet Micah scroll, scales of justice, mercy and humility, Bethlehem in background, biblical prophetic scene"}
  @{Dir="33-miqueias";File="cap-1.jpg";Prompt="Micah prophesying judgment, mountains melting, valleys splitting, divine coming, biblical theophany scene"}
  @{Dir="33-miqueias";File="cap-2.jpg";Prompt="Corrupt leaders and priests, injustice in society, scheming against poor, darkness and oppression, biblical social justice scene"}
  @{Dir="33-miqueias";File="cap-3.jpg";Prompt="Bethlehem birthplace prophecy, shepherd town, star above, Messiah predicted, biblical messianic prophecy scene"}
  @{Dir="33-miqueias";File="cap-4.jpg";Prompt="What does the Lord require, doing justice loving mercy walking humbly with God, three pillars, biblical ethics scene"}

  # === 34-naum ===
  @{Dir="34-naum";File="capa.jpg";Prompt="Nineveh falling, city destruction, war chariots, fire and sword, divine judgment, biblical prophecy fulfillment scene"}
  @{Dir="34-naum";File="cap-1.jpg";Prompt="Prophet Nahum, powerful message against Nineveh, scroll, storm clouds, divine wrath and love, biblical prophetic scene"}
  @{Dir="34-naum";File="cap-2.jpg";Prompt="Nineveh the bloody city, violence and lies, lion prey, rich plunder, judgment coming, biblical condemnation scene"}
  @{Dir="34-naum";File="cap-3.jpg";Prompt="Chariots charging through Nineveh streets, siege towers, walls breached, soldiers fighting, biblical battle scene"}
  @{Dir="34-naum";File="cap-4.jpg";Prompt="Good tidings of peace, messenger on mountain, feet beautiful, salvation announced, biblical good news scene"}

  # === 35-habacuque ===
  @{Dir="35-habacuque";File="capa.jpg";Prompt="Prophet Habakkuk on watchtower, looking for answer, faith and questions, night sky, watchman scene, biblical faith"}
  @{Dir="35-habacuque";File="cap-1.jpg";Prompt="Habakkuk questioning God, violence and injustice, hands raised in complaint, honest prayer, biblical lament scene"}
  @{Dir="35-habacuque";File="cap-2.jpg";Prompt="Vision written on tablets, running messenger, appointed time, prophecy waiting, biblical patience scene"}
  @{Dir="35-habacuque";File="cap-3.jpg";Prompt="Babylonian army advancing, Chaldeans rising, horses and soldiers, divine instrument of judgment, biblical conquest scene"}
  @{Dir="35-habacuque";File="cap-4.jpg";Prompt="The righteous shall live by faith, foundation stone, faith pillar, standing firm, biblical faith declaration scene"}
  @{Dir="35-habacuque";File="cap-5.jpg";Prompt="Though fig tree does not blossom, yet I will rejoice in Lord, joy in suffering, praise despite circumstances, biblical faith scene"}

  # === 36-sofonias ===
  @{Dir="36-sofonias";File="capa.jpg";Prompt="Great Day of the Lord approaching, darkness and gloom, trumpet sound, judgment and restoration, biblical apocalyptic scene"}
  @{Dir="36-sofonias";File="cap-1.jpg";Prompt="Day of wrath, darkness and gloom, trumpet warning, cosmic disturbance, judgment approaching, biblical prophetic scene"}
  @{Dir="36-sofonias";File="cap-2.jpg";Prompt="Seek the Lord all humble of earth, seeking righteousness and humility, shelter in day of wrath, biblical refuge scene"}
  @{Dir="36-sofonias";File="cap-3.jpg";Prompt="Jerusalem restored, singing and rejoicing, God rejoicing over his people with singing, biblical restoration joy scene"}
  @{Dir="36-sofonias";File="cap-4.jpg";Prompt="Remnant purified, humble and lowly, trusting in God, gathered home, restored people, biblical remnant scene"}

  # === 37-ageu ===
  @{Dir="37-ageu";File="capa.jpg";Prompt="Temple rebuilding in Jerusalem, Zerubbabel and Joshua, workers laying stones, second temple construction, biblical scene"}
  @{Dir="37-ageu";File="cap-1.jpg";Prompt="Prophet Haggai preaching to people, consider your ways, paneled houses while temple lies in ruins, biblical rebuke scene"}
  @{Dir="37-ageu";File="cap-2.jpg";Prompt="Temple foundation shaken, glory of latter temple greater than former, divine promise, prophetic encouragement scene"}
  @{Dir="37-ageu";File="cap-3.jpg";Prompt="Unclean people touching holy things, defiled offerings, Haggai teaching about holiness, biblical purity lesson"}
  @{Dir="37-ageu";File="cap-4.jpg";Prompt="Zerubbabel as signet ring, chosen by God, kingdoms overthrown, divine election, biblical promise scene"}

  # === 38-zacarias ===
  @{Dir="38-zacarias";File="capa.jpg";Prompt="Prophet Zechariah visions, golden lampstand olive trees, flying scroll, horses and chariots, apocalyptic biblical scene"}
  @{Dir="38-zacarias";File="cap-1.jpg";Prompt="Zechariah night visions, angelic messengers, horsemen among myrtle trees, divine revelation, biblical prophetic scene"}
  @{Dir="38-zacarias";File="cap-2.jpg";Prompt="Joshua high priest in filthy garments, Satan accusing, angel clothing in clean robes, cleansing and restoration scene"}
  @{Dir="38-zacarias";File="cap-3.jpg";Prompt="Branch and King, priest and ruler united, Messiah coming, humble and riding on donkey, Zechariah prophecy scene"}
  @{Dir="38-zacarias";File="cap-4.jpg";Prompt="Shepherd struck, sheep scattered, thirty pieces of silver, pierced one, mourning, messianic prophecy scene"}
  @{Dir="38-zacarias";File="cap-5.jpg";Prompt="Lord will be King over all the earth, living waters from Jerusalem, holy to the Lord, millennial kingdom scene"}

  # === 39-malaquias ===
  @{Dir="39-malaquias";File="capa.jpg";Prompt="Malachi prophecy scroll, messenger preparing way, refiner fire, sun of righteousness rising, bridge between testaments scene"}
  @{Dir="39-malaquias";File="cap-1.jpg";Prompt="God love for Israel shown, Jacob and Esau contrasted, divine election, father honoring children, biblical love declaration scene"}
  @{Dir="39-malaquias";File="cap-2.jpg";Prompt="Corrupt priests offering blind and lame animals, defective sacrifices, temple scene, Malaquias rebuke, biblical confrontation"}
  @{Dir="39-malaquias";File="cap-3.jpg";Prompt="Storehouse tithing, windows of heaven open, abundant blessing, faithful stewardship, biblical prosperity scene"}
  @{Dir="39-malaquias";File="cap-4.jpg";Prompt="Sun of righteousness rising with healing in wings, light dawning, hope and restoration, biblical messianic scene"}
  @{Dir="39-malaquias";File="cap-5.jpg";Prompt="Prophet Elijah returning before great day, hearts of fathers turned to children, reconciliation, Malachi final promise scene"}
)

$total = $images.Count
Write-Output "=== GERADOR DE IMAGENS - ANTIGO TESTAMENTO ==="
Write-Output "Total de imagens: $total"
Write-Output "Base: $root"
Write-Output ""

$global:attemptTimes = @()
$successCount = 0
$failCount = 0

for ($i = 0; $i -lt $total; $i++) {
  $img = $images[$i]
  $dir = "$root\$($img.Dir)\imagens"
  if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
  $outPath = "$dir\$($img.File)"
  $pct = "{0:N1}" -f (($i / $total) * 100)
  $pbar = "[$($i+1)/$total - $pct%]"

  if ((Test-Path $outPath) -and ((Get-Item $outPath).Length -gt 5000)) {
    Write-Output "$pbar PULANDO (ja existe): $($img.Dir)/$($img.File) - $((Get-Item $outPath).Length/1KB) KB"
    $successCount++
    continue
  }

  $prompt = [System.Uri]::EscapeDataString($img.Prompt)
  $url = "https://utku.berkaykoc.net/api/entertainment/text2image?prompt=$prompt&lang=en"

  Write-Output "$pbar $($img.Dir)/$($img.File)"

  $success = $false
  $attempts = 0
  $maxAttempts = 5
  $waitTimes = @(30, 60, 120, 180, 240)

  while (-not $success -and $attempts -lt $maxAttempts) {
    try {
      $r = Invoke-WebRequest -Uri $url -TimeoutSec 300 -UseBasicParsing
      $resp = $r.Content | ConvertFrom-Json
      $bytes = [Convert]::FromBase64String($resp.base64Image)
      [System.IO.File]::WriteAllBytes($outPath, $bytes)
      $sizeKB = [math]::Round($bytes.Count / 1024, 1)
      if ($attempts -eq 0) {
        Write-Output "  OK - $sizeKB KB"
      } else {
        Write-Output "  OK na $($attempts+1)a tentativa - $sizeKB KB"
      }
      $success = $true
      $successCount++
    } catch {
      $attempts++
      if ($attempts -lt $maxAttempts) {
        $wait = $waitTimes[[Math]::Min($attempts-1, $waitTimes.Count-1)]
        Write-Output "  ERRO (tentativa $attempts/$maxAttempts): aguardando ${wait}s..."
        Start-Sleep -Seconds $wait
      } else {
        Write-Output "  FALHOU apos $maxAttempts tentativas: $($img.Dir)/$($img.File)"
        $failCount++
      }
    }
  }

  if ($i -lt ($total - 1) -and $success) {
    Start-Sleep -Seconds 10
  }
}

Write-Output ""
Write-Output "=== RESUMO ==="
Write-Output "Sucesso: $successCount / $total"
Write-Output "Falhas: $failCount / $total"
Write-Output ""

if ($failCount -gt 0) {
  Write-Output "IMAGENS FALHAS (serao geradas via fallback):"
  for ($i = 0; $i -lt $total; $i++) {
    $img = $images[$i]
    $outPath = "$root\$($img.Dir)\imagens\$($img.File)"
    if (-not (Test-Path $outPath) -or (Get-Item $outPath).Length -le 5000) {
      Write-Output "  $($img.Dir)/$($img.File)"
    }
  }
}

Write-Output ""
Write-Output "=== CONCLUIDO ==="
