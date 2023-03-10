DELETE FROM `spell_proc` WHERE `SpellId` IN (115768,386034,380188,378285);
INSERT INTO `spell_proc` (`SpellId`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`SpellFamilyMask3`,`ProcFlags`,`ProcFlags2`,`SpellTypeMask`,`SpellPhaseMask`,`HitMask`,`AttributesMask`,`DisableEffectsMask`,`ProcsPerMinute`,`Chance`,`Cooldown`,`Charges`) VALUES
(115768,0x00,4,0x00000400,0x00000040,0x00000000,0x00000000,0x0,0x0,0x1,0x2,0x403,0x2,0x0,0,0,0,0), -- Deep Wounds
(386034,0x00,4,0x00004000,0x00000000,0x00000000,0x00000000,0x0,0x0,0x1,0x2,0x403,0x2,0x0,0,0,0,0), -- Improved Heroic Throw
(380188,0x00,10,0x00004000,0x00000000,0x00000000,0x00000000,0x0,0x0,0x1,0x2,0x403,0x2,0x0,0,0,0,0), -- Crusader's Resolve
(378285,0x00,10,0x00004000,0x00000000,0x00000000,0x00000000,0x0,0x0,0x1,0x2,0x403,0x2,0x0,0,0,0,0); -- Tyr's Enforcer
