--Trivia Game made for Araxia Server by Manmadedrummer

local NPC_ID = 800796

local QUESTIONS = {
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the capital city of the Horde?", options = {"a) Orgrimmar", "b) Undercity", "c) Thunder Bluff", "d) Silvermoon City"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the capital city of the Alliance?", options = {"a) Stormwind", "b) Ironforge", "c) Darnassus", "d) Exodar"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What year was Wrath of the Lich King released?", options = {"a) 2007", "b) 2008", "c) 2009", "d) 2010"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Where was Thrall born?", options = {"a) The Barrens", "b) Durotar", "c) The Alterac Mountains", "d) Silverpine Forest"}, answer = 3},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Who are the parents of Thrall?", options = {"a) Grommash and Draka", "b) Orgrim and Garona", "c) Cairne and Aggra", "d) Durotan and Draka"}, answer = 4},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Who founded the Scarlet Crusade?", options = {"a) Darion Mograine", "b) High Inquisitor Whitemane", "c) Isillien and Abbendis", "d) Bolvar Fordragon"}, answer = 3},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the name of the fictional continent where most of the events of World of Warcraft take place?", options = {"a) Draenor", "b) Kalimdor", "c) Pandaria", "d) Azeroth"}, answer = 4},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t The entrance to Blackwing Lair raid is found inside what instance in World of Warcraft?", options = {"a) Blackrock Depths", "b) Blackrock Spire", "c) Molten Core", "d) Upper Blackrock Spire"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t The Four Horsemen consist of which four bosses during the Naxxramas raid?", options = {"a) Thane Korth'azz, Lady Blauemox, Baron Rivendare and Sir Zeliek", "b) Highlord Mograine, Baron Rivendare, Lady Blaumeux and Thaddius", "c) Kel'Thuzad, Patchwerk, Grobbulus and Gluth", "d) Sapphiron, Kel'Thuzad, Anub'Rekhan and Maexxna"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Onyxia used to spy on Stormwind in the guise of a chief advisor. What did she call herself while under her human form?", options = {"a) Lady Katrana Prestor", "b) Lady Jaina Proudmoore", "c) Lady Sylvanas Windrunner", "d) Lady Alexstrasza"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Which of the following is the only raid in World of Warcraft where you can play a game of chess?", options = {"a) Blackwing Lair", "b) Molten Core", "c) Karazhan", "d) Ulduar"}, answer = 3},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What was the purpose of the Blood Elf expedition in Bloodmist Isle?", options = {"a) To summon a powerful demon", "b) To create a portal to Outland so they could travel through it", "c) To find a lost artifact", "d) To establish a new settlement"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t In the lore of World of Warcraft, who is known as the 'Lich King'?", options = {"a) Kel'Thuzad", "b) Arthas Menethil", "c) Ner'zhul", "d) Sylvanas Windrunner"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the name of the Nathrezim's homeworld?", options = {"a) Nathreza", "b) Argus", "c) Draenor", "d) Xoroth"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Arthas Menethil was the prince of which kingdom in World of Warcraft?", options = {"a) Dalaran", "b) Lordaeron", "c) Stormwind", "d) Gilneas"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t When a warlock summons their dread steed in World of Warcraft, which world does it come from?", options = {"a) Argus", "b) Xoroth", "c) Draenor", "d) Azeroth"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Which raid instance is located in Stranglethorn Vale in World of Warcraft?", options = {"a) Zul'Aman", "b) Zul'Gurub", "c) Ahn'Qiraj", "d) Blackwing Lair"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Which of the following weapons is NOT summoned by Kael'thas Sunstrider in The Eye raid in World of Warcraft?", options = {"a) Phaseshift Bulwark", "b) Warp Slicer", "c) Twinblade of the Phoenix", "d) Infinity Blade"}, answer = 3},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the racial enemy of the tauren in World of Warcraft?", options = {"a) Gnolls", "b) Harpies", "c) Centaurs", "d) Murlocs"}, answer = 3},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Where would you find Timmy the Cruel in World of Warcraft?", options = {"a) Stratholme", "b) Scholomance", "c) Scarlet Monastery", "d) Blackrock Depths"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Who is the leader of the Blood Elves during the events of The Burning Crusade?", options = {"a) Lor'themar Theron", "b) Kael'thas Sunstrider", "c) Lady Liadrin", "d) Anasterian Sunstrider"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the name of the dragon aspect of the bronze dragonflight?", options = {"a) Alexstrasza", "b) Nozdormu", "c) Malygos", "d) Ysera"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Which zone is home to the dungeon 'The Nexus'?", options = {"a) Dragonblight", "b) Howling Fjord", "c) Borean Tundra", "d) Grizzly Hills"}, answer = 3},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What artifact does Arthas Menethil use to become the Lich King?", options = {"a) Frostmourne", "b) Ashbringer", "c) Shadowmourne", "d) Doomhammer"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the name of the Naaru found in Shattrath City?", options = {"a) A'dal", "b) M'uru", "c) K'ure", "d) O'ros"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Which raid boss in Wrath of the Lich King is known as 'The God of Death'?", options = {"a) Yogg-Saron", "b) C'Thun", "c) Malygos", "d) Kel'Thuzad"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Who is the final boss of the Black Temple raid?", options = {"a) Illidan Stormrage", "b) Akama", "c) Teron'gor", "d) Mother Shahraz"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Which dungeon is located within the ruins of the former night elf city of Zin-Azshari?", options = {"a) Sunken Temple", "b) Dire Maul", "c) The Temple of Atal'Hakkar", "d) The Eye of Eternity"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the name of the weapon that Thrall wields?", options = {"a) Doomhammer", "b) Gorehowl", "c) Frostmourne", "d) Ashbringer"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Which faction does Lady Sylvanas Windrunner lead?", options = {"a) The Argent Crusade", "b) The Forsaken", "c) The Kirin Tor", "d) The Silver Hand"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the name of the dreadlord who led the Scourge invasion of Kalimdor?", options = {"a) Mal'Ganis", "b) Balnazzar", "c) Tichondrius", "d) Varimathras"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Which zone is home to the raid instance Ulduar?", options = {"a) Icecrown", "b) Storm Peaks", "c) Dragonblight", "d) Howling Fjord"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the name of the night elf demigod who resides in Moonglade?", options = {"a) Cenarius", "b) Malfurion", "c) Elune", "d) Ysera"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Who was the original wielder of Ashbringer?", options = {"a) Alexandros Mograine", "b) Darion Mograine", "c) Tirion Fordring", "d) Bolvar Fordragon"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t In Wrath of the Lich King, what is the name of the undead dragon boss in Naxxramas?", options = {"a) Sapphiron", "b) Sindragosa", "c) Nefarian", "d) Onyxia"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the capital city of the Blood Elves?", options = {"a) Silvermoon City", "b) Darnassus", "c) Exodar", "d) Undercity"}, answer = 1},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the name of the elemental plane of air in World of Warcraft?", options = {"a) Deepholm", "b) Skywall", "c) Firelands", "d) Abyssal Maw"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t Which Old God is associated with Ahn'Qiraj?", options = {"a) Yogg-Saron", "b) C'Thun", "c) N'Zoth", "d) Y'Shaarj"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What race can be druids in World of Warcraft?", options = {"a) Human and Orc", "b) Night Elf and Tauren", "c) Gnome and Dwarf", "d) Blood Elf and Undead"}, answer = 2},
    {question = "|TInterface\\icons\\Inv_misc_questionmark:25|t What is the name of the World Tree in Mount Hyjal?", options = {"a) Nordrassil", "b) Teldrassil", "c) Vordrassil", "d) Andrassil"}, answer = 1},
}

local function shuffleTable(tbl)
    for i = #tbl, 2, -1 do
        local j = math.random(i)
        tbl[i], tbl[j] = tbl[j], tbl[i]
    end
end

local CURRENT_QUESTION = 1
local CORRECT_ANSWERS = 0
local PLAYER_QUESTIONS = {}

local function AskQuestion(player, object)
    local currentQuestion = PLAYER_QUESTIONS[CURRENT_QUESTION]
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, currentQuestion.question, 1, 999) -- Display question as non-selectable
    for i, option in ipairs(currentQuestion.options) do
        player:GossipMenuAddItem(0, option, 0, 100 + i) -- Display answers as selectable options
    end
    player:GossipSendMenu(1, object)
end

local function OnGossipHello(event, player, object)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "|TInterface\\icons\\Inv_misc_questionmark:25|t Wanna play some Trivia?", 0, 1)
    player:GossipMenuAddItem(0, "Rules", 0, 2)
    player:GossipMenuAddItem(0, "Goodbye", 0, 3)
    player:GossipSendMenu(1, object)
end

local function OnGossipSelect(event, player, object, sender, intid, code)
    if intid == 1 then
        CURRENT_QUESTION = 1
        CORRECT_ANSWERS = 0
        PLAYER_QUESTIONS = {}
        shuffleTable(QUESTIONS)
        for i = 1, 10 do
            table.insert(PLAYER_QUESTIONS, QUESTIONS[i])
        end
        AskQuestion(player, object)
    elseif intid == 2 then
        player:GossipClearMenu()
        local rulesText = "Rules:\nAnswer 10 trivia questions to win gold!\nEach correct answer rewards you with 20 gold."
        player:GossipMenuAddItem(0, rulesText, 0, 0)
        player:GossipSendMenu(1, object)
    elseif intid == 3 then
        player:GossipComplete()
    elseif intid == 999 then
        -- Do nothing when the question itself is clicked
    elseif intid >= 101 and intid <= 104 then
        local selectedOption = intid - 100
        local currentQuestion = PLAYER_QUESTIONS[CURRENT_QUESTION]
        if selectedOption == currentQuestion.answer then
            CORRECT_ANSWERS = CORRECT_ANSWERS + 1
        end
        CURRENT_QUESTION = CURRENT_QUESTION + 1
        if CURRENT_QUESTION <= 10 then
            AskQuestion(player, object)
        else
            player:SendBroadcastMessage("Trivia game completed. You got " .. CORRECT_ANSWERS .. " questions right.")
            if CORRECT_ANSWERS > 0 then
                local rewardGold = CORRECT_ANSWERS * 20 * 10000 -- 20 gold per correct answer, in copper
                player:ModifyMoney(rewardGold)
                player:SendBroadcastMessage("|cff800080You've been rewarded with " .. (CORRECT_ANSWERS * 20) .. " gold.|r")
            end
            player:GossipComplete()
        end
    end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)
