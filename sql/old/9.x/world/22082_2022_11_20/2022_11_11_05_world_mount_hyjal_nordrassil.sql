SET @OGUID := 246116;

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46366 WHERE `entry`=208162; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=35 WHERE `entry`=208162; -- Candy Bucket

-- Quests
DELETE FROM `quest_offer_reward` WHERE `ID`=28999;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(28999, 0, 0, 0, 0, 0, 0, 0, 0, 'Candy buckets like this are located in inns throughout the realms. Go ahead... take some!', 46366); -- Candy Bucket

DELETE FROM `gameobject_queststarter` WHERE `id`=208162;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(208162, 28999, 46366);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=208162 AND `quest`=28999);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=208162;

-- Old gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN 228917 AND 228978;
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN 228917 AND 228978;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+62;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 1, 616, 5038, '0', 0, 0, 5532.0634765625, -3612.060791015625, 1569.572021484375, 0.314158439636230468, 0, 0, 0.156434059143066406, 0.987688362598419189, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+1, 180405, 1, 616, 5038, '0', 0, 0, 5520.27978515625, -3614.48779296875, 1570.1107177734375, 1.884953022003173828, 0, 0, 0.809016227722167968, 0.587786316871643066, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+2, 180406, 1, 616, 5038, '0', 0, 0, 5535.25, -3616.467041015625, 1568.310791015625, 0.942476630210876464, 0, 0, 0.453989982604980468, 0.891006767749786376, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+3, 180406, 1, 616, 5038, '0', 0, 0, 5523.18603515625, -3618.80908203125, 1569.5177001953125, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+4, 180407, 1, 616, 5038, '0', 0, 0, 5529.322265625, -3608.166748046875, 1570.1055908203125, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111, 120, 255, 1, 46366), -- G_Pumpkin_03 (Area: Nordrassil - Difficulty: 0)
(@OGUID+5, 180407, 1, 616, 5038, '0', 0, 0, 5526.35791015625, -3623.032958984375, 1568.2596435546875, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- G_Pumpkin_03 (Area: Nordrassil - Difficulty: 0)
(@OGUID+6, 180408, 1, 616, 5038, '0', 0, 0, 5535.31005859375, -3616.532958984375, 1569.9779052734375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- G_WitchHat_01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+7, 180410, 1, 616, 5038, '0', 0, 0, 5494.68994140625, -3591.41845703125, 1573.1641845703125, 0.349065244197845458, 0, 0, 0.173647880554199218, 0.984807789325714111, 120, 255, 1, 46366), -- G_HangingSkeleton_01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+8, 180410, 1, 616, 5038, '0', 0, 0, 5515.73876953125, -3576.3837890625, 1573.1318359375, 4.066620349884033203, 0, 0, -0.89493370056152343, 0.44619917869567871, 120, 255, 1, 46366), -- G_HangingSkeleton_01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+9, 180411, 1, 616, 5038, '0', 0, 0, 5530.08837890625, -3618.829833984375, 1581.69580078125, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 120, 255, 1, 46366), -- G_Ghost_01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+10, 180415, 1, 616, 5038, '0', 0, 0, 5521.8359375, -3615.958251953125, 1569.9437255859375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+11, 180415, 1, 616, 5038, '0', 0, 0, 5524.921875, -3620.63720703125, 1569.051513671875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+12, 180415, 1, 616, 5038, '0', 0, 0, 5533.353515625, -3614.0625, 1569.1802978515625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+13, 180415, 1, 616, 5038, '0', 0, 0, 5530.3212890625, -3609.927001953125, 1569.9405517578125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+14, 180425, 1, 616, 5038, '0', 0, 0, 5523.6572265625, -3624.58154296875, 1569.5831298828125, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507, 120, 255, 1, 46366), -- SkullCandle01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+15, 180426, 1, 616, 5038, '0', 0, 0, 5544.80712890625, -3634.197998046875, 1566.516357421875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+16, 180426, 1, 616, 5038, '0', 0, 0, 5532.0859375, -3644.67529296875, 1567.767333984375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+17, 180426, 1, 616, 5038, '0', 0, 0, 5556.27783203125, -3616.927001953125, 1569.1402587890625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+18, 180426, 1, 616, 5038, '0', 0, 0, 5560.01220703125, -3606.36279296875, 1570.699951171875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+19, 180427, 1, 616, 5038, '0', 0, 0, 5555.66845703125, -3628.1181640625, 1567.7154541015625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+20, 180427, 1, 616, 5038, '0', 0, 0, 5531.61279296875, -3652.779541015625, 1568.7822265625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+21, 180427, 1, 616, 5038, '0', 0, 0, 5542.798828125, -3644.77783203125, 1566.1129150390625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+22, 180427, 1, 616, 5038, '0', 0, 0, 5562.9912109375, -3626.70654296875, 1570.3551025390625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+23, 180471, 1, 616, 5038, '0', 0, 0, 5521.7900390625, -3610.5400390625, 1577.321533203125, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+24, 180471, 1, 616, 5038, '0', 0, 0, 5521.7900390625, -3610.5400390625, 1575.705810546875, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+25, 180471, 1, 616, 5038, '0', 0, 0, 5524.744140625, -3608.279541015625, 1577.487548828125, 0.610863447189331054, 0, 0, 0.3007049560546875, 0.953717231750488281, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+26, 180471, 1, 616, 5038, '0', 0, 0, 5522.501953125, -3609.982666015625, 1578.003173828125, 0.593410074710845947, 0, 0, 0.292370796203613281, 0.95630502700805664, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+27, 180471, 1, 616, 5038, '0', 0, 0, 5524.1318359375, -3608.8994140625, 1578.1060791015625, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+28, 180471, 1, 616, 5038, '0', 0, 0, 5524.744140625, -3608.279541015625, 1575.8311767578125, 0.610863447189331054, 0, 0, 0.3007049560546875, 0.953717231750488281, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+29, 180471, 1, 616, 5038, '0', 0, 0, 5521.1494140625, -3610.99658203125, 1576.4947509765625, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+30, 180471, 1, 616, 5038, '0', 0, 0, 5525.4912109375, -3607.807373046875, 1576.534423828125, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+31, 180471, 1, 616, 5038, '0', 0, 0, 5519.7021484375, -3573.729248046875, 1575.5869140625, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+32, 180471, 1, 616, 5038, '0', 0, 0, 5521.84716796875, -3572.123291015625, 1575.5875244140625, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+33, 180471, 1, 616, 5038, '0', 0, 0, 5479.0068359375, -3602.58154296875, 1575.5059814453125, 0.610863447189331054, 0, 0, 0.3007049560546875, 0.953717231750488281, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+34, 180471, 1, 616, 5038, '0', 0, 0, 5486.4921875, -3596.901123046875, 1575.576904296875, 0.593410074710845947, 0, 0, 0.292370796203613281, 0.95630502700805664, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+35, 180471, 1, 616, 5038, '0', 0, 0, 5488.142578125, -3595.751708984375, 1575.5767822265625, 0.575957298278808593, 0, 0, 0.284014701843261718, 0.958819925785064697, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+36, 180471, 1, 616, 5038, '0', 0, 0, 5469.31494140625, -3609.600830078125, 1575.4942626953125, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+37, 180471, 1, 616, 5038, '0', 0, 0, 5490.3115234375, -3594.241455078125, 1575.5728759765625, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+38, 180471, 1, 616, 5038, '0', 0, 0, 5471.37841796875, -3608.098876953125, 1575.4786376953125, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+39, 180471, 1, 616, 5038, '0', 0, 0, 5482.6474609375, -3600.064208984375, 1575.5040283203125, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+40, 180471, 1, 616, 5038, '0', 0, 0, 5477.265625, -3603.795166015625, 1575.5067138671875, 0.610863447189331054, 0, 0, 0.3007049560546875, 0.953717231750488281, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+41, 180471, 1, 616, 5038, '0', 0, 0, 5472.70849609375, -3607.15283203125, 1575.4630126953125, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+42, 180471, 1, 616, 5038, '0', 0, 0, 5481.244140625, -3601.064208984375, 1575.5040283203125, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+43, 180471, 1, 616, 5038, '0', 0, 0, 5491.98095703125, -3593.078125, 1575.5728759765625, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+44, 180471, 1, 616, 5038, '0', 0, 0, 5523.509765625, -3570.9462890625, 1575.5875244140625, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+45, 180471, 1, 616, 5038, '0', 0, 0, 5518.17041015625, -3574.83154296875, 1575.5875244140625, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+46, 180471, 1, 616, 5038, '0', 0, 0, 5527.8974609375, -3567.73779296875, 1575.5908203125, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+47, 180471, 1, 616, 5038, '0', 0, 0, 5537.02880859375, -3561.3369140625, 1575.5875244140625, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+48, 180471, 1, 616, 5038, '0', 0, 0, 5541.9619140625, -3557.786376953125, 1575.5888671875, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+49, 180471, 1, 616, 5038, '0', 0, 0, 5531.57470703125, -3565.07470703125, 1575.5914306640625, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+50, 180471, 1, 616, 5038, '0', 0, 0, 5533.3896484375, -3563.609375, 1575.5953369140625, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+51, 180471, 1, 616, 5038, '0', 0, 0, 5540.5556640625, -3558.79345703125, 1575.5888671875, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+52, 180471, 1, 616, 5038, '0', 0, 0, 5538.658203125, -3560.114501953125, 1575.5894775390625, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+53, 180471, 1, 616, 5038, '0', 0, 0, 5529.65087890625, -3566.482666015625, 1575.5908203125, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+54, 180471, 1, 616, 5038, '0', 0, 0, 5467.98095703125, -3610.520751953125, 1575.5079345703125, 0.610863447189331054, 0, 0, 0.3007049560546875, 0.953717231750488281, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Nordrassil - Difficulty: 0)
(@OGUID+55, 180472, 1, 616, 5038, '0', 0, 0, 5470.09033203125, -3608.666748046875, 1576.7391357421875, 0.209439441561698913, 0, 0, 0.104528427124023437, 0.994521915912628173, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+56, 180472, 1, 616, 5038, '0', 0, 0, 5520.61279296875, -3572.864501953125, 1576.7342529296875, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+57, 180472, 1, 616, 5038, '0', 0, 0, 5479.96630859375, -3601.796875, 1576.7352294921875, 4.642575740814208984, 0, 0, -0.731353759765625, 0.681998312473297119, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+58, 180472, 1, 616, 5038, '0', 0, 0, 5488.9912109375, -3594.84033203125, 1576.7471923828125, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+59, 180472, 1, 616, 5038, '0', 0, 0, 5539.4375, -3559.26220703125, 1576.7379150390625, 5.6897735595703125, 0, 0, -0.29237174987792968, 0.956304728984832763, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+60, 180472, 1, 616, 5038, '0', 0, 0, 5530.41064453125, -3565.70654296875, 1576.7376708984375, 5.532694816589355468, 0, 0, -0.3665008544921875, 0.93041771650314331, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Nordrassil - Difficulty: 0)
(@OGUID+61, 180523, 1, 616, 5038, '0', 0, 0, 5516.55810546875, -3610.369873046875, 1570.4957275390625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Apple Bob (Area: Nordrassil - Difficulty: 0)
(@OGUID+62, 208162, 1, 616, 5038, '0', 0, 0, 5512.205078125, -3606.0869140625, 1570.0516357421875, 2.129300594329833984, 0, 0, 0.874619483947753906, 0.484810054302215576, 120, 255, 1, 46366); -- Candy Bucket (Area: Nordrassil - Difficulty: 0)

-- Event spawns
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+62;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(12, @OGUID+0),
(12, @OGUID+1),
(12, @OGUID+2),
(12, @OGUID+3),
(12, @OGUID+4),
(12, @OGUID+5),
(12, @OGUID+6),
(12, @OGUID+7),
(12, @OGUID+8),
(12, @OGUID+9),
(12, @OGUID+10),
(12, @OGUID+11),
(12, @OGUID+12),
(12, @OGUID+13),
(12, @OGUID+14),
(12, @OGUID+15),
(12, @OGUID+16),
(12, @OGUID+17),
(12, @OGUID+18),
(12, @OGUID+19),
(12, @OGUID+20),
(12, @OGUID+21),
(12, @OGUID+22),
(12, @OGUID+23),
(12, @OGUID+24),
(12, @OGUID+25),
(12, @OGUID+26),
(12, @OGUID+27),
(12, @OGUID+28),
(12, @OGUID+29),
(12, @OGUID+30),
(12, @OGUID+31),
(12, @OGUID+32),
(12, @OGUID+33),
(12, @OGUID+34),
(12, @OGUID+35),
(12, @OGUID+36),
(12, @OGUID+37),
(12, @OGUID+38),
(12, @OGUID+39),
(12, @OGUID+40),
(12, @OGUID+41),
(12, @OGUID+42),
(12, @OGUID+43),
(12, @OGUID+44),
(12, @OGUID+45),
(12, @OGUID+46),
(12, @OGUID+47),
(12, @OGUID+48),
(12, @OGUID+49),
(12, @OGUID+50),
(12, @OGUID+51),
(12, @OGUID+52),
(12, @OGUID+53),
(12, @OGUID+54),
(12, @OGUID+55),
(12, @OGUID+56),
(12, @OGUID+57),
(12, @OGUID+58),
(12, @OGUID+59),
(12, @OGUID+60),
(12, @OGUID+61),
(12, @OGUID+62);
