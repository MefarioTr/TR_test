UPDATE `skill_tiers` SET `Value13`=0, `Value14`=0, `Value15`=0, `Value16`=0 WHERE `ID` IN (41, 62, 161);
UPDATE `skill_tiers` SET `Value12`=0 WHERE `ID`=224;
UPDATE `skill_tiers` SET `Value4`=0, `Value5`=0, `Value6`=0, `Value7`=0, `Value8`=0, `Value9`=0, `Value10`=0, `Value11`=0, `Value12`=0 WHERE `ID`=295;

DELETE FROM `skill_tiers` WHERE `ID` BETWEEN 451 AND 463;
DELETE FROM `skill_tiers` WHERE `ID` IN (472, 473, 474, 478, 480, 481, 482);
INSERT INTO `skill_tiers` (`ID`,`Value1`,`Value2`,`Value3`,`Value4`,`Value5`,`Value6`,`Value7`,`Value8`,`Value9`,`Value10`,`Value11`,`Value12`,`Value13`,`Value14`,`Value15`,`Value16`) VALUES
(451,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(452,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(453,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(454,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(455,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(456,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(457,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(458,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(459,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(460,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(461,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(462,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(463,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(472,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(473,175,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(474,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(478,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(480,115,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(481,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(482,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
