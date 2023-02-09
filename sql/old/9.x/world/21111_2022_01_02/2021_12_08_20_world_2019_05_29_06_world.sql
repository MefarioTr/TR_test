-- 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (22966,22967);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (22966,22967) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(22966, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 39782, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lightsworn Elekk Rider - On death - Cast Summon Lightsworn Elekk'),
(22966, 0, 1, 0, 0, 0, 100, 0, 2000, 3000, 20000, 25000, 11, 30931, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lightsworn Elekk Rider - IC - Cast Battle Shout'),
(22967, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 39783, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scryer Cavalier - On death - Cast Summon Summon Scryer Hawkstrider'),
(22967, 0, 1, 0, 0, 0, 100, 0, 2000, 3000, 20000, 25000, 11, 30931, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scryer Cavalier - IC - Cast Battle Shout'),
(22967, 0, 2, 0, 0, 0, 100, 0, 4000, 5000, 9000, 12000, 11, 35871, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Scryer Cavalier - IC - Cast Spellbreaker');

DELETE FROM `creature` WHERE `id`  IN (22967) AND `guid` IN (107125, 107126, 107127, 107131, 107132);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnDifficulties`, `phaseId`,  `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(107125, 22967, 530, '0', 0, 1, -3609.14, 739.651, -9.26425, 0.196605, 180, 0, 0),
(107126, 22967, 530, '0', 0, 1, -3605.89, 738.174, -9.79895, 0.130639, 180, 0, 0),
(107127, 22967, 530, '0', 0, 1, -3608.70, 730.693, -9.24896, 0.130639, 180, 0, 0),
(107131, 22967, 530, '0', 0, 1, -3602.65, 735.693, -10.0605, 0.130639, 180, 0, 2),
(107132, 22967, 530, '0', 0, 1, -3605.52, 733.791, -9.77686, 0.130639, 180, 0, 0);

DELETE FROM `creature_formations` WHERE `leaderGUID` IN (107131);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(107131, 107131, 0, 0, 515, 7, 33),
(107131, 107125, 3, 80, 515, 7, 33),
(107131, 107126, 3, 280, 515, 7, 33),
(107131, 107127, 5, 290, 515, 7, 33),
(107131, 107132, 5, 70, 515, 7, 33);

DELETE FROM `creature_addon` WHERE `guid`=107131;
INSERT INTO `creature_addon` (`guid`, `mount`, `path_id`,`bytes2`) VALUES
(107131,20359,1071310,1);

DELETE FROM `waypoint_data` WHERE `id`=1071310;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`, `delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(1071310, 1, -3585.473, 736.092, -11.53206, 0, 0, 0, 100, 0),
(1071310, 2, -3574.698, 733.858, -11.94245, 0, 0, 0, 100, 0),
(1071310, 3, -3570.311, 713.762, -10.69165, 0, 0, 0, 100, 0),
(1071310, 4, -3570.568, 696.263, -7.77723, 0, 0, 0, 100, 0),
(1071310, 5, -3570.773, 682.265, -4.70992, 0, 0, 0, 100, 0),
(1071310, 6, -3570.978, 668.266, -2.22381, 0, 0, 0, 100, 0),
(1071310, 7, -3571.123, 658.327, -0.05080, 0, 0, 0, 100, 0),
(1071310, 8, -3570.386, 689.686, -6.29156, 0, 0, 0, 100, 0),
(1071310, 9, -3570.456, 703.685, -9.19855, 0, 0, 0, 100, 0),
(1071310, 10, -3570.526, 717.685, -11.02138, 0, 0, 0, 100, 0),
(1071310, 11, -3576.542, 733.293, -11.79012, 0, 0, 0, 100, 0),
(1071310, 12, -3590.236, 736.337, -11.10236, 0, 0, 0, 100, 0),
(1071310, 13, -3611.194, 735.276, -9.34106, 0, 0, 0, 100, 0),
(1071310, 14, -3635.521, 728.005, -5.17258, 0, 0, 0, 100, 0),
(1071310, 15, -3675.400, 737.709, -0.49244, 0, 0, 0, 100, 0),
(1071310, 16, -3706.154, 744.523, 3.20329, 0, 0, 0, 100, 0),
(1071310, 17, -3726.671, 749.002, 6.01636, 0, 0, 0, 100, 0),
(1071310, 18, -3759.882, 748.665, 8.50595, 0, 0, 0, 100, 0),
(1071310, 19, -3803.252, 749.253, 10.82732, 0, 0, 0, 100, 0),
(1071310, 20, -3841.730, 750.259, 10.55714, 0, 0, 0, 100, 0),
(1071310, 21, -3865.774, 755.975, 10.18580, 0, 0, 0, 100, 0),
(1071310, 22, -3881.146, 774.939, 9.56366, 0, 0, 0, 100, 0),
(1071310, 23, -3883.411, 810.948, 11.25312, 0, 0, 0, 100, 0),
(1071310, 24, -3887.501, 841.792, 14.20384, 0, 0, 0, 100, 0),
(1071310, 25, -3886.958, 869.633, 17.27135, 0, 0, 0, 100, 0),
(1071310, 26, -3880.381, 894.792, 18.94596, 0, 0, 0, 100, 0),
(1071310, 27, -3885.486, 941.345, 21.53461, 0, 0, 0, 100, 0),
(1071310, 28, -3881.781, 973.585, 23.36527, 0, 0, 0, 100, 0),
(1071310, 29, -3883.953, 1008.998, 23.60779, 0, 0, 0, 100, 0),
(1071310, 30, -3927.679, 1049.618, 25.69530, 0, 0, 0, 100, 0),
(1071310, 31, -3956.406, 1080.100, 27.58384, 0, 0, 0, 100, 0),
(1071310, 32, -3965.577, 1090.647, 28.77282, 0, 0, 0, 100, 0),
(1071310, 33, -3987.766, 1118.845, 34.72477, 0, 0, 0, 100, 0),
(1071310, 34, -3965.577, 1090.647, 28.77282, 0, 0, 0, 100, 0),
(1071310, 35, -3956.406, 1080.100, 27.58384, 0, 0, 0, 100, 0),
(1071310, 36, -3927.679, 1049.618, 25.69530, 0, 0, 0, 100, 0),
(1071310, 37, -3883.953, 1008.998, 23.60779, 0, 0, 0, 100, 0),
(1071310, 38, -3881.781, 973.585, 23.36527, 0, 0, 0, 100, 0),
(1071310, 39, -3885.486, 941.345, 21.53461, 0, 0, 0, 100, 0),
(1071310, 40, -3880.381, 894.792, 18.94596, 0, 0, 0, 100, 0),
(1071310, 41, -3886.958, 869.633, 17.27135, 0, 0, 0, 100, 0),
(1071310, 42, -3887.501, 841.792, 14.20384, 0, 0, 0, 100, 0),
(1071310, 43, -3883.411, 810.948, 11.25312, 0, 0, 0, 100, 0),
(1071310, 44, -3881.146, 774.939, 9.56366, 0, 0, 0, 100, 0),
(1071310, 45, -3865.774, 755.975, 10.18580, 0, 0, 0, 100, 0),
(1071310, 46, -3841.730, 750.259, 10.55714, 0, 0, 0, 100, 0),
(1071310, 47, -3803.252, 749.253, 10.82732, 0, 0, 0, 100, 0),
(1071310, 48, -3759.882, 748.665, 8.50595, 0, 0, 0, 100, 0),
(1071310, 49, -3726.671, 749.002, 6.01636, 0, 0, 0, 100, 0),
(1071310, 50, -3706.154, 744.523, 3.20329, 0, 0, 0, 100, 0),
(1071310, 51, -3675.400, 737.709, -0.49244, 0, 0, 0, 100, 0),
(1071310, 52, -3635.521, 728.005, -5.17258, 0, 0, 0, 100, 0),
(1071310, 53, -3611.194, 735.276, -9.34106, 0, 0, 0, 100, 0),
(1071310, 54, -3590.236, 736.337, -11.10236, 0, 0, 0, 100, 0),
(1071310, 55, -3576.542, 733.293, -11.79012, 0, 0, 0, 100, 0),
(1071310, 56, -3570.526, 717.685, -11.02138, 0, 0, 0, 100, 0),
(1071310, 57, -3570.456, 703.685, -9.19855, 0, 0, 0, 100, 0),
(1071310, 58, -3570.386, 689.686, -6.29156, 0, 0, 0, 100, 0),
(1071310, 59, -3571.123, 658.327, -0.05080, 0, 0, 0, 100, 0),
(1071310, 60, -3570.978, 668.266, -2.22381, 0, 0, 0, 100, 0),
(1071310, 61, -3570.773, 682.265, -4.70992, 0, 0, 0, 100, 0),
(1071310, 62, -3570.568, 696.263, -7.77723, 0, 0, 0, 100, 0),
(1071310, 63, -3570.311, 713.762, -10.69165, 0, 0, 0, 100, 0),
(1071310, 64, -3574.698, 733.858, -11.94245, 0, 0, 0, 100, 0),
(1071310, 65, -3585.473, 736.092, -11.53206, 0, 0, 0, 100, 0);
