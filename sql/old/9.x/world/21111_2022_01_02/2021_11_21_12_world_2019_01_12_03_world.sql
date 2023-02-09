-- 
DELETE FROM `creature` WHERE `guid` IN (77867,77868,77869,77870,77871,77872,78250,78251,78252,78253,78254,78255,78256,78257,78258,78259,78260);
DELETE FROM `creature_addon` WHERE `guid` IN (77867,77868,77869,77870,77871,77872,78250,78251,78252,78253,78254,78255,78256,78257,78258,78259,78260);
DELETE FROM `spawn_group` WHERE `spawnType`=0 AND `spawnId` IN (77867,77868,77869,77870,77871,77872,78250,78251,78252,78253,78254,78255,78256,78257,78258,78259,78260);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnDifficulties`, `phaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(77867, 22204, 530, '0', 0, 0, 0, 1323.410, 7214.823, 375.9625, 3.4196240, 300, 0, 0, 7181, 0, 2),
(77868, 22204, 530, '0', 0, 0, 0, 1482.765, 7281.249, 369.7231, 5.9280690, 300, 0, 0, 7181, 0, 2),
(77869, 22204, 530, '0', 0, 0, 0, 1708.409, 7377.730, 370.8972, 5.8992130, 300, 0, 0, 7181, 0, 0),
(77870, 22204, 530, '0', 0, 0, 0, 1686.952, 7344.332, 370.1348, 5.5676000, 300, 0, 0, 7181, 0, 0),
(77871, 22204, 530, '0', 0, 0, 0, 1627.412, 7241.339, 369.1410, 0.6632251, 300, 0, 0, 7181, 0, 0),
(77872, 22204, 530, '0', 0, 0, 0, 1523.365, 7300.664, 367.4539, 0.7679449, 300, 0, 0, 7181, 0, 0),
(78250, 22204, 530, '0', 0, 0, 0, 1445.035, 7292.289, 374.6195, 2.3038350, 300, 0, 0, 7181, 0, 0),
(78251, 22204, 530, '0', 0, 0, 0, 1417.439, 7363.144, 370.8791, 2.3911010, 300, 0, 0, 7181, 0, 0),
(78252, 22204, 530, '0', 0, 0, 0, 1345.571, 7305.839, 369.2062, 3.1939530, 300, 0, 0, 7181, 0, 0),
(78253, 22204, 530, '0', 0, 0, 0, 1330.575, 7364.441, 367.8244, 3.1415930, 300, 0, 0, 7181, 0, 0),
(78254, 22204, 530, '0', 0, 0, 0, 1345.022, 7210.953, 375.6053, 1.0122910, 300, 0, 0, 7181, 0, 0),
(78255, 22204, 530, '0', 0, 0, 0, 1318.107, 7177.963, 375.4083, 3.5430180, 300, 0, 0, 7181, 0, 0),
(78256, 22204, 530, '0', 0, 0, 0, 1355.457, 7167.923, 371.4182, 5.8817600, 300, 0, 0, 7181, 0, 0),
(78257, 22204, 530, '0', 0, 0, 0, 1275.307, 7158.457, 374.2249, 0.9424778, 300, 0, 0, 7181, 0, 0),
(78258, 22204, 530, '0', 0, 0, 0, 1450.731, 7220.193, 371.3026, 2.9670600, 300, 0, 0, 7181, 0, 0),
(78259, 22204, 530, '0', 0, 0, 0, 1518.461, 7217.136, 370.4280, 5.5676000, 300, 0, 0, 7181, 0, 0),
(78260, 22204, 530, '0', 0, 0, 0, 1649.613, 7198.792, 369.7657, 0.1396263, 300, 0, 0, 7181, 0, 0);

DELETE FROM `creature_addon` WHERE guid IN (77867,77868);
INSERT INTO `creature_addon` (`guid`, `path_id`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(77867, 778670, 0, 0, 0, ""),
(77868, 778680, 0, 0, 0, "");

DELETE FROM `waypoint_data` WHERE `id` IN (778670,778680);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`action`, `action_chance`) VALUES
(778670, 1, 1293.462, 7206.271, 371.2353, 0, 0, 100),
(778670, 2, 1291.552, 7185.870, 371.7606, 0, 0, 100),
(778670, 3, 1298.961, 7160.909, 371.4702, 0, 0, 100),
(778670, 4, 1324.143, 7153.461, 370.9697, 0, 0, 100),
(778670, 5, 1341.092, 7171.108, 373.4405, 0, 0, 100),
(778670, 6, 1324.143, 7153.461, 370.9697, 0, 0, 100),
(778670, 7, 1298.961, 7160.909, 371.4702, 0, 0, 100),
(778670, 8, 1291.552, 7185.870, 371.7606, 0, 0, 100),
(778670, 9, 1293.462, 7206.271, 371.2353, 0, 0, 100),
(778670, 10, 1320.157, 7220.999, 374.6070, 0, 0, 100),
(778680, 1, 1505.330, 7272.882, 369.0820, 0, 0, 100),
(778680, 2, 1506.815, 7255.070, 370.5767, 0, 0, 100),
(778680, 3, 1494.323, 7229.001, 369.8154, 0, 0, 100),
(778680, 4, 1467.942, 7225.300, 370.6503, 0, 0, 100),
(778680, 5, 1453.913, 7238.100, 369.8799, 0, 0, 100),
(778680, 6, 1448.150, 7257.373, 369.0083, 0, 0, 100),
(778680, 7, 1455.776, 7274.988, 373.0260, 0, 0, 100),
(778680, 8, 1481.676, 7281.820, 369.8588, 0, 0, 100);
