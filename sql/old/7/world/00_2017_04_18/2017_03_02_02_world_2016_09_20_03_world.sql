-- Remove all Blighted Elk & Rabid Grizzly spawns
DELETE FROM `creature` WHERE `id` IN (26616,26643);
 
-- Blighted Elk / Rabid Grizzly spawns
SET @CGUID := 145656;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+42;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+00, 26616, 571, 0, 0, 1, 0, 0, 0, 3608.987, 2706.795, 81.61842, 3.489897, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+01, 26616, 571, 0, 0, 1, 0, 0, 0, 3631.727, 2687.107, 90.62743, 3.151358, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+02, 26616, 571, 0, 0, 1, 0, 0, 0, 3633.847, 2099.581, 81.77094, 1.811403, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+03, 26616, 571, 0, 0, 1, 0, 0, 0, 3635.306, 2161.763, 80.04393, 4.633221, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+04, 26616, 571, 0, 0, 1, 0, 0, 0, 3658.856, 2091.767, 75.24414, 2.323115, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+05, 26616, 571, 0, 0, 1, 0, 0, 0, 3667.841, 2208.016, 86.08277, 1.964503, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+06, 26616, 571, 0, 0, 1, 0, 0, 0, 3673.516, 2463.127, 105.6333, 1.83448, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+07, 26616, 571, 0, 0, 1, 0, 0, 0, 3679.703, 2009.963, 84.35659, 4.623409, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+08, 26616, 571, 0, 0, 1, 0, 0, 0, 3689.573, 2296.82, 90.76158, 2.045934, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+09, 26616, 571, 0, 0, 1, 0, 0, 0, 3695.083, 1933.479, 83.85369, 4.954051, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+10, 26616, 571, 0, 0, 1, 0, 0, 0, 3701.474, 2514.475, 107.2812, 0.6286527, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+11, 26616, 571, 0, 0, 1, 0, 0, 0, 3704.587, 2266.464, 92.08928, 5.654926, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+12, 26616, 571, 0, 0, 1, 0, 0, 0, 3706.076, 2743.281, 104.7514, 4.170875, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+13, 26616, 571, 0, 0, 1, 0, 0, 0, 3722.648, 2691.479, 114.6539, 3.485274, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+14, 26616, 571, 0, 0, 1, 0, 0, 0, 3723.551, 2651.437, 121.4505, 0.8676791, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+15, 26616, 571, 0, 0, 1, 0, 0, 0, 3725.103, 2049.998, 89.27189, 5.984902, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+16, 26616, 571, 0, 0, 1, 0, 0, 0, 3737.078, 2379.541, 125.9424, 4.658678, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+17, 26616, 571, 0, 0, 1, 0, 0, 0, 3738.888, 2511.032, 111.2622, 0.516483, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+18, 26616, 571, 0, 0, 1, 0, 0, 0, 3742.809, 1906.732, 93.08707, 4.087896, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+19, 26616, 571, 0, 0, 1, 0, 0, 0, 3750.026, 2256.787, 96.6433, 1.183217, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+20, 26616, 571, 0, 0, 1, 0, 0, 0, 3755.162, 2109.537, 90.18472, 1.407896, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+21, 26616, 571, 0, 0, 1, 0, 0, 0, 3778.959, 2595.174, 131.6573, 1.944773, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+22, 26616, 571, 0, 0, 1, 0, 0, 0, 3789.701, 2439.881, 120.3564, 3.098214, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+23, 26616, 571, 0, 0, 1, 0, 0, 0, 3793.529, 1991.409, 92.70969, 4.130076, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+24, 26616, 571, 0, 0, 1, 0, 0, 0, 3811.9, 1883.307, 103.4728, 2.977729, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+25, 26616, 571, 0, 0, 1, 0, 0, 0, 3830.944, 2745.978, 125.2044, 6.277326, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+26, 26616, 571, 0, 0, 1, 0, 0, 0, 3841.809, 2670.203, 133.9133, 1.616634, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+27, 26616, 571, 0, 0, 1, 0, 0, 0, 3846.796, 1855.145, 112.7773, 1.445089, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+28, 26616, 571, 0, 0, 1, 0, 0, 0, 3885.523, 2723.021, 143.0718, 5.040751, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+29, 26643, 571, 0, 0, 1, 0, 0, 0, 3644.814, 2108.32, 82.52487, 3.955455, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+30, 26643, 571, 0, 0, 1, 0, 0, 0, 3653.489, 2038.248, 80.83339, 3.821825, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+31, 26643, 571, 0, 0, 1, 0, 0, 0, 3658.551, 2177.805, 84.84097, 4.881752, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+32, 26643, 571, 0, 0, 1, 0, 0, 0, 3694.929, 2288.579, 90.93569, 0.6433057, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+33, 26643, 571, 0, 0, 1, 0, 0, 0, 3712.812, 2251.845, 92.32622, 2.203486, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+34, 26643, 571, 0, 0, 1, 0, 0, 0, 3724.282, 1928.43, 88.45173, 5.032287, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+35, 26643, 571, 0, 0, 1, 0, 0, 0, 3736.312, 2004.773, 89.53041, 5.835526, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+36, 26643, 571, 0, 0, 1, 0, 0, 0, 3739.045, 2076.328, 90.76255, 0.2246024, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+37, 26643, 571, 0, 0, 1, 0, 0, 0, 3761.153, 2253.946, 98.04789, 1.439007, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+38, 26643, 571, 0, 0, 1, 0, 0, 0, 3766.299, 1923.924, 94.87557, 5.925901, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+39, 26643, 571, 0, 0, 1, 0, 0, 0, 3767.844, 1891.139, 97.21929, 4.958078, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+40, 26643, 571, 0, 0, 1, 0, 0, 0, 3821.683, 1853.887, 109.9058, 4.463461, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+41, 26643, 571, 0, 0, 1, 0, 0, 0, 3826.253, 1899.961, 101.9508, 5.78898, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594),
(@CGUID+42, 26643, 571, 0, 0, 1, 0, 0, 0, 3881.319, 1850.369, 120.3408, 4.88412, 120, 10, 0, 0, 0, 1, 0, 0, 0, 22594);
