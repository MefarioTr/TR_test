SET @CGUID := 396687;
SET @OGUID := 252939;
SET @EVENT := 2;

-- Creature templates
UPDATE `creature_template` SET `gossip_menu_id`=5181, `minlevel`=70, `maxlevel`=70 WHERE `entry`=13429; -- Nardstrum Copperpinch
UPDATE `creature_template` SET `gossip_menu_id`=5181, `minlevel`=70, `maxlevel`=70 WHERE `entry`=13430; -- Jaycrue Copperpinch
UPDATE `creature_template` SET `gossip_menu_id`=6813, `minlevel`=70, `maxlevel`=70, `faction`=775, `speed_walk`=1, `npcflag`=1, `unit_flags`=32768 WHERE `entry` IN (15788, 15790); -- Undead Winter Reveler

DELETE FROM `creature_template_addon` WHERE `entry` IN (13429, 13430);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(13429, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 13429 (Nardstrum Copperpinch)
(13430, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''); -- 13430 (Jaycrue Copperpinch)

-- Scaling
DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (13430,13429));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(13430, 0, 0, 0, 417, 47213),
(13429, 0, 0, 0, 417, 47213);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=47213 WHERE (`DifficultyID`=0 AND `Entry` IN (118702,118629,118628,118627,118625,118624,118623,118516,118511,97766,96368,62393,61905,61889,61829,61753,61366,61169,54244,53591,53528,53517,52588,52587,52319,52317,51496,51384,50609,50304,49965,47587,47382,46560,46559,46483,44786,44766,44764,44737,44734,44733,44732,44731,43359,39116,37574,37543,36517,36273,36226,36225,36224,36217,36213,34985,34983,34281,30729,30711,29728,29139,29095,23776,23713,23103,20725,20406,19178,16287,16030,15686,15684,15683,15682,15676,15675,13839,11835,11750,11067,11049,11048,11044,11031,10879,10781,10181,10136,10053,8721,8672,8403,8393,8390,7980,7683,7395,7297,7087,6741,6566,6522,6467,6411,6395,6293,6033,5821,5820,5819,5754,5753,5747,5744,5738,5735,5734,5733,5732,5731,5730,5707,5706,5705,5704,5703,5702,5701,5700,5699,5698,5697,5696,5693,5679,5675,5674,5670,5669,5668,5665,5664,5663,5662,5661,5660,5659,5658,5657,5656,5655,5654,5653,5652,5651,5624,5204,5190,5052,4775,4617,4616,4615,4614,4613,4612,4611,4610,4609,4608,4607,4606,4605,4604,4603,4602,4601,4600,4599,4598,4597,4596,4595,4594,4593,4592,4591,4590,4589,4588,4587,4586,4585,4584,4583,4582,4581,4580,4578,4577,4576,4575,4574,4573,4572,4571,4570,4569,4568,4567,4566,4565,4564,4563,4562,4561,4560,4559,4558,4557,4556,4555,4554,4553,4552,4551,4550,4549,4488,4076,4075,2934,2802,2799,2492,2459,2458,2308,2227,2055,2050,1908,1768,1548,1537,1498,1420,223));
UPDATE `creature_template_scaling` SET `ContentTuningID`=867, `VerifiedBuild`=47213 WHERE (`Entry`=5736 AND `DifficultyID`=0);

-- Vendor data
DELETE FROM `npc_vendor` WHERE (`entry`=13429 AND `item`=17344 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=13429 AND `item`=34413 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=13429 AND `item`=34262 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=13429 AND `item`=34261 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=13429 AND `item`=188680 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=13429 AND `item`=70923 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=13430 AND `item`=21215 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(13429, 13, 34413, 0, 0, 1, 0, 0, 47213), -- Recipe: Hot Apple Cider
(13429, 12, 34262, 0, 0, 1, 0, 0, 47213), -- Pattern: Winter Boots
(13429, 11, 34261, 0, 0, 1, 0, 0, 47213), -- Pattern: Green Winter Clothes
(13429, 8, 188680, 0, 0, 1, 0, 0, 47213), -- Winter Veil Chorus Book
(13429, 7, 70923, 0, 0, 1, 0, 0, 47213), -- Gaudy Winter Veil Sweater
(13430, 1, 21215, 0, 0, 1, 0, 0, 47213); -- Graccu's Mince Meat Fruitcake

UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=47213 WHERE (`entry`=13429 AND `item`=17201 AND `ExtendedCost`=0 AND `type`=1); -- Recipe: Winter Veil Egg Nog
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=47213 WHERE (`entry`=13429 AND `item`=17200 AND `ExtendedCost`=0 AND `type`=1); -- Recipe: Gingerbread Cookie
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=47213 WHERE (`entry`=13429 AND `item`=17196 AND `ExtendedCost`=0 AND `type`=1); -- Holiday Spirits
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=47213 WHERE (`entry`=13429 AND `item`=17194 AND `ExtendedCost`=0 AND `type`=1); -- Holiday Spices
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=47213 WHERE (`entry`=13429 AND `item`=17307 AND `ExtendedCost`=0 AND `type`=1); -- Purple Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=47213 WHERE (`entry`=13429 AND `item`=17304 AND `ExtendedCost`=0 AND `type`=1); -- Green Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=47213 WHERE (`entry`=13429 AND `item`=17303 AND `ExtendedCost`=0 AND `type`=1); -- Blue Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=47213 WHERE (`entry`=13429 AND `item`=17202 AND `ExtendedCost`=0 AND `type`=1); -- Snowball
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=47213 WHERE (`entry`=13430 AND `item`=17402 AND `ExtendedCost`=0 AND `type`=1); -- Greatfather's Winter Ale
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=47213 WHERE (`entry`=13430 AND `item`=17403 AND `ExtendedCost`=0 AND `type`=1); -- Steamwheedle Fizzy Spirits
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=47213 WHERE (`entry`=13430 AND `item`=34410 AND `ExtendedCost`=0 AND `type`=1); -- Honeyed Holiday Ham
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=47213 WHERE (`entry`=13430 AND `item`=17408 AND `ExtendedCost`=0 AND `type`=1); -- Spicy Beefstick
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=47213 WHERE (`entry`=13430 AND `item`=17407 AND `ExtendedCost`=0 AND `type`=1); -- Graccu's Homemade Meat Pie
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=47213 WHERE (`entry`=13430 AND `item`=17406 AND `ExtendedCost`=0 AND `type`=1); -- Holiday Cheesewheel
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=47213 WHERE (`entry`=13430 AND `item`=34412 AND `ExtendedCost`=0 AND `type`=1); -- Sparkling Apple Cider
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=47213 WHERE (`entry`=13430 AND `item`=17405 AND `ExtendedCost`=0 AND `type`=1); -- Green Garden Tea
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=47213 WHERE (`entry`=13430 AND `item`=17404 AND `ExtendedCost`=0 AND `type`=1); -- Blended Bean Brew

-- Creature spawns
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+3;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 13429, 0, 1497, 0, '0', 0, 0, 0, 0, 1629.2291259765625, 218.479278564453125, -43.0193443298339843, 2.216568231582641601, 120, 0, 0, 118565, 0, 0, 0, 0, 0, 47213), -- Nardstrum Copperpinch (Area: 0 - Difficulty: 0)
(@CGUID+1, 13430, 0, 1497, 0, '0', 0, 0, 0, 0, 1630.853271484375, 219.4244232177734375, -43.0193443298339843, 2.164208173751831054, 120, 0, 0, 118565, 0, 0, 0, 0, 0, 47213), -- Jaycrue Copperpinch (Area: 0 - Difficulty: 0)
(@CGUID+2, 15760, 0, 1497, 0, '0', 0, 0, 0, 1, 1637.0889892578125, 236.2733306884765625, -43.0193443298339843, 4.345870018005371093, 120, 0, 0, 112919, 0, 0, 0, 0, 0, 47213), -- Winter Reveler (Area: 0 - Difficulty: 0) (Auras: )
(@CGUID+3, 15760, 0, 1497, 0, '0', 0, 0, 0, 1, 1635.8245849609375, 233.669708251953125, -43.0193443298339843, 1.117010712623596191, 120, 0, 0, 112919, 0, 0, 0, 0, 0, 47213);  -- Winter Reveler (Area: 0 - Difficulty: 0) (Auras: )

DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+2, @CGUID+3);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+2, 0, 0, 0, 257, 0, 0, 0, 0, 0, '26253'), -- 15760 (Winter Reveler)
(@CGUID+3, 0, 0, 0, 257, 0, 0, 0, 0, 0, '26254'); -- 15760 (Winter Reveler)

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+65;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 178428, 0, 1497, 0, '0', 0, 0, 1644.5277099609375, 217.510955810546875, -43.1031074523925781, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183, 120, 255, 1, 47213), -- XMasGift01 (Area: 0 - Difficulty: 0)
(@OGUID+1, 178428, 0, 1497, 0, '0', 0, 0, 1645.580078125, 219.2745208740234375, -42.7628974914550781, 3.194002151489257812, 0, 0, -0.99965667724609375, 0.026201646775007247, 120, 255, 1, 47213), -- XMasGift01 (Area: 0 - Difficulty: 0)
(@OGUID+2, 178429, 0, 1497, 0, '0', 0, 0, 1646.49560546875, 219.5206756591796875, -43.1031951904296875, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738, 120, 255, 1, 47213), -- XMasGift02 (Area: 0 - Difficulty: 0)
(@OGUID+3, 178430, 0, 1497, 0, '0', 0, 0, 1645.520263671875, 219.275604248046875, -43.1031684875488281, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592, 120, 255, 1, 47213), -- XMasGift03 (Area: 0 - Difficulty: 0)
(@OGUID+4, 178431, 0, 1497, 0, '0', 0, 0, 1645.3875732421875, 218.0350494384765625, -43.1031341552734375, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939, 120, 255, 1, 47213), -- XMasGift04 (Area: 0 - Difficulty: 0)
(@OGUID+5, 178432, 0, 1497, 0, '0', 0, 0, 1646.8096923828125, 216.9664154052734375, -43.103118896484375, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 120, 255, 1, 47213), -- XMasGift05 (Area: 0 - Difficulty: 0)
(@OGUID+6, 178432, 0, 1497, 0, '0', 0, 0, 1644.44140625, 218.7921600341796875, -43.1031379699707031, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402, 120, 255, 1, 47213), -- XMasGift05 (Area: 0 - Difficulty: 0)
(@OGUID+7, 178433, 0, 1497, 0, '0', 0, 0, 1645.796630859375, 217.1714935302734375, -43.1031074523925781, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222, 120, 255, 1, 47213), -- XMasGift06 (Area: 0 - Difficulty: 0)
(@OGUID+8, 178434, 0, 1497, 0, '0', 0, 0, 1636.844482421875, 230.8432159423828125, -38.1832466125488281, 2.70525527000427246, 0, 0, 0.97629547119140625, 0.216442063450813293, 120, 255, 1, 47213), -- XMasStocking01 (Area: 0 - Difficulty: 0)
(@OGUID+9, 178435, 0, 1497, 0, '0', 0, 0, 1636.65478515625, 230.313201904296875, -38.1219978332519531, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946, 120, 255, 1, 47213), -- XMasStocking02 (Area: 0 - Difficulty: 0)
(@OGUID+10, 178436, 0, 1497, 0, '0', 0, 0, 1637.024169921875, 231.3515625, -38.2366867065429687, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222, 120, 255, 1, 47213), -- XMasStocking03 (Area: 0 - Difficulty: 0)
(@OGUID+11, 178437, 0, 85, 153, '0', 0, 0, 1595.8489990234375, 248.829864501953125, -44.5700874328613281, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746, 120, 255, 1, 47213), -- Wreath (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+12, 178437, 0, 85, 153, '0', 0, 0, 1587.185791015625, 240.7118072509765625, -44.3019371032714843, 3.106652259826660156, 0, 0, 0.999847412109375, 0.017469281330704689, 120, 255, 1, 47213), -- Wreath (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+13, 178437, 0, 1497, 0, '0', 0, 0, 1595.3021240234375, 231.795135498046875, -44.3782539367675781, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101, 120, 255, 1, 47213), -- Wreath (Area: 0 - Difficulty: 0)
(@OGUID+14, 178437, 0, 1497, 0, '0', 0, 0, 1604.2447509765625, 240.217010498046875, -44.4003372192382812, 6.265733242034912109, 0, 0, -0.00872611999511718, 0.999961912631988525, 120, 255, 1, 47213), -- Wreath (Area: 0 - Difficulty: 0)
(@OGUID+15, 178438, 0, 85, 153, '0', 0, 0, 1555.6927490234375, 248.0243072509765625, -36.4547843933105468, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724, 120, 255, 1, 47213), -- Lights (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+16, 178438, 0, 85, 153, '0', 0, 0, 1575.2529296875, 275.016754150390625, -36.57464599609375, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712, 120, 255, 1, 47213), -- Lights (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+17, 178438, 0, 85, 153, '0', 0, 0, 1572.96533203125, 273.088531494140625, -36.6699409484863281, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432, 120, 255, 1, 47213), -- Lights (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+18, 178438, 0, 85, 153, '0', 0, 0, 1556.640625, 251.015625, -36.4765853881835937, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791, 120, 255, 1, 47213), -- Lights (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+19, 178438, 0, 85, 153, '0', 0, 0, 1589.6700439453125, 280.358001708984375, -36.5545005798339843, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904, 120, 255, 1, 47213), -- Lights (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+20, 178438, 0, 85, 153, '0', 0, 0, 1556.3992919921875, 230.3715362548828125, -36.4690437316894531, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705, 120, 255, 1, 47213), -- Lights (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+21, 178438, 0, 85, 153, '0', 0, 0, 1616.4617919921875, 274.220489501953125, -36.5835762023925781, 0.994837164878845214, 0, 0, 0.477158546447753906, 0.878817260265350341, 120, 255, 1, 47213), -- Lights (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+22, 178438, 0, 1497, 0, '0', 0, 0, 1635.6597900390625, 247.545135498046875, -36.351165771484375, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183, 120, 255, 1, 47213), -- Lights (Area: 0 - Difficulty: 0)
(@OGUID+23, 178438, 0, 1497, 0, '0', 0, 0, 1649.814208984375, 218.219024658203125, -36.4882392883300781, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525, 120, 255, 1, 47213), -- Lights (Area: 0 - Difficulty: 0)
(@OGUID+24, 178438, 0, 1497, 0, '0', 0, 0, 1629.632568359375, 261.488616943359375, -36.6427192687988281, 0.715584874153137207, 0, 0, 0.350207328796386718, 0.936672210693359375, 120, 255, 1, 47213), -- Lights (Area: 0 - Difficulty: 0)
(@OGUID+25, 178438, 0, 1497, 0, '0', 0, 0, 1629.4600830078125, 219.2083282470703125, -36.4536666870117187, 5.619962215423583984, 0, 0, -0.32556724548339843, 0.945518851280212402, 120, 255, 1, 47213), -- Lights (Area: 0 - Difficulty: 0)
(@OGUID+26, 178438, 0, 1497, 0, '0', 0, 0, 1627.6884765625, 264.104156494140625, -36.6370735168457031, 0.575957298278808593, 0, 0, 0.284014701843261718, 0.958819925785064697, 120, 255, 1, 47213), -- Lights (Area: 0 - Difficulty: 0)
(@OGUID+27, 178438, 0, 1497, 0, '0', 0, 0, 1634.7457275390625, 229.68609619140625, -36.4041481018066406, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783, 120, 255, 1, 47213), -- Lights (Area: 0 - Difficulty: 0)
(@OGUID+28, 178438, 0, 1497, 0, '0', 0, 0, 1618.7315673828125, 207.7862396240234375, -36.6290779113769531, 5.270895957946777343, 0, 0, -0.48480892181396484, 0.87462007999420166, 120, 255, 1, 47213), -- Lights (Area: 0 - Difficulty: 0)
(@OGUID+29, 178438, 0, 1497, 0, '0', 0, 0, 1601.8599853515625, 200.0330047607421875, -36.5112991333007812, 1.762782454490661621, 0, 0, 0.771624565124511718, 0.636078238487243652, 120, 255, 1, 47213), -- Lights (Area: 0 - Difficulty: 0)
(@OGUID+30, 178438, 0, 1497, 0, '0', 0, 0, 1586.1700439453125, 201.4019927978515625, -36.3774986267089843, 4.398232460021972656, 0, 0, -0.80901622772216796, 0.587786316871643066, 120, 255, 1, 47213), -- Lights (Area: 0 - Difficulty: 0)
(@OGUID+31, 178438, 0, 1497, 0, '0', 0, 0, 1589.300048828125, 200.4530029296875, -36.4421005249023437, 4.45059061050415039, 0, 0, -0.79335308074951171, 0.608761727809906005, 120, 255, 1, 47213), -- Lights (Area: 0 - Difficulty: 0)
(@OGUID+32, 178438, 0, 1497, 0, '0', 0, 0, 1572.1690673828125, 208.06549072265625, -36.5376052856445312, 0.977383077144622802, 0, 0, 0.469470977783203125, 0.882947921752929687, 120, 255, 1, 47213), -- Lights (Area: 0 - Difficulty: 0)
(@OGUID+33, 178551, 0, 85, 153, '0', 0, 0, 1586.84033203125, 279.833343505859375, -36.3963851928710937, 1.832594871520996093, 0, 0, 0.793353080749511718, 0.608761727809906005, 120, 255, 1, 47213), -- Lights, Broken (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+34, 178551, 0, 85, 153, '0', 0, 0, 1563.8800048828125, 264.798004150390625, -36.663299560546875, 5.84685373306274414, 0, 0, -0.21643924713134765, 0.976296067237854003, 120, 255, 1, 47213), -- Lights, Broken (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+35, 178551, 0, 85, 153, '0', 0, 0, 1555.46337890625, 233.378631591796875, -36.3423957824707031, 3.43830275535583496, 0, 0, -0.98901557922363281, 0.147811368107795715, 120, 255, 1, 47213), -- Lights, Broken (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+36, 178551, 0, 85, 153, '0', 0, 0, 1562.300048828125, 262.052001953125, -36.4425010681152343, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881, 120, 255, 1, 47213), -- Lights, Broken (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+37, 178551, 0, 85, 153, '0', 0, 0, 1605.5521240234375, 279.723968505859375, -36.4851303100585937, 1.308995485305786132, 0, 0, 0.608760833740234375, 0.793353796005249023, 120, 255, 1, 47213), -- Lights, Broken (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+38, 178551, 0, 85, 153, '0', 0, 0, 1602.6441650390625, 280.404510498046875, -36.4615211486816406, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595, 120, 255, 1, 47213), -- Lights, Broken (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+39, 178551, 0, 85, 153, '0', 0, 0, 1619.4107666015625, 272.49993896484375, -36.5721626281738281, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208, 120, 255, 1, 47213), -- Lights, Broken (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+40, 178551, 0, 1497, 0, '0', 0, 0, 1646.1676025390625, 213.659942626953125, -36.4928092956542968, 1.658061861991882324, 0, 0, 0.737277030944824218, 0.67559051513671875, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+41, 178551, 0, 1497, 0, '0', 0, 0, 1635.752685546875, 232.6225128173828125, -36.5015144348144531, 5.969027042388916015, 0, 0, -0.1564340591430664, 0.987688362598419189, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+42, 178551, 0, 1497, 0, '0', 0, 0, 1648.8599853515625, 215.153594970703125, -36.4556465148925781, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+43, 178551, 0, 1497, 0, '0', 0, 0, 1648.8077392578125, 221.1050872802734375, -36.6522560119628906, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+44, 178551, 0, 1497, 0, '0', 0, 0, 1634.904052734375, 250.342498779296875, -36.3342475891113281, 0.296705186367034912, 0, 0, 0.147809028625488281, 0.989015936851501464, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+45, 178551, 0, 1497, 0, '0', 0, 0, 1632.9166259765625, 219.2395782470703125, -36.3693313598632812, 1.117009282112121582, 0, 0, 0.529918670654296875, 0.84804844856262207, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+46, 178551, 0, 1497, 0, '0', 0, 0, 1635.6322021484375, 227.1669921875, -36.5431098937988281, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+47, 178551, 0, 1497, 0, '0', 0, 0, 1627.6900634765625, 216.647735595703125, -36.4423294067382812, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+48, 178551, 0, 1497, 0, '0', 0, 0, 1616.1185302734375, 205.969940185546875, -36.5110740661621093, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+49, 178551, 0, 1497, 0, '0', 0, 0, 1604.699951171875, 200.72900390625, -36.4510993957519531, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+50, 178551, 0, 1497, 0, '0', 0, 0, 1574.7318115234375, 206.3705596923828125, -36.4860000610351562, 4.101525306701660156, 0, 0, -0.88701057434082031, 0.461749136447906494, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+51, 178551, 0, 1497, 0, '0', 0, 0, 1563.7159423828125, 216.6520233154296875, -36.4788894653320312, 3.769911527633666992, 0, 0, -0.95105648040771484, 0.309017121791839599, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+52, 178551, 0, 1497, 0, '0', 0, 0, 1561.97607421875, 219.1158294677734375, -36.4872055053710937, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872, 120, 255, 1, 47213), -- Lights, Broken (Area: 0 - Difficulty: 0)
(@OGUID+53, 178554, 0, 1497, 0, '0', 0, 0, 1633.146728515625, 231.6735076904296875, -35.6869544982910156, 4.066620349884033203, 0, 0, -0.89493370056152343, 0.44619917869567871, 120, 255, 1, 47213), -- Mistletoe (Area: 0 - Difficulty: 0)
(@OGUID+54, 178645, 0, 1497, 0, '0', 0, 0, 1642.4442138671875, 224.40484619140625, -36.7174186706542968, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738, 120, 255, 1, 47213), -- Lights x3 (Area: 0 - Difficulty: 0)
(@OGUID+55, 178647, 0, 1497, 0, '0', 0, 0, 1646.512939453125, 218.2506561279296875, -43.1031494140625, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708, 120, 255, 1, 47213), -- Christmas Tree (Area: 0 - Difficulty: 0)
(@OGUID+56, 178745, 0, 85, 153, '0', 0, 0, 1588.4791259765625, 240.0069427490234375, -48.0515327453613281, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+57, 178745, 0, 85, 153, '0', 0, 0, 1595.7413330078125, 247.951385498046875, -48.0584793090820312, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Ruins of Lordaeron - Difficulty: 0)
(@OGUID+58, 178745, 0, 1497, 0, '0', 0, 0, 1639.5538330078125, 215.954864501953125, -36.4585227966308593, 4.241150379180908203, 0, 0, -0.85264015197753906, 0.522498607635498046, 120, 255, 1, 47213), -- Lights x3, Broken (Area: 0 - Difficulty: 0)
(@OGUID+59, 178745, 0, 1497, 0, '0', 0, 0, 1595.7413330078125, 233.1805572509765625, -48.0654335021972656, 1.535889506340026855, 0, 0, 0.694658279418945312, 0.719339847564697265, 120, 255, 1, 47213), -- Lights x3, Broken (Area: 0 - Difficulty: 0)
(@OGUID+60, 178745, 0, 1497, 0, '0', 0, 0, 1603.2916259765625, 240.3958282470703125, -48.0445976257324218, 3.124123096466064453, 0, 0, 0.99996185302734375, 0.008734640665352344, 120, 255, 1, 47213), -- Lights x3, Broken (Area: 0 - Difficulty: 0)
(@OGUID+61, 178746, 0, 1497, 0, '0', 0, 0, 1629.754638671875, 219.4349517822265625, -43.1026763916015625, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916, 120, 255, 1, 47213), -- Smokywood Pastures (Area: 0 - Difficulty: 0)
(@OGUID+62, 180715, 0, 1497, 0, '0', 0, 0, 1634.726318359375, 227.2735443115234375, -43.1026763916015625, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712, 120, 255, 1, 47213), -- Holly Preserver (Area: 0 - Difficulty: 0)
(@OGUID+63, 180844, 0, 1497, 0, '0', 0, 0, 1636.4837646484375, 234.9425506591796875, -35.5771827697753906, 0.575957298278808593, 0, 0, 0.284014701843261718, 0.958819925785064697, 120, 255, 1, 47213), -- Mistletoe (Area: 0 - Difficulty: 0)
(@OGUID+64, 187235, 0, 14046, 14046, '0', 0, 0, 1761.9300537109375, 64.971099853515625, -45.2478981018066406, 5.916667938232421875, 0, 0, -0.18223476409912109, 0.98325502872467041, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Tirisfal Glades - Difficulty: 0)
(@OGUID+65, 187235, 0, 14046, 14046, '0', 0, 0, 1769.0699462890625, 72.61750030517578125, -45.2478981018066406, 5.078907966613769531, 0, 0, -0.56640625, 0.824126183986663818, 120, 255, 1, 47213); -- Standing, Exterior, Medium - Xmas (Area: Tirisfal Glades - Difficulty: 0)

-- Event spawns
DELETE FROM `game_event_creature` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @CGUID+0 AND @CGUID+3;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(@EVENT, @CGUID+0),
(@EVENT, @CGUID+1),
(@EVENT, @CGUID+2),
(@EVENT, @CGUID+3);

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @OGUID+0 AND @OGUID+65;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@EVENT, @OGUID+0),
(@EVENT, @OGUID+1),
(@EVENT, @OGUID+2),
(@EVENT, @OGUID+3),
(@EVENT, @OGUID+4),
(@EVENT, @OGUID+5),
(@EVENT, @OGUID+6),
(@EVENT, @OGUID+7),
(@EVENT, @OGUID+8),
(@EVENT, @OGUID+9),
(@EVENT, @OGUID+10),
(@EVENT, @OGUID+11),
(@EVENT, @OGUID+12),
(@EVENT, @OGUID+13),
(@EVENT, @OGUID+14),
(@EVENT, @OGUID+15),
(@EVENT, @OGUID+16),
(@EVENT, @OGUID+17),
(@EVENT, @OGUID+18),
(@EVENT, @OGUID+19),
(@EVENT, @OGUID+20),
(@EVENT, @OGUID+21),
(@EVENT, @OGUID+22),
(@EVENT, @OGUID+23),
(@EVENT, @OGUID+24),
(@EVENT, @OGUID+25),
(@EVENT, @OGUID+26),
(@EVENT, @OGUID+27),
(@EVENT, @OGUID+28),
(@EVENT, @OGUID+29),
(@EVENT, @OGUID+30),
(@EVENT, @OGUID+31),
(@EVENT, @OGUID+32),
(@EVENT, @OGUID+33),
(@EVENT, @OGUID+34),
(@EVENT, @OGUID+35),
(@EVENT, @OGUID+36),
(@EVENT, @OGUID+37),
(@EVENT, @OGUID+38),
(@EVENT, @OGUID+39),
(@EVENT, @OGUID+40),
(@EVENT, @OGUID+41),
(@EVENT, @OGUID+42),
(@EVENT, @OGUID+43),
(@EVENT, @OGUID+44),
(@EVENT, @OGUID+45),
(@EVENT, @OGUID+46),
(@EVENT, @OGUID+47),
(@EVENT, @OGUID+48),
(@EVENT, @OGUID+49),
(@EVENT, @OGUID+50),
(@EVENT, @OGUID+51),
(@EVENT, @OGUID+52),
(@EVENT, @OGUID+53),
(@EVENT, @OGUID+54),
(@EVENT, @OGUID+55),
(@EVENT, @OGUID+56),
(@EVENT, @OGUID+57),
(@EVENT, @OGUID+58),
(@EVENT, @OGUID+59),
(@EVENT, @OGUID+60),
(@EVENT, @OGUID+61),
(@EVENT, @OGUID+62),
(@EVENT, @OGUID+63),
(@EVENT, @OGUID+64),
(@EVENT, @OGUID+65);
