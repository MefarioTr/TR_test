--
DELETE FROM `creature_loot_template` WHERE `Chance` < 1 AND `Item` IN (765,785,2447,2449,2450,2452,2453,2770,2771,2772,2775,2776,2835,2836,2838,3355,3356,3357,3358,3369,3470,3478,3486,3818,3819,3820,3821,3857,3858,4625,7911,7912,7966,8153,8831,8836,8838,8839,8845,8846,10620,11370,12365,12644,12809,13463,13464,13465,13466,13467,13468,19726,19727,22202,22203,22710,22785,22786,22787,22788,22789,22790,22791,22792,22793,22794,22797,23424,23425,23426,23427,35128,36901,36902,36903,36904,36905,36906,36907,36908,36909,36910,36912,37921) AND `Entry` IN (92,667,669,670,672,696,780,781,782,783,784,2639,2640,2641,2642,2643,2644,2645,2646,2647,2648,2649,2650,2651,2652,2653,2654,2723,2735,2736,2745,2760,2763,2791,4022,4023,4024,4025,4026,4027,4034,4035,4036,4037,4038,4041,4042,4044,4120,4465,4466,4467,4676,4872,5357,5358,5465,5469,5470,5850,5852,5853,5854,5855,6073,6146,6147,6148,6520,6521,6560,7023,7031,7032,7039,7135,7136,7809,7995,7996,8215,8216,8217,8218,8219,8278,8279,8281,8636,8905,8906,8907,8908,8909,8910,8911,9026,9376,9396,9502,9816,9878,9879,9938,10119,10120,11658,11659,11665,11666,11667,11668,11669,11746,11747,11778,11781,11782,11783,11784,11937,12076,12099,12100,12101,12201,12203,12206,14460,14461,14462,14464,14471,14604,14640,17235);
DELETE FROM `creature_loot_template` WHERE `Chance` < 0.6 AND `Item` IN (765,785,2447,2449,2450,2452,2453,2770,2771,2772,2775,2776,2835,2836,2838,3355,3356,3357,3358,3369,3470,3478,3486,3818,3819,3820,3821,3857,3858,4625,7911,7912,7966,8153,8831,8836,8838,8839,8845,8846,10620,11370,12365,12644,12809,13463,13464,13465,13466,13467,13468,19726,19727,22202,22203,22710,22785,22786,22787,22788,22789,22790,22791,22792,22793,22794,22797,23424,23425,23426,23427,35128,36901,36902,36903,36904,36905,36906,36907,36908,36909,36910,36912,37921) AND `Entry` IN (501,764,765,766,940,1059,1060,1061,1062,1490,1731,1812,1953,1954,1955,1956,2022,2025,2027,2029,2030,2156,2157,2258,2359,2530,2534,2592,2748,2749,2751,2752,2754,2755,2919,3535,3733,3780,3781,3782,3783,3784,3834,3919,3931,4028,4029,4030,4857,4860,5055,5481,5485,5490,5761,5775,6509,6510,6511,6512,6517,6518,6519,6527,7100,7101,7138,7139,7149,7206,7228,7584,8384,8400,8923,9016,10802,11321,11346,11355,11383,11777,12219,12220,12224,12836,13022,13141,13142,15635,15636,17352,17353);
