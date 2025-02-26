!**************************************************************
!* AceGen    6.808 Linux (6 Sep 16)                           *
!*           Co. J. Korelc  2013           3 Feb 25 18:52:25  *
!**************************************************************
! User     : Full professional version
! Notebook : ice3dbasiclinear
! Evaluation time                 : 9 s     Mode  : Prototype
! Number of formulae              : 309     Method: Automatic
! Subroutine                      : ice3dbasiclinear size: 5078
! Total size of Mathematica  code : 5078 subexpressions
! Total size of Fortran code      : 12774 bytes

!******************* S U B R O U T I N E **********************
SUBROUTINE ice3dbasiclinear(v,latent,rho,drho,cp,dcp,condu,dcondu,cx,cy,cz,norm2,dtime,lambda,a,da,xn,uoldn,un,phioldn&
&,phin,efor,emat,perturb,xi,wgaus)
USE SMSUtility
IMPLICIT NONE
DOUBLE PRECISION v(331),latent,rho,drho,cp,dcp,condu,dcondu,cx,cy,cz,norm2,dtime,lambda,a,da(3),xn(4,3),uoldn&
&(4),un(4),phioldn(4),phin(4),efor(8),emat(8,8),perturb,xi(3),wgaus
v(1)=latent
v(2)=rho
v(3)=drho
v(4)=cp
v(5)=dcp
v(247)=v(3)/v(2)+v(5)/v(4)
v(6)=condu
v(7)=dcondu
v(8)=cx
v(9)=cy
v(10)=cz
v(11)=norm2
v(12)=dtime
v(13)=lambda
v(14)=a
v(183)=(v(14)*v(14))
v(15)=da(1)
v(16)=da(2)
v(17)=da(3)
v(18)=xn(1,1)
v(19)=xn(1,2)
v(20)=xn(1,3)
v(21)=xn(2,1)
v(163)=v(19)*v(21)
v(153)=-(v(20)*v(21))
v(22)=xn(2,2)
v(164)=-(v(18)*v(22))
v(143)=v(20)*v(22)
v(23)=xn(2,3)
v(154)=v(18)*v(23)
v(144)=-(v(19)*v(23))
v(24)=xn(3,1)
v(165)=-(v(19)*v(24))
v(155)=v(20)*v(24)
v(25)=xn(3,2)
v(166)=v(18)*v(25)
v(145)=-(v(20)*v(25))
v(26)=xn(3,3)
v(156)=-(v(18)*v(26))
v(146)=v(19)*v(26)
v(27)=xn(4,1)
v(160)=v(19)*v(27)
v(150)=-(v(20)*v(27))
v(28)=xn(4,2)
v(161)=-(v(18)*v(28))
v(140)=v(20)*v(28)
v(29)=xn(4,3)
v(181)=(-((-v(20)+v(23))*(-v(19)+v(25)))+(-v(19)+v(22))*(-v(20)+v(26)))*(-v(18)+v(27))-(-v(18)+v(24))*(-((-v(20)+v(23)&
&)*(-v(19)+v(28)))+(-v(19)+v(22))*(-v(20)+v(29)))+(-v(18)+v(21))*(-((-v(20)+v(26))*(-v(19)+v(28)))+(-v(19)+v(25))*(-v(20&
&)+v(29)))
v(151)=v(18)*v(29)
v(141)=-(v(19)*v(29))
v(30)=uoldn(1)
v(31)=uoldn(2)
v(32)=uoldn(3)
v(33)=uoldn(4)
v(34)=un(1)
v(35)=un(2)
v(36)=un(3)
v(37)=un(4)
v(38)=phioldn(1)
v(39)=phioldn(2)
v(40)=phioldn(3)
v(41)=phioldn(4)
v(42)=phin(1)
v(43)=phin(2)
v(44)=phin(3)
v(45)=phin(4)
v(54)=efor(1)
v(55)=efor(2)
v(56)=efor(3)
v(57)=efor(4)
v(58)=efor(5)
v(59)=efor(6)
v(60)=efor(7)
v(61)=efor(8)
v(62)=emat(1,1)
v(63)=emat(1,2)
v(64)=emat(1,3)
v(65)=emat(1,4)
v(66)=emat(1,5)
v(67)=emat(1,6)
v(68)=emat(1,7)
v(69)=emat(1,8)
v(70)=emat(2,1)
v(71)=emat(2,2)
v(72)=emat(2,3)
v(73)=emat(2,4)
v(74)=emat(2,5)
v(75)=emat(2,6)
v(76)=emat(2,7)
v(77)=emat(2,8)
v(78)=emat(3,1)
v(79)=emat(3,2)
v(80)=emat(3,3)
v(81)=emat(3,4)
v(82)=emat(3,5)
v(83)=emat(3,6)
v(84)=emat(3,7)
v(85)=emat(3,8)
v(86)=emat(4,1)
v(87)=emat(4,2)
v(88)=emat(4,3)
v(89)=emat(4,4)
v(90)=emat(4,5)
v(91)=emat(4,6)
v(92)=emat(4,7)
v(93)=emat(4,8)
v(94)=emat(5,1)
v(95)=emat(5,2)
v(96)=emat(5,3)
v(97)=emat(5,4)
v(98)=emat(5,5)
v(99)=emat(5,6)
v(100)=emat(5,7)
v(101)=emat(5,8)
v(102)=emat(6,1)
v(103)=emat(6,2)
v(104)=emat(6,3)
v(105)=emat(6,4)
v(106)=emat(6,5)
v(107)=emat(6,6)
v(108)=emat(6,7)
v(109)=emat(6,8)
v(110)=emat(7,1)
v(111)=emat(7,2)
v(112)=emat(7,3)
v(113)=emat(7,4)
v(114)=emat(7,5)
v(115)=emat(7,6)
v(116)=emat(7,7)
v(117)=emat(7,8)
v(118)=emat(8,1)
v(119)=emat(8,2)
v(120)=emat(8,3)
v(121)=emat(8,4)
v(122)=emat(8,5)
v(123)=emat(8,6)
v(124)=emat(8,7)
v(125)=emat(8,8)
v(127)=xi(1)
v(128)=xi(2)
v(129)=xi(3)
v(133)=1d0-v(127)-v(128)-v(129)
v(130)=wgaus
v(256)=(0.5d0*v(129)*v(130)*v(181))/v(12)
v(254)=(0.5d0*v(128)*v(130)*v(181))/v(12)
v(252)=(0.5d0*v(127)*v(130)*v(181))/v(12)
v(250)=(0.5d0*v(130)*v(133)*v(181))/v(12)
v(131)=1d0/v(181)
v(134)=v(133)*v(34)+v(127)*v(35)+v(128)*v(36)+v(129)*v(37)
v(246)=1d0+(v(1)*v(134)*v(247))/v(4)
v(135)=v(133)*v(30)+v(127)*v(31)+v(128)*v(32)+v(129)*v(33)
v(248)=v(134)-v(135)
v(137)=v(133)*v(42)+v(127)*v(43)+v(128)*v(44)+v(129)*v(45)
v(240)=(v(137)*v(137))
v(245)=v(130)*v(181)*((v(129)*v(183))/v(12)+3d0*v(129)*v(240))
v(243)=v(130)*v(181)*((v(128)*v(183))/v(12)+3d0*v(128)*v(240))
v(241)=v(130)*v(181)*((v(127)*v(183))/v(12)+3d0*v(127)*v(240))
v(238)=v(130)*v(181)*((v(133)*v(183))/v(12)+3d0*v(133)*v(240))
v(138)=v(133)*v(38)+v(127)*v(39)+v(128)*v(40)+v(129)*v(41)
v(236)=(1d0-(v(138)*v(138)))**2
v(244)=-(v(129)*v(13)*v(130)*v(181)*v(236))
v(242)=-(v(128)*v(13)*v(130)*v(181)*v(236))
v(239)=-(v(127)*v(13)*v(130)*v(181)*v(236))
v(237)=-(v(13)*v(130)*v(133)*v(181)*v(236))
v(190)=v(137)-v(138)
v(139)=v(140)+v(141)+v(145)+v(146)-v(26)*v(28)+v(25)*v(29)
v(201)=v(131)*v(139)*v(8)
v(233)=2d0*v(130)*v(181)*v(201)
v(221)=v(130)*v(181)*v(183)*v(201)
v(142)=-v(140)-v(141)+v(143)+v(144)+v(23)*v(28)-v(22)*v(29)
v(296)=v(131)*v(142)*v(233)*v(8)
v(202)=v(131)*v(142)*v(8)
v(234)=2d0*v(130)*v(181)*v(202)
v(222)=v(130)*v(181)*v(183)*v(202)
v(147)=-v(143)-v(144)-v(145)-v(146)-v(23)*v(25)+v(22)*v(26)
v(316)=v(131)*v(147)*v(234)*v(8)
v(312)=v(131)*v(147)*v(233)*v(8)
v(203)=v(131)*v(147)*v(8)
v(235)=2d0*v(130)*v(181)*v(203)
v(223)=v(130)*v(181)*v(183)*v(203)
v(169)=-(v(131)*v(139))-v(131)*v(142)-v(131)*v(147)
v(308)=v(169)*v(235)*v(8)
v(292)=v(169)*v(234)*v(8)
v(275)=v(169)*v(233)*v(8)
v(200)=v(169)*v(8)
v(232)=2d0*v(130)*v(181)*v(200)
v(220)=v(130)*v(181)*v(183)*v(200)
v(149)=v(150)+v(151)+v(155)+v(156)+v(26)*v(27)-v(24)*v(29)
v(205)=v(131)*v(149)*v(9)
v(229)=2d0*v(130)*v(181)*v(205)
v(217)=v(130)*v(181)*v(183)*v(205)
v(152)=-v(150)-v(151)+v(153)+v(154)-v(23)*v(27)+v(21)*v(29)
v(295)=v(131)*v(152)*v(229)*v(9)
v(206)=v(131)*v(152)*v(9)
v(230)=2d0*v(130)*v(181)*v(206)
v(218)=v(130)*v(181)*v(183)*v(206)
v(157)=-v(153)-v(154)-v(155)-v(156)+v(23)*v(24)-v(21)*v(26)
v(315)=v(131)*v(157)*v(230)*v(9)
v(311)=v(131)*v(157)*v(229)*v(9)
v(207)=v(131)*v(157)*v(9)
v(231)=2d0*v(130)*v(181)*v(207)
v(219)=v(130)*v(181)*v(183)*v(207)
v(171)=-(v(131)*v(149))-v(131)*v(152)-v(131)*v(157)
v(307)=v(171)*v(231)*v(9)
v(291)=v(171)*v(230)*v(9)
v(274)=v(171)*v(229)*v(9)
v(204)=v(171)*v(9)
v(228)=2d0*v(130)*v(181)*v(204)
v(216)=v(130)*v(181)*v(183)*v(204)
v(159)=v(160)+v(161)+v(165)+v(166)-v(25)*v(27)+v(24)*v(28)
v(209)=v(10)*v(131)*v(159)
v(225)=2d0*v(130)*v(181)*v(209)
v(213)=v(130)*v(181)*v(183)*v(209)
v(162)=-v(160)-v(161)+v(163)+v(164)+v(22)*v(27)-v(21)*v(28)
v(294)=v(10)*v(131)*v(162)*v(225)
v(210)=v(10)*v(131)*v(162)
v(226)=2d0*v(130)*v(181)*v(210)
v(214)=v(130)*v(181)*v(183)*v(210)
v(167)=-v(163)-v(164)-v(165)-v(166)-v(22)*v(24)+v(21)*v(25)
v(314)=v(10)*v(131)*v(167)*v(226)
v(310)=v(10)*v(131)*v(167)*v(225)
v(211)=v(10)*v(131)*v(167)
v(227)=2d0*v(130)*v(181)*v(211)
v(215)=v(130)*v(181)*v(183)*v(211)
v(173)=-(v(131)*v(159))-v(131)*v(162)-v(131)*v(167)
v(306)=v(10)*v(173)*v(227)
v(290)=v(10)*v(173)*v(226)
v(273)=v(10)*v(173)*v(225)
v(208)=v(10)*v(173)
v(224)=2d0*v(130)*v(181)*v(208)
v(212)=v(130)*v(181)*v(183)*v(208)
v(170)=v(169)*v(34)*v(8)+v(131)*v(139)*v(35)*v(8)+v(131)*v(142)*v(36)*v(8)+v(131)*v(147)*v(37)*v(8)
v(172)=v(171)*v(34)*v(9)+v(131)*v(149)*v(35)*v(9)+v(131)*v(152)*v(36)*v(9)+v(131)*v(157)*v(37)*v(9)
v(174)=v(10)*v(173)*v(34)+v(10)*v(131)*v(159)*v(35)+v(10)*v(131)*v(162)*v(36)+v(10)*v(131)*v(167)*v(37)
v(255)=v(130)*v(181)*(0d0+(v(129)*v(246))/v(12)+(v(1)*v(129)*v(247)*v(248))/(v(12)*v(4))-(2d0*(2d0*v(170)*v(203)+2d0*v&
&(172)*v(207)+2d0*v(174)*v(211))*v(7))/v(6))
v(253)=v(130)*v(181)*(0d0+(v(128)*v(246))/v(12)+(v(1)*v(128)*v(247)*v(248))/(v(12)*v(4))-(2d0*(2d0*v(170)*v(202)+2d0*v&
&(172)*v(206)+2d0*v(174)*v(210))*v(7))/v(6))
v(251)=v(130)*v(181)*(0d0+(v(127)*v(246))/v(12)+(v(1)*v(127)*v(247)*v(248))/(v(12)*v(4))-(2d0*(2d0*v(170)*v(201)+2d0*v&
&(172)*v(205)+2d0*v(174)*v(209))*v(7))/v(6))
v(249)=v(130)*v(181)*(0d0+(v(133)*v(246))/v(12)+(v(1)*v(133)*v(247)*v(248))/(v(12)*v(4))-(2d0*(2d0*v(170)*v(200)+2d0*v&
&(172)*v(204)+2d0*v(174)*v(208))*v(7))/v(6))
v(178)=v(169)*v(42)*v(8)+v(131)*v(139)*v(43)*v(8)+v(131)*v(142)*v(44)*v(8)+v(131)*v(147)*v(45)*v(8)
v(179)=v(171)*v(42)*v(9)+v(131)*v(149)*v(43)*v(9)+v(131)*v(152)*v(44)*v(9)+v(131)*v(157)*v(45)*v(9)
v(180)=v(10)*v(173)*v(42)+v(10)*v(131)*v(159)*v(43)+v(10)*v(131)*v(162)*v(44)+v(10)*v(131)*v(167)*v(45)
v(182)=v(130)*v(181)*(v(11)*v(14)*v(17)+v(180)*v(183))
v(184)=v(130)*v(181)*(v(11)*v(14)*v(16)+v(179)*v(183))
v(185)=v(130)*v(181)*(v(11)*v(14)*v(15)+v(178)*v(183))
v(186)=2d0*v(130)*v(174)*v(181)
v(187)=2d0*v(130)*v(172)*v(181)
v(188)=2d0*v(130)*v(170)*v(181)
v(189)=v(130)*v(181)*(v(137)**3-v(138)+(v(183)*v(190))/v(12)-v(13)*v(134)*v(236))
v(191)=v(130)*v(181)*((0.5d0*v(190))/v(12)+(v(246)*v(248))/v(12)-(2d0*((v(170)*v(170))+(v(172)*v(172))+(v(174)*v(174))&
&)*v(7))/v(6))
v(192)=v(10)*v(173)*v(186)+v(133)*v(191)+v(169)*v(188)*v(8)+v(171)*v(187)*v(9)
v(193)=v(10)*v(173)*v(182)+v(133)*v(189)+v(169)*v(185)*v(8)+v(171)*v(184)*v(9)
v(194)=v(10)*v(131)*v(159)*v(186)+v(127)*v(191)+v(131)*v(139)*v(188)*v(8)+v(131)*v(149)*v(187)*v(9)
v(195)=v(10)*v(131)*v(159)*v(182)+v(127)*v(189)+v(131)*v(139)*v(185)*v(8)+v(131)*v(149)*v(184)*v(9)
v(196)=v(10)*v(131)*v(162)*v(186)+v(128)*v(191)+v(131)*v(142)*v(188)*v(8)+v(131)*v(152)*v(187)*v(9)
v(197)=v(10)*v(131)*v(162)*v(182)+v(128)*v(189)+v(131)*v(142)*v(185)*v(8)+v(131)*v(152)*v(184)*v(9)
v(198)=v(10)*v(131)*v(167)*v(186)+v(129)*v(191)+v(131)*v(147)*v(188)*v(8)+v(131)*v(157)*v(187)*v(9)
v(199)=v(10)*v(131)*v(167)*v(182)+v(129)*v(189)+v(131)*v(147)*v(185)*v(8)+v(131)*v(157)*v(184)*v(9)
v(257)=v(10)*v(173)*v(224)+v(133)*v(249)+v(169)*v(232)*v(8)+v(171)*v(228)*v(9)
v(258)=v(133)*v(237)
v(259)=v(127)*v(249)+v(273)+v(274)+v(275)
v(260)=v(127)*v(237)
v(261)=v(128)*v(249)+v(290)+v(291)+v(292)
v(262)=v(128)*v(237)
v(263)=v(129)*v(249)+v(306)+v(307)+v(308)
v(264)=v(129)*v(237)
v(265)=v(133)*v(250)
v(266)=v(10)*v(173)*v(212)+v(133)*v(238)+v(169)*v(220)*v(8)+v(171)*v(216)*v(9)
v(267)=v(127)*v(250)
v(268)=v(10)*v(131)*v(159)*v(212)+v(127)*v(238)+v(131)*v(139)*v(220)*v(8)+v(131)*v(149)*v(216)*v(9)
v(269)=v(128)*v(250)
v(270)=v(10)*v(131)*v(162)*v(212)+v(128)*v(238)+v(131)*v(142)*v(220)*v(8)+v(131)*v(152)*v(216)*v(9)
v(271)=v(129)*v(250)
v(272)=v(10)*v(131)*v(167)*v(212)+v(129)*v(238)+v(131)*v(147)*v(220)*v(8)+v(131)*v(157)*v(216)*v(9)
v(276)=v(133)*v(251)+v(273)+v(274)+v(275)
v(277)=v(10)*v(131)*v(159)*v(225)+v(127)*v(251)+v(131)*v(139)*v(233)*v(8)+v(131)*v(149)*v(229)*v(9)
v(278)=v(127)*v(239)
v(279)=v(128)*v(251)+v(294)+v(295)+v(296)
v(280)=v(128)*v(239)
v(281)=v(129)*v(251)+v(310)+v(311)+v(312)
v(282)=v(129)*v(239)
v(283)=v(133)*v(252)
v(284)=v(127)*v(252)
v(285)=v(10)*v(131)*v(159)*v(213)+v(127)*v(241)+v(131)*v(139)*v(221)*v(8)+v(131)*v(149)*v(217)*v(9)
v(286)=v(128)*v(252)
v(287)=v(10)*v(131)*v(162)*v(213)+v(128)*v(241)+v(131)*v(142)*v(221)*v(8)+v(131)*v(152)*v(217)*v(9)
v(288)=v(129)*v(252)
v(289)=v(10)*v(131)*v(167)*v(213)+v(129)*v(241)+v(131)*v(147)*v(221)*v(8)+v(131)*v(157)*v(217)*v(9)
v(293)=v(133)*v(253)+v(290)+v(291)+v(292)
v(297)=v(127)*v(253)+v(294)+v(295)+v(296)
v(298)=v(10)*v(131)*v(162)*v(226)+v(128)*v(253)+v(131)*v(142)*v(234)*v(8)+v(131)*v(152)*v(230)*v(9)
v(299)=v(128)*v(242)
v(300)=v(129)*v(253)+v(314)+v(315)+v(316)
v(301)=v(129)*v(242)
v(302)=v(128)*v(254)
v(303)=v(10)*v(131)*v(162)*v(214)+v(128)*v(243)+v(131)*v(142)*v(222)*v(8)+v(131)*v(152)*v(218)*v(9)
v(304)=v(129)*v(254)
v(305)=v(10)*v(131)*v(167)*v(214)+v(129)*v(243)+v(131)*v(147)*v(222)*v(8)+v(131)*v(157)*v(218)*v(9)
v(309)=v(133)*v(255)+v(306)+v(307)+v(308)
v(313)=v(127)*v(255)+v(310)+v(311)+v(312)
v(317)=v(128)*v(255)+v(314)+v(315)+v(316)
v(318)=v(10)*v(131)*v(167)*v(227)+v(129)*v(255)+v(131)*v(147)*v(235)*v(8)+v(131)*v(157)*v(231)*v(9)
v(319)=v(129)*v(244)
v(320)=v(133)*v(256)
v(321)=v(127)*v(256)
v(322)=v(128)*v(256)
v(323)=v(129)*v(256)
v(324)=v(10)*v(131)*v(167)*v(215)+v(129)*v(245)+v(131)*v(147)*v(223)*v(8)+v(131)*v(157)*v(219)*v(9)
efor(1)=v(192)+v(54)
efor(2)=v(193)+v(55)
efor(3)=v(194)+v(56)
efor(4)=v(195)+v(57)
efor(5)=v(196)+v(58)
efor(6)=v(197)+v(59)
efor(7)=v(198)+v(60)
efor(8)=v(199)+v(61)
emat(1,1)=v(257)+v(62)
emat(1,2)=v(265)+v(63)
emat(1,3)=v(276)+v(64)
emat(1,4)=v(283)+v(65)
emat(1,5)=v(293)+v(66)
emat(1,6)=v(269)+v(67)
emat(1,7)=v(309)+v(68)
emat(1,8)=v(320)+v(69)
emat(2,1)=v(258)+v(70)
emat(2,2)=v(266)+v(71)
emat(2,3)=v(260)+v(72)
emat(2,4)=v(268)+v(73)
emat(2,5)=v(262)+v(74)
emat(2,6)=v(270)+v(75)
emat(2,7)=v(264)+v(76)
emat(2,8)=v(272)+v(77)
emat(3,1)=v(259)+v(78)
emat(3,2)=v(267)+v(79)
emat(3,3)=v(277)+v(80)
emat(3,4)=v(284)+v(81)
emat(3,5)=v(297)+v(82)
emat(3,6)=v(286)+v(83)
emat(3,7)=v(313)+v(84)
emat(3,8)=v(321)+v(85)
emat(4,1)=v(260)+v(86)
emat(4,2)=v(268)+v(87)
emat(4,3)=v(278)+v(88)
emat(4,4)=v(285)+v(89)
emat(4,5)=v(280)+v(90)
emat(4,6)=v(287)+v(91)
emat(4,7)=v(282)+v(92)
emat(4,8)=v(289)+v(93)
emat(5,1)=v(261)+v(94)
emat(5,2)=v(269)+v(95)
emat(5,3)=v(279)+v(96)
emat(5,4)=v(286)+v(97)
emat(5,5)=v(298)+v(98)
emat(5,6)=v(302)+v(99)
emat(5,7)=v(100)+v(317)
emat(5,8)=v(101)+v(322)
emat(6,1)=v(102)+v(262)
emat(6,2)=v(103)+v(270)
emat(6,3)=v(104)+v(280)
emat(6,4)=v(105)+v(287)
emat(6,5)=v(106)+v(299)
emat(6,6)=v(107)+v(303)
emat(6,7)=v(108)+v(301)
emat(6,8)=v(109)+v(305)
emat(7,1)=v(110)+v(263)
emat(7,2)=v(111)+v(271)
emat(7,3)=v(112)+v(281)
emat(7,4)=v(113)+v(288)
emat(7,5)=v(114)+v(300)
emat(7,6)=v(115)+v(304)
emat(7,7)=v(116)+v(318)
emat(7,8)=v(117)+v(323)
emat(8,1)=v(118)+v(264)
emat(8,2)=v(119)+v(272)
emat(8,3)=v(120)+v(282)
emat(8,4)=v(121)+v(289)
emat(8,5)=v(122)+v(301)
emat(8,6)=v(123)+v(305)
emat(8,7)=v(124)+v(319)
emat(8,8)=v(125)+v(324)
END
