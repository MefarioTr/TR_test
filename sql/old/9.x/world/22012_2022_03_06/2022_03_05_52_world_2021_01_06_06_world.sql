--
UPDATE `creature` SET `unit_flags` = `unit_flags` &~ 4096 WHERE `guid` IN (81085,3431);
UPDATE `creature_template` SET `unit_flags` = `unit_flags` &~ 4096 WHERE `entry` IN (223,302,311,461,467,499,862,874,888,893,932,933,934,935,936,982,985,986,987,988,989,1068,1076,1077,1078,1245,1278,1325,1337,1338,1379,1386,1407,1442,1443,1496,1497,1498,1499,1500,1515,1518,1519,1521,1560,1568,1569,1570,1652,1661,1733,1735,1736,1737,1739,1740,1741,1742,1743,1744,1745,1746,1748,1749,1775,1777,1854,1937,1949,1975,1978,1992,2041,2050,2055,2057,2077,2079,2080,2082,2105,2107,2113,2114,2115,2116,2117,2118,2119,2122,2123,2124,2126,2127,2128,2129,2130,2131,2132,2134,2135,2136,2137,2209,2210,2225,2227,2276,2307,2308,2309,2310,2311,2314,2315,2316,2361,2362,2363,2378,2379,2425,2436,2458,2459,2466,2468,2469,2492,2506,2508,2509,2510,2512,2513,2514,2516,2517,2608,2621,2697,2698,2704,2771,2772,2787,2799,2802,2805,2806,2819,2820,2821,2860,2861,2908,2909,2910,2934,2947,2948,2980,2981,2982,2984,2985,2987,2988,2991,2993,2996,2997,2998,2999,3001,3002,3018,3019,3020,3021,3023,3024,3028,3029,3033,3034,3036,3037,3038,3039,3040,3041,3042,3043,3052,3053,3054,3055,3057,3059,3060,3061,3062,3063,3064,3065,3066,3067,3069,3072,3074,3075,3076,3077,3078,3079,3080,3081,3097,3210,3211,3212,3213,3214,3215,3217,3218,3219,3220,3221,3222,3223,3224,3338,3343,3387,3411,3418,3421,3430,3433,3441,3468,3469,3514,3519,3522,3523,3547,3548,3550,3551,3568,3571,3584,3585,3587,3588,3589,3590,3591,3592,3593,3594,3595,3596,3597,3606,3625,3650,3657,3661,3682,3685,3688,3690,3692,3693,3698,3701,3703,3704,3705,3708,3846,3849,3883,3884,3885,3916,3920,3936,3951,3955,3956,3960,3963,3964,3965,3995,4046,4082,4083,4164,4172,4185,4189,4193,4197,4198,4234,4235,4243,4244,4255,4257,4309,4310,4312,4314,4317,4320,4444,4451,4486,4488,4489,4501,4502,4510,4549,4550,4551,4552,4553,4554,4555,4556,4557,4558,4559,4560,4561,4562,4563,4564,4565,4566,4567,4568,4569,4570,4571,4572,4573,4574,4575,4576,4577,4578,4580,4581,4582,4583,4584,4585,4586,4587,4588,4589,4590,4591,4592,4593,4594,4595,4596,4597,4598,4599,4600,4601,4602,4603,4604,4605,4606,4607,4608,4609,4610,4611,4612,4613,4614,4615,4616,4617,4721,4731,4772,4773,4775,4791,4878,4879,4883,4884,4926,4943,4984,5052,5054,5087,5134,5135,5139,5189,5190,5204,5390,5394,5395,5412,5502,5504,5505,5506,5520,5546,5591,5599,5651,5653,5654,5655,5656,5657,5658,5659,5660,5661,5662,5663,5664,5665,5667,5668,5670,5675,5679,5688,5690,5693,5695,5696,5698,5699,5700,5701,5702,5703,5704,5705,5706,5707,5724,5731,5732,5733,5734,5744,5747,5748,5749,5750,5753,5754,5757,5758,5759,5769,5770,5782,5819,5820,5821,5870,5878,5888,5899,5908,5911,5938,5939,5940,5944,6026,6028,6091,6122,6177,6182,6267,6288,6290,6293,6295,6387,6393,6394,6395,6410,6411,6467,6522,6566,6567,6667,6726,6731,6741,6746,6747,6775,6776,6780,6784,6785,6868,6887,6930,7007,7024,7087,7295,7297,7317,7583,7623,7643,7683,7714,7730,7731,7733,7740,7763,7825,7854,7866,7867,7868,7875,7877,7940,7943,7945,7975,8096,8115,8144,8145,8152,8155,8159,8177,8284,8308,8356,8357,8362,8363,8364,8383,8385,8390,8393,8397,8398,8401,8403,8583,8584,8664,8669,8672,8673,8674,8721,8722,8723,8724,9047,9076,9077,9078,9079,9080,9081,9082,9083,9084,9085,9086,9087,9118,9119,9238,9356,9501,9525,9549,9550,9551,9552,9564,9566,9620,9636,9856,9857,9976,9983,9985,9986,10036,10037,10048,10049,10050,10053,10054,10055,10058,10086,10136,10181,10182,10204,10219,10278,10300,10301,10306,10364,10367,10377,10378,10379,10380,10537,10539,10582,10583,10599,10600,10612,10616,10665,10666,10676,10682,10684,10696,10721,10781,10878,10879,10881,10897,10978,11031,11044,11048,11049,11067,11074,11079,11098,11105,11106,11117,11118,11176,11177,11178,11192,11193,11317,11328,11397,11401,11407,11608,11624,11696,11703,11708,11712,11715,11716,11718,11720,11750,11751,11752,11795,11797,11799,11800,11801,11802,11808,11821,11823,11827,11828,11829,11833,11856,11860,11861,11862,11863,11864,11866,11868,11869,11870,11877,11878,11885,11899,11900,11901,11916,11946,11947,11949,11997,12019,12021,12022,12023,12024,12025,12026,12027,12028,12029,12030,12031,12032,12033,12042,12043,12045,12050,12051,12053,12096,12097,12121,12122,12127,12136,12137,12160,12196,12299,12338,12340,12427,12428,12429,12430,12616,12657,12696,12717,12719,12720,12721,12722,12723,12724,12736,12737,12740,12757,12777,12782,12807,12816,12818,12837,12863,12877,12923,12924,12925,12959,12961,12962,12997,13018,13078,13080,13098,13117,13137,13138,13140,13143,13144,13145,13146,13147,13152,13153,13154,13176,13177,13179,13180,13181,13216,13217,13218,13236,13257,13284,13296,13298,13299,13318,13319,13320,13358,13359,13418,13420,13429,13430,13433,13434,13435,13436,13437,13438,13439,13442,13443,13447,13448,13476,13577,13617,13656,13699,13776,13777,13798,13816,13817,13839,13841,13842,14041,14182,14185,14186,14187,14188,14282,14283,14284,14285,14373,14402,14403,14404,14440,14715,14717,14718,14720,14731,14733,14734,14736,14737,14738,14740,14741,14753,14754,14757,14770,14771,14772,14773,14774,14775,14776,14777,14781,14848,14893,14909,14961,14963,14964,15021,15022,15125,15126,15127,15128,15130,15131,15137,15278,15279,15280,15281,15283,15284,15285,15287,15289,15291,15292,15295,15296,15297,15301,15371,15383,15398,15399,15400,15401,15402,15403,15404,15405,15406,15416,15417,15418,15431,15432,15433,15434,15437,15441,15442,15443,15444,15445,15446,15448,15450,15451,15452,15453,15455,15456,15457,15471,15473,15494,15501,15513,15539,15612,15613,15615,15616,15617,15663,15675,15676,15682,15683,15684,15686,15701,15709,15719,15731,15732,15733,15734,15735,15760,15761,15762,15765,15767,15768,15903,15905,15907,15908,15920,15921,15924,15938,15939,15940,15941,15942,15945,15946,15970,15971,15991,16012,16014,16144,16147,16160,16161,16185,16186,16187,16189,16191,16192,16197,16213,16217,16220,16221,16222,16224,16227,16231,16251,16252,16253,16257,16258,16259,16260,16261,16262,16263,16264,16266,16267,16268,16269,16270,16271,16272,16273,16274,16275,16276,16277,16278,16279,16280,16287,16289,16293,16295,16362,16366,16367,16397,16442,16443,16444,16462,16463,16464,16475,16477,16483,16499,16500,16501,16502,16503,16514,16535,16541,16542,16546,16551,16554,16568,16574,16575,16583,16588,16603,16610,16611,16612,16613,16615,16616,16617,16618,16619,16620,16621,16623,16624,16625,16626,16627,16628,16629,16631,16633,16634,16635,16636,16637,16638,16639,16640,16641,16642,16643,16644,16646,16647,16648,16649,16650,16651,16652,16653,16654,16655,16656,16658,16659,16660,16662,16663,16664,16665,16666,16667,16668,16669,16670,16671,16672,16673,16674,16675,16676,16677,16678,16679,16680,16681,16683,16684,16685,16686,16687,16688,16689,16690,16691,16692,16693,16703,16780,16782,16802,16850,16851,16860,16862,16915,16917,16918,16919,16920,16921,16923,16924,17002,17004,17005,17015,17046,17056,17068,17070,17071,17079,17080,17089,17093,17094,17095,17097,17101,17109,17127,17204,17218,17240,17241,17242,17243,17244,17245,17246,17247,17263,17282,17285,17311,17312,17355,17375,17421,17423,17424,17425,17433,17434,17487,17489,17531,17542,17551,17553,17554,17555,17558,17598,17599,17614,17627,17628,17629,17630,17631,17632,17633,17634,17637,17642,17655,17656,17682,17686,17712,17717,17718,17765,17766,17768,17769,17831,17834,17845,17849,17866,17877,17901,17926,17927,17953,17982,17986,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,18017,18018,18019,18020,18021,18023,18025,18026,18029,18063,18066,18067,18068,18090,18091,18103,18106,18141,18146,18147,18174,18175,18192,18210,18221,18229,18245,18246,18247,18248,18249,18250,18251,18256,18273,18277,18292,18293,18295,18300,18301,18302,18347,18369,18383,18384,18385,18386,18407,18414,18415,18426,18428,18445,18447,18489,18507,18676,18705,18712,18727,18748,18753,18760,18761,18763,18781,18790,18791,18792,18803,18807,18808,18811,18816,18817,18821,18822,18909,18913,18926,18929,18937,18938,18942,18947,18951,18953,18954,18957,18959,18960,18962,18973,19002,19011,19013,19015,19018,19020,19022,19023,19024,19025,19026,19038,19048,19068,19133,19140,19157,19158,19265,19273,19315,19317,19319,19333,19341,19343,19345,19348,19355,19364,19380,19383,19401,19449,19450,19470,19471,19472,19473,19474,19476,19478,19479,19500,19571,19581,19583,19606,19671,19673,19694,19775,19837,19855,19905,19906,19907,19908,19910,19914,20126,20195,20227,20233,20406,20494,20500,20515,20672,20977,20985,20986,21085,21087,21115,21117,21118,21147,21153,21188,21192,21193,21194,21277,21311,21336,21340,21359,21427,21441,21471,21474,21476,21483,21484,21485,21487,21488,21602,21766,21769,21770,21771,21772,21905,21970,21971,21984,22059,22127,22206,22216,22386,22410,22424,22453,22455,22456,22462,22476,22477,22527,22528,22540,22541,22543,22546,22548,22557,22558,22560,22567,22568,22569,22571,22574,22575,22577,22580,22596,22597,22598,22605,22606,22613,22614,22615,22616,22617,22618,22619,22622,22628,22630,22633,22638,22641,22646,22648,22650,22651,22652,22653,22654,22655,22656,22658,22659,22660,22661,22665,22666,22674,22678,22680,22681,22690,22695,22696,22697,22698,22699,22700,22701,22702,22703,22704,22706,22707,22708,22710,22711,22712,22721,22722,22723,22735,22736,22738,22739,22743,22749,22759,22760,22766,22767,22834,22916,23064,23065,23435,23446,23447,23511,23533,23560,23603,23604,23605,23606,23612,23627,23628,23635,23683,23684,23685,23696,23698,23713,23748,23973,24208,24484,24492,24493,24497,24498,24499,24519,24711,24734,24735,24736,24737,24738,24813,24881,24886,24965,24967,25032,25059,25061,25145,25162,25164,25169,25170,25172,25200,25202,25207,25334,25883,25884,25887,25888,25889,25890,25891,25892,25893,25894,25897,25899,25900,25901,25902,25903,25904,25905,25906,25907,25908,25909,25912,25913,25915,25917,25918,25920,25922,25923,25925,25926,25927,25928,25929,25930,25931,25932,25933,25934,25935,25936,25937,25938,25939,25940,25941,25942,25943,25944,25945,25946,25947,25976,25977,26124,26560,27705,27711,28156,28569,28571,28572,28573,28596,31055,31819,31820,31823,31824,31825,31826,31828,31829,31909,31923,31924,31926,31960,31963,31964,31965,31970,31972,31976,31977,31978,31981,31983,31986,31989,31996,31999,32001,32004,32007,32014,32020,32024,32025,32028,32029,32048,32049,32050,32051,32052,32053,32077,32078,32080,32088,32089,32091,32094,32095,32098,32099,32101,32105,32106,32119,32764,32765,32766,32801,32802,32803,32804,32805,32806,32807,32808,32811,32812,32813,32816,37236,37239,37240,37242,37243,37244,37278,37281,37282,37283,37284,37289,37291,37296,37297,37300,37302,37305,37308,37315,37318,37320,37323,37326,37333,37344,37345,37348,37349,37369,37370,37371,37372,37373,37374,37398,37399,37401,37409,37410,37412,37415,37416,37419,37420,37422,37426,37427,37435,37442,37468,37479,37480,37481,37483,37484,37485,37486);
