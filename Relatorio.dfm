object FrmRelatorio: TFrmRelatorio
  Left = 0
  Top = 0
  Caption = 'FrmRelatorio'
  ClientHeight = 143
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 389
    Height = 143
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 447
    ExplicitHeight = 201
    object Label1: TLabel
      Left = 24
      Top = 11
      Width = 30
      Height = 13
      Caption = 'Setor:'
    end
    object Label2: TLabel
      Left = 24
      Top = 50
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Button1: TButton
      Left = 294
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CmbSetor: TComboBox
      Left = 24
      Top = 24
      Width = 345
      Height = 21
      TabOrder = 1
    end
    object CmbTipo: TComboBox
      Left = 24
      Top = 64
      Width = 345
      Height = 21
      TabOrder = 2
    end
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43802.000047291700000000
    ReportOptions.LastChange = 43802.717356261570000000
    ReportOptions.Picture.Data = {
      0A544A504547496D616765AE120000FFD8FFE000104A46494600010100000100
      010000FFDB004300030202020202030202020303030304060404040404080606
      050609080A0A090809090A0C0F0C0A0B0E0B09090D110D0E0F101011100A0C12
      131210130F101010FFDB00430103030304030408040408100B090B1010101010
      1010101010101010101010101010101010101010101010101010101010101010
      10101010101010101010101010FFC00011080078009703012200021101031101
      FFC4001E0001000202030101010000000000000000000709050801030604020A
      FFC4006010000102040401030B09110B0D010000000102030004050607080911
      12132131161922415156719596D2D414323857B1B3B4C1D31518364247587273
      74757681869193B5E42333375261628487A1A5D1242634445364658394A3A6B2
      C2C4FFC40014010100000000000000000000000000000000FFC4001411010000
      0000000000000000000000000000FFDA000C03010002110311003F00B3D84210
      187BC2EFB6EC1B5AA97ADE157629745A2CAB9393D36F9D90D3481B93CDCE4F68
      01B92480012408AA5C5ED5233038E17A0C31CA4D9D35486AA2F2A5A9EF332227
      AB73E0024AD28214DB09E1054404A94900AB941B1DA72D65B102A36F601DB161
      D3E656CB776D7C2A7424EDCACB4A365CE4CF7472AB617E16C477E8DF81344B5F
      04AA18EF3F4E61DB82F49E9892929B20296C52E59CE4CB69246E8E3986DE2BD8
      ECA0DB5BFAD101ADF29A6AEA2188C17775E988B234EAB4FA8AE61AAEDE134F4D
      EFDA2B54BA1E4747400B3B0E6D87447D1D69BCF27B6F59FE53D4FD1632D9AED5
      8F1DA958B37561F609B545B72876DD4E6690D541F9044E4ECDB8C38A69C7B774
      A9A4A14A49284F27B84EDC4493B0800EA879EA574E399FC56D51C7FF0092026A
      EB4D6793DB82CEF29EA7E8B1CF5A673C7EDC367794F53F45884C6A839E91F573
      5793748F458E46A899EA1F5733E4D51FD12026CEB4C678BDB92CCF29EA9E8B1C
      F5A5F3C5EDCB66794D54F44886E5B54FCF231B72B8C32F33F6DB6E963FF59711
      F5AB55CCED94EC312A980F745BB21BFBD404B3D696CF0FB73597E53557D1239E
      B4B6787DB9ECBF29AABE8910EBBAA96789C1D862E4A37F636DD33E39731F2AB5
      46CF5289231C427F905B347F45809B4692B9E03F569B287E53557D123F43492C
      EF9FAB6D903F29AADE871062B540CF42BA71D17F8ADCA40F72563F29D4F73CE9
      3B8C7477F1DBD493EECAC04C15AD35F50FC310DDD7646204AD6AA724AE36936D
      DE134C4DA3BA52A994B00F37682B73D1B1E88FBF013540C79C13BE061966C691
      51ACD3A4E61329507A7A43D4B5CA49E6EC969E14F2E9008514AD3C641042CF30
      39CC9B6AA78E9716315A585B8E0E52AE6A45D953628C9A9B54E6E527A5666616
      1B617FB87032A6F94524287260EC7882BB1E154DFAC4E035B174606CBE3C4A53
      A5E5EE6B32765656667528D9C9AA6CC3BC9720B23D7703EEB4B413BF082E81EB
      CC06F2D02BD46BA6874FB96DDA93150A555659B9C929B617C4DBEC3890A42D27
      B60A4831F7C68A68FD89751BC72D952B2AAB32B7DCB26BAEC9C9951DCA249F42
      5E4279FB8E2A636EE0D876A37AE01084201084202B2B5B8FA19C26FBBEAFEF72
      B1B49A61219464670C83077496EAC49FE71AB4E157F6EF1AB7ADBFD0BE137DDF
      57F7B968D9CD2D97C7917C374FF115594FF7BCE1F8E029071ED812B8E988D2C9
      E866ECABB63F14E3A23C24481986FE1FB133F0C2B3F0D7623F80421080421080
      42108042108091F2D44A7319856A07622F6A191FF5ECC5D5EAA2E706476FE4FF
      00B498A3A7FBCE58FC514A996BF645E15FE1AD0FE1CCC5D3EAADEC1FBE7EEAA3
      FEB29780D75D12F7EA2B1539F9BE6A533DE9F8B2E8AD1D12FE82714FEFAD33DE
      5E8B2E80421080421080ACAD6DFE86309BEEFABFBDCAC6CBE961EC1BC3EFB756
      3F5A4D46B3EB704753584A3FDFAB1EF72B1B31A587B06F0FBEDD58FD69350149
      7986FE1FB133F0C2B3F0D7623F890330DFC3F6267E18567E1AEC47F008421008
      4210084210084210123E5AFD917857F86B43F8733174FAAB7B07EF9FBAA8FF00
      ACA5E29632D7EC8BC2BFC35A1FC3998BAED5359E53235886BDBF7A768CBFEF59
      41F1C06B76897F4158A7F7D299EF2F45974568E8947FCCBC541FF14A67BD3F16
      5D00842100842101585ADDB8452307DAED2A66B8A3F89325FE31B3BA572C2F23
      B60A41E744C56127C67327E388335A4B267AAD83B62DF72AC29C62DDAF3D2532
      5237E4D136C82167B89E3964A77EEAD23B71ECB46EC4690B9F2C951B04CD33F3
      4ACCB82610B960BDDC4CA4D00FB4EA876829C33291F6A3015199825A5DC7BC4A
      710774AEEFACA8780CEBB1E06374F371A7AE672DCC6ABD2E5B3F0C2AB76DB15E
      AE4E556993D43409B5F2330F29D0D38CA09750B471F0289470929DD2483100AF
      29D9A66D452ACB5E29EE0EC76B3EA247E70CC045508948E54F3443A72DB8A63C
      367547E46383956CCF8E9CB86288FC8FA87C8C045D08943E758CCEFD6E38A1E4
      8543E4638F9D67339F5B9628792150F92808C211287CEB199E3D1971C50F242A
      1F231C8CAAE680F465BF148FE47D47E46022E844A632A39A43D196BC54F23AA3
      F231DF2D944CD5CDAB81ACB6627A4EFB7EE969CF363F3A9A020311972752C661
      70BDF5FAD6EF3A22CF804F3262EEF542E4FE716C4DE50903868FB6DDDF9AF27B
      7F6ED15C1943D3B733557C74B2EE7BEF0DAA168DB16ED6A4EB3519DAB8434A5B
      72CF25EE41B64AB9452DC28E0DF8764F16E4F36C7753588C5DA559F969630B13
      32CAEAF7FD565D0258ABB34C94A3899875EDB6E80EA2591CFB6FCA1DB7E13011
      4E890E136C62CB5DA4CFD215F9DB99FF0008B358AF3D17ECA9FA46095E97C4DB
      0A699B8EE144B4A950DB956E55900AC77471BCB4F850AEE45864021084021084
      0795C53C33B4718F0FAB98677D53FD5944AFCA99699424F0AD1CE148710AE7E1
      5A1612B49DB9949079E2A0EE7CAAE75B20589AFE23E042AAB70D11B0A6D156A2
      49FAAD331264EE599F91D94A039812784A010149585005374D080A9CB635B2C5
      6A234A90C48C06B7AA75065450E1A75466297B11DA536EA26083DDE71E011E88
      6B98ADB9F2BE09FE4BD7F608B29AF597675D3B0B9ED3A355F61B0F57C83531CD
      DCECD263CBB9979C01795C6F60761FAD5BEFBAAD992277FD1C057FF5F30FD6BD
      FF009B7EC11C75F315F5AF8F2D7F608B066701302E5B9E5F05EC46BEC2DC934F
      B8DC54EEB0B665A768639D989B52DEA651DA9AB4D3CB4BD3E55B976D4A4CE4C6
      CB2840037215B6FD3B240ED404B675CB77B5960479687D06035CC73E9B2C093E
      0BD3F608AAF8405AB33AE5B2A5ED319625A11DD45E6147F31911EEC6499D712D
      550FF28CBB55507F9971B6AF765C454BC6FDE8EF665A577E34DEE2EBB7697596
      E56D61C8B150946E61092A9B677504AC100F6206FD3CE7BB013A8D702C6DB9F0
      02BBBFDFC67E4A3E39DD716DC6DB269D973A93EE7692F5CCDB40FE312CAF7237
      C9FC02C0A99FF48C15B0DDFB3B724D5EEB71D2DE5DB2FCD282DAC0BC3D4281DC
      14DB1240EFFA280AE8B975B5C44AE4A1A6E1C65EA914DABBE421872A1597AA89
      DCF6832D32C2947B9D97E23D1118D9393DCE4E7B714138A38FCE55EDEA4CD726
      999AC57257D4CE22512494B1212442484EC5453D8A5BDD4A5152944F15C7506C
      BB3AD5045AF69D1A8E08D8890906A5F71DCEC12233301E670CF0E2D2C22B0A89
      86D6353448D0E812A994946B7DD440DCA96B57D32D6A2A5A95DB5289EDC7A684
      20108420108420108F2D8938A387D83F6ACCDED8997653EDEA34AF32E666DCDB
      8D5B6E10DA06EA716763B2100A8F68468D5DFAD160AD2AA6EC9D9B85D7657E55
      A51489B99798914BBB7D3213BB8AE13DAE2093DD0202C2DE752C32E3EBDF85B4
      959D86E760378A79BEB57DCCDD06F7B82874BB530F11254DAA4D4A4BA5EA6CDA
      DC0D36EA909E2509A014AD80DC80013BF30E88981AD6CB0FD7CD3180F70241E9
      E1AC30AF75B1184EBAE6571E515CC6545D2A57393EA6A72893E1298088BAF2F9
      A6E1E1EA3B0CB7EEFCCA9EDFE191AC598ECC9623668EFA96C40C4B4D2DBA849D
      39BA5CBB34C975B32EDB0871C7000952D6772A756492A3DAEE46FE75D5329846
      E72A4FEFF7BE9BFE11F85EAA594E3D194F74FF0041A68F8A02ACA11690AD5432
      A7BF36531C3FD1A9E3FF0098FC1D5432B03A3292AFD0C87990157512BE5BB32F
      88F95ABDE72FCC344529E9E9FA72E9732C5525D6F4BB8C29C6DCE74A16821414
      D276215D1B8EDC6F6F5D4F2B83A328FF009DAA7F991C8D55F2C03A328A8FD0D3
      FE4E022BEBCBE69B8787A8EC32DFBBF32A7B7F864666C1D5F332D5EBF6DCA2D7
      2D8C3F34DA8D5A52527132F4D9A6DCE45C79285F028CC90957093B1208076DC1
      E88F78355ACB10E8CA3A07FC9A7FC9C7737AB0E59DB505A329EB411CE0A5AA78
      23FEDC05A2A161C425C4EFB280237E9E78E62B891AD76149F5F82B760F04F4B1
      8CD5B9ACEE5FAA3516252E2C3BBDE8F2EEA82573696E5A650CFF0039494BA145
      3DDE104F70180B0384792C31C59C37C66B619BCB0BEF1A75C54878F0F2F28E6E
      A697B6FC0EA0ECB696011BA160286FD11EB6010842011A879C0D46F0B72D099A
      B3ED90C5E388094941A5CBBFB4B5397DA338EA77E123A7924F667B7C008546AE
      EA33A895EB2F7BD5B013016E57E8921445BB4EB8EB727D84D4C4E2494BB2CC39
      EB9A436414A969D94A585004246EBACD71C71E714EBAE296B5A8A94A51DCA89E
      924F6CC04878E3982C58CC4DDABBC7156EA7EA9320A93292A9FDCE5245B27F7B
      6191D8B69E61B9E752B6DD45479E37C74F1CF1E51301F07256C0C48B7A62DABA
      D999997AA35F6E8DEAC45552B796A64A9C6429E05B6D496F80A7840402092A20
      67B2A9964D2F6EEC1AB6ABD7DE20506B9754FD39898AD315BBCD54A98929D281
      CBB0259B799525B439C494A9415C400505A8106261393BD264FF00ADD863FACB
      99F4E80C3E607537C8CD66C1A9D0A56D673151E9F9771A6A94FD0152F2AA70A4
      F0979D9B420B69E2DBB36D2B5A4EC40DC6E29D2DAA95368F71D2AAF59A23559A
      7C8CF3133374D75D53489D650E052D852D3D9242D20A4A8738E2DC45D09C9BE9
      367A2A3630FEB2DFF4D8FC1C9A693C7A2AF648F06253DE9901D1873AA5644642
      D7939095B4EA763B52CD86D3496ED86834C6C3A1BF52952383B9EB4EDD291D11
      A99A8F670B2C998FB5E856FE0DD8AF1B8642AA89D9BB9E668CCC9AD526965E41
      9442F7E596952DC42C8504A41693B7113CDB6CAC9869427A2BD6627C1894E7A5
      C75AB257A521E8B9AD04F831255E950159D92DC69C25C05C6D96BF719B0DBAB2
      A12241E966994CBB330ED3E694B6D4DCE34D3C436E2D210A400549203A540EE9
      00DA927559C8D8933B4ED692148E797EA657BF47AD3F4BFDBB479A5649B4A73D
      177DAA9F06247ED31D4AC90E956AE8BE6D94F8311D3F1BF015A99D2C65C2EC79
      C7AAAE22E11592FDB3419B9496972CBEC34C3B34FB68E15CC29A68A90D950E14
      EC1477080A3B151036474F1CE7E5532F3644D5AD8B1862F4A5D0F4EBD306EC94
      A5353CB9997504F032E289E59A08DB60840520F3A8ECA277D955646B4AF57462
      25BE9F062335F1BD1D2AC8A6968AE8C50A227C188B2FF1B90191C48D52322350
      B52769D3166D4AF96E65B53668EEDB0D722F9239839EA9294046FB6E76511DA4
      9E88A68AF4F4854EB951A952A90DD2A4A6E6DE7E5A41B754E2251A52C943295A
      BB2504021209E73B6E62E01790CD2E55EB7176948F0621CA7C6A8E85E4134BF5
      FADC6B9147D8E2148FC7BC065301F52AC85D0B0F6914272D8770DDDA7C9B4C3B
      4B4DB85F692E040E32DBB2C95F2A0AB7ECDC095ABD728024C411A84678F2958F
      38573360618D87315BBA17332CEC8DCF31466E4D34D6D2EA56EF24B5ECFA8AD2
      9E4CA38128217C449290225C5E9F9A62AFD6E3D328FB1C40A6FC6931D0BD3CF4
      CB5FADCC5147D8DFF4AF8DB3015858338E78A380177B37B615DD73546A82364B
      EDA4F1CBCE340EFC93ED1EC5D41EE11B83CE9208045CBE4FB51DC2DCC9332767
      DDCB95B3B1096037F335F77694A939FC693755D24F4F22A3C637D872801546AD
      E3FE49F4EAC3AC23BB6EBB4332CE4CDCF4EA3CD4D5129E6F1A5CE2A767508259
      6430D33CAB816BE149E12360ADC9001315A285ADB5A5C6D6A4AD24292A49D882
      3A08301FD48C22A5F4FBD4A2AB6FD453847996BC5C9BA0AA5D6AA3DCB515971F
      925B682AF53CC39CEA71B5004216775255B2492950E040607505D3B316A8789F
      7263660F5B73F775AB744CBD5CA8CB490E5A7E993AF2CAE612581D9BAD296A52
      D2A6D2AE105495001016BD10EA06FAEF2EBDE2D7BCD84201D40DF5DE5D7BC5CF
      79B0EA06FAEF2EBDE2E7BCD84201D40DF5DE5D7BC5CF79B0EA06FAEF2EBDE2E7
      BCD84201D40DF5DE5D7BC5CF79B0EA06FAEF2EBDE2E7BCD84201D40DF5DE5D7B
      C5CF79B0EA06FAEF2EBDE2E7BCD84201D40DF5DE5D7BC5CF79B0EA06FAEF2EBD
      E2E7BCD84201D40DF5DE5D7BC5CF79B0EA06FAEF2EBDE2E7BCD84201D40DF5DE
      5D7BC5CF79B0EA06FAEF2EBDE2E7BCD84201D40DF5DE5D7BC5CF79B0EA06FAEF
      2EBDE2E7BCD8420377F241A61DF58AF5A62FCCC0DBF52B56C444B38B97927946
      5AA5547569296CA5B3D9B0D249E32B58055B20252A4A8A9284203FFFD9}
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 104
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Color = clWindow
      VGuides.Strings = (
        '18,89765')
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Picture1: TfrxPictureView
          Width = 86.929190000000000000
          Height = 68.031540000000000000
          Picture.Data = {
            0A544A504547496D616765AE120000FFD8FFE000104A46494600010100000100
            010000FFDB004300030202020202030202020303030304060404040404080606
            050609080A0A090809090A0C0F0C0A0B0E0B09090D110D0E0F101011100A0C12
            131210130F101010FFDB00430103030304030408040408100B090B1010101010
            1010101010101010101010101010101010101010101010101010101010101010
            10101010101010101010101010FFC00011080078009703012200021101031101
            FFC4001E0001000202030101010000000000000000000709050801030604020A
            FFC4006010000102040401030B09110B0D010000000102030004050607080911
            12132131161922415156719596D2D414323857B1B3B4C1D31518364247587273
            74757681869193B5E42333375261628487A1A5D1242634445364658394A3A6B2
            C2C4FFC40014010100000000000000000000000000000000FFC4001411010000
            0000000000000000000000000000FFDA000C03010002110311003F00B3D84210
            187BC2EFB6EC1B5AA97ADE157629745A2CAB9393D36F9D90D3481B93CDCE4F68
            01B92480012408AA5C5ED5233038E17A0C31CA4D9D35486AA2F2A5A9EF332227
            AB73E0024AD28214DB09E1054404A94900AB941B1DA72D65B102A36F601DB161
            D3E656CB776D7C2A7424EDCACB4A365CE4CF7472AB617E16C477E8DF81344B5F
            04AA18EF3F4E61DB82F49E9892929B20296C52E59CE4CB69246E8E3986DE2BD8
            ECA0DB5BFAD101ADF29A6AEA2188C17775E988B234EAB4FA8AE61AAEDE134F4D
            EFDA2B54BA1E4747400B3B0E6D87447D1D69BCF27B6F59FE53D4FD1632D9AED5
            8F1DA958B37561F609B545B72876DD4E6690D541F9044E4ECDB8C38A69C7B774
            A9A4A14A49284F27B84EDC4493B0800EA879EA574E399FC56D51C7FF0092026A
            EB4D6793DB82CEF29EA7E8B1CF5A673C7EDC367794F53F45884C6A839E91F573
            5793748F458E46A899EA1F5733E4D51FD12026CEB4C678BDB92CCF29EA9E8B1C
            F5A5F3C5EDCB66794D54F44886E5B54FCF231B72B8C32F33F6DB6E963FF59711
            F5AB55CCED94EC312A980F745BB21BFBD404B3D696CF0FB73597E53557D1239E
            B4B6787DB9ECBF29AABE8910EBBAA96789C1D862E4A37F636DD33E39731F2AB5
            46CF5289231C427F905B347F45809B4692B9E03F569B287E53557D123F43492C
            EF9FAB6D903F29AADE871062B540CF42BA71D17F8ADCA40F72563F29D4F73CE9
            3B8C7477F1DBD493EECAC04C15AD35F50FC310DDD7646204AD6AA724AE36936D
            DE134C4DA3BA52A994B00F37682B73D1B1E88FBF013540C79C13BE061966C691
            51ACD3A4E61329507A7A43D4B5CA49E6EC969E14F2E9008514AD3C641042CF30
            39CC9B6AA78E9716315A585B8E0E52AE6A45D953628C9A9B54E6E527A5666616
            1B617FB87032A6F94524287260EC7882BB1E154DFAC4E035B174606CBE3C4A53
            A5E5EE6B32765656667528D9C9AA6CC3BC9720B23D7703EEB4B413BF082E81EB
            CC06F2D02BD46BA6874FB96DDA93150A555659B9C929B617C4DBEC3890A42D27
            B60A4831F7C68A68FD89751BC72D952B2AAB32B7DCB26BAEC9C9951DCA249F42
            5E4279FB8E2A636EE0D876A37AE01084201084202B2B5B8FA19C26FBBEAFEF72
            B1B49A61219464670C83077496EAC49FE71AB4E157F6EF1AB7ADBFD0BE137DDF
            57F7B968D9CD2D97C7917C374FF115594FF7BCE1F8E029071ED812B8E988D2C9
            E866ECABB63F14E3A23C24481986FE1FB133F0C2B3F0D7623F80421080421080
            42108042108091F2D44A7319856A07622F6A191FF5ECC5D5EAA2E706476FE4FF
            00B498A3A7FBCE58FC514A996BF645E15FE1AD0FE1CCC5D3EAADEC1FBE7EEAA3
            FEB29780D75D12F7EA2B1539F9BE6A533DE9F8B2E8AD1D12FE82714FEFAD33DE
            5E8B2E80421080421080ACAD6DFE86309BEEFABFBDCAC6CBE961EC1BC3EFB756
            3F5A4D46B3EB704753584A3FDFAB1EF72B1B31A587B06F0FBEDD58FD69350149
            7986FE1FB133F0C2B3F0D7623F890330DFC3F6267E18567E1AEC47F008421008
            4210084210084210123E5AFD917857F86B43F8733174FAAB7B07EF9FBAA8FF00
            ACA5E29632D7EC8BC2BFC35A1FC3998BAED5359E53235886BDBF7A768CBFEF59
            41F1C06B76897F4158A7F7D299EF2F45974568E8947FCCBC541FF14A67BD3F16
            5D00842100842101585ADDB8452307DAED2A66B8A3F89325FE31B3BA572C2F23
            B60A41E744C56127C67327E388335A4B267AAD83B62DF72AC29C62DDAF3D2532
            5237E4D136C82167B89E3964A77EEAD23B71ECB46EC4690B9F2C951B04CD33F3
            4ACCB82610B960BDDC4CA4D00FB4EA876829C33291F6A3015199825A5DC7BC4A
            710774AEEFACA8780CEBB1E06374F371A7AE672DCC6ABD2E5B3F0C2AB76DB15E
            AE4E556993D43409B5F2330F29D0D38CA09750B471F0289470929DD2483100AF
            29D9A66D452ACB5E29EE0EC76B3EA247E70CC045508948E54F3443A72DB8A63C
            367547E46383956CCF8E9CB86288FC8FA87C8C045D08943E758CCEFD6E38A1E4
            8543E4638F9D67339F5B9628792150F92808C211287CEB199E3D1971C50F242A
            1F231C8CAAE680F465BF148FE47D47E46022E844A632A39A43D196BC54F23AA3
            F231DF2D944CD5CDAB81ACB6627A4EFB7EE969CF363F3A9A020311972752C661
            70BDF5FAD6EF3A22CF804F3262EEF542E4FE716C4DE50903868FB6DDDF9AF27B
            7F6ED15C1943D3B733557C74B2EE7BEF0DAA168DB16ED6A4EB3519DAB8434A5B
            72CF25EE41B64AB9452DC28E0DF8764F16E4F36C7753588C5DA559F969630B13
            32CAEAF7FD565D0258ABB34C94A3899875EDB6E80EA2591CFB6FCA1DB7E13011
            4E890E136C62CB5DA4CFD215F9DB99FF0008B358AF3D17ECA9FA46095E97C4DB
            0A699B8EE144B4A950DB956E55900AC77471BCB4F850AEE45864021084021084
            0795C53C33B4718F0FAB98677D53FD5944AFCA99699424F0AD1CE148710AE7E1
            5A1612B49DB9949079E2A0EE7CAAE75B20589AFE23E042AAB70D11B0A6D156A2
            49FAAD331264EE599F91D94A039812784A010149585005374D080A9CB635B2C5
            6A234A90C48C06B7AA75065450E1A75466297B11DA536EA26083DDE71E011E88
            6B98ADB9F2BE09FE4BD7F608B29AF597675D3B0B9ED3A355F61B0F57C83531CD
            DCECD263CBB9979C01795C6F60761FAD5BEFBAAD992277FD1C057FF5F30FD6BD
            FF009B7EC11C75F315F5AF8F2D7F608B066701302E5B9E5F05EC46BEC2DC934F
            B8DC54EEB0B665A768639D989B52DEA651DA9AB4D3CB4BD3E55B976D4A4CE4C6
            CB2840037215B6FD3B240ED404B675CB77B5960479687D06035CC73E9B2C093E
            0BD3F608AAF8405AB33AE5B2A5ED319625A11DD45E6147F31911EEC6499D712D
            550FF28CBB55507F9971B6AF765C454BC6FDE8EF665A577E34DEE2EBB7697596
            E56D61C8B150946E61092A9B677504AC100F6206FD3CE7BB013A8D702C6DB9F0
            02BBBFDFC67E4A3E39DD716DC6DB269D973A93EE7692F5CCDB40FE312CAF7237
            C9FC02C0A99FF48C15B0DDFB3B724D5EEB71D2DE5DB2FCD282DAC0BC3D4281DC
            14DB1240EFFA280AE8B975B5C44AE4A1A6E1C65EA914DABBE421872A1597AA89
            DCF6832D32C2947B9D97E23D1118D9393DCE4E7B714138A38FCE55EDEA4CD726
            999AC57257D4CE22512494B1212442484EC5453D8A5BDD4A5152944F15C7506C
            BB3AD5045AF69D1A8E08D8890906A5F71DCEC12233301E670CF0E2D2C22B0A89
            86D6353448D0E812A994946B7DD440DCA96B57D32D6A2A5A95DB5289EDC7A684
            20108420108420108F2D8938A387D83F6ACCDED8997653EDEA34AF32E666DCDB
            8D5B6E10DA06EA716763B2100A8F68468D5DFAD160AD2AA6EC9D9B85D7657E55
            A51489B99798914BBB7D3213BB8AE13DAE2093DD0202C2DE752C32E3EBDF85B4
            959D86E760378A79BEB57DCCDD06F7B82874BB530F11254DAA4D4A4BA5EA6CDA
            DC0D36EA909E2509A014AD80DC80013BF30E88981AD6CB0FD7CD3180F70241E9
            E1AC30AF75B1184EBAE6571E515CC6545D2A57393EA6A72893E1298088BAF2F9
            A6E1E1EA3B0CB7EEFCCA9EDFE191AC598ECC9623668EFA96C40C4B4D2DBA849D
            39BA5CBB34C975B32EDB0871C7000952D6772A756492A3DAEE46FE75D5329846
            E72A4FEFF7BE9BFE11F85EAA594E3D194F74FF0041A68F8A02ACA11690AD5432
            A7BF36531C3FD1A9E3FF0098FC1D5432B03A3292AFD0C87990157512BE5BB32F
            88F95ABDE72FCC344529E9E9FA72E9732C5525D6F4BB8C29C6DCE74A16821414
            D276215D1B8EDC6F6F5D4F2B83A328FF009DAA7F991C8D55F2C03A328A8FD0D3
            FE4E022BEBCBE69B8787A8EC32DFBBF32A7B7F864666C1D5F332D5EBF6DCA2D7
            2D8C3F34DA8D5A52527132F4D9A6DCE45C79285F028CC90957093B1208076DC1
            E88F78355ACB10E8CA3A07FC9A7FC9C7737AB0E59DB505A329EB411CE0A5AA78
            23FEDC05A2A161C425C4EFB280237E9E78E62B891AD76149F5F82B760F04F4B1
            8CD5B9ACEE5FAA3516252E2C3BBDE8F2EEA82573696E5A650CFF0039494BA145
            3DDE104F70180B0384792C31C59C37C66B619BCB0BEF1A75C54878F0F2F28E6E
            A697B6FC0EA0ECB696011BA160286FD11EB6010842011A879C0D46F0B72D099A
            B3ED90C5E388094941A5CBBFB4B5397DA338EA77E123A7924F667B7C008546AE
            EA33A895EB2F7BD5B013016E57E8921445BB4EB8EB727D84D4C4E2494BB2CC39
            EB9A436414A969D94A585004246EBACD71C71E714EBAE296B5A8A94A51DCA89E
            924F6CC04878E3982C58CC4DDABBC7156EA7EA9320A93292A9FDCE5245B27F7B
            6191D8B69E61B9E752B6DD45479E37C74F1CF1E51301F07256C0C48B7A62DABA
            D999997AA35F6E8DEAC45552B796A64A9C6429E05B6D496F80A7840402092A20
            67B2A9964D2F6EEC1AB6ABD7DE20506B9754FD39898AD315BBCD54A98929D281
            CBB0259B799525B439C494A9415C400505A8106261393BD264FF00ADD863FACB
            99F4E80C3E607537C8CD66C1A9D0A56D673151E9F9771A6A94FD0152F2AA70A4
            F0979D9B420B69E2DBB36D2B5A4EC40DC6E29D2DAA95368F71D2AAF59A23559A
            7C8CF3133374D75D53489D650E052D852D3D9242D20A4A8738E2DC45D09C9BE9
            367A2A3630FEB2DFF4D8FC1C9A693C7A2AF648F06253DE9901D1873AA5644642
            D7939095B4EA763B52CD86D3496ED86834C6C3A1BF52952383B9EB4EDD291D11
            A99A8F670B2C998FB5E856FE0DD8AF1B8642AA89D9BB9E668CCC9AD526965E41
            9442F7E596952DC42C8504A41693B7113CDB6CAC9869427A2BD6627C1894E7A5
            C75AB257A521E8B9AD04F831255E950159D92DC69C25C05C6D96BF719B0DBAB2
            A12241E966994CBB330ED3E694B6D4DCE34D3C436E2D210A400549203A540EE9
            00DA927559C8D8933B4ED692148E797EA657BF47AD3F4BFDBB479A5649B4A73D
            177DAA9F06247ED31D4AC90E956AE8BE6D94F8311D3F1BF015A99D2C65C2EC79
            C7AAAE22E11592FDB3419B9496972CBEC34C3B34FB68E15CC29A68A90D950E14
            EC1477080A3B151036474F1CE7E5532F3644D5AD8B1862F4A5D0F4EBD306EC94
            A5353CB9997504F032E289E59A08DB60840520F3A8ECA277D955646B4AF57462
            25BE9F062335F1BD1D2AC8A6968AE8C50A227C188B2FF1B90191C48D52322350
            B52769D3166D4AF96E65B53668EEDB0D722F9239839EA9294046FB6E76511DA4
            9E88A68AF4F4854EB951A952A90DD2A4A6E6DE7E5A41B754E2251A52C943295A
            BB2504021209E73B6E62E01790CD2E55EB7176948F0621CA7C6A8E85E4134BF5
            FADC6B9147D8E2148FC7BC065301F52AC85D0B0F6914272D8770DDDA7C9B4C3B
            4B4DB85F692E040E32DBB2C95F2A0AB7ECDC095ABD728024C411A84678F2958F
            38573360618D87315BBA17332CEC8DCF31466E4D34D6D2EA56EF24B5ECFA8AD2
            9E4CA38128217C449290225C5E9F9A62AFD6E3D328FB1C40A6FC6931D0BD3CF4
            CB5FADCC5147D8DFF4AF8DB3015858338E78A380177B37B615DD73546A82364B
            EDA4F1CBCE340EFC93ED1EC5D41EE11B83CE9208045CBE4FB51DC2DCC9332767
            DDCB95B3B1096037F335F77694A939FC693755D24F4F22A3C637D872801546AD
            E3FE49F4EAC3AC23BB6EBB4332CE4CDCF4EA3CD4D5129E6F1A5CE2A767508259
            6430D33CAB816BE149E12360ADC9001315A285ADB5A5C6D6A4AD24292A49D882
            3A08301FD48C22A5F4FBD4A2AB6FD453847996BC5C9BA0AA5D6AA3DCB515971F
            925B682AF53CC39CEA71B5004216775255B2492950E040607505D3B316A8789F
            7263660F5B73F775AB744CBD5CA8CB490E5A7E993AF2CAE612581D9BAD296A52
            D2A6D2AE105495001016BD10EA06FAEF2EBDE2D7BCD84201D40DF5DE5D7BC5CF
            79B0EA06FAEF2EBDE2E7BCD84201D40DF5DE5D7BC5CF79B0EA06FAEF2EBDE2E7
            BCD84201D40DF5DE5D7BC5CF79B0EA06FAEF2EBDE2E7BCD84201D40DF5DE5D7B
            C5CF79B0EA06FAEF2EBDE2E7BCD84201D40DF5DE5D7BC5CF79B0EA06FAEF2EBD
            E2E7BCD84201D40DF5DE5D7BC5CF79B0EA06FAEF2EBDE2E7BCD84201D40DF5DE
            5D7BC5CF79B0EA06FAEF2EBDE2E7BCD84201D40DF5DE5D7BC5CF79B0EA06FAEF
            2EBDE2E7BCD8420377F241A61DF58AF5A62FCCC0DBF52B56C444B38B97927946
            5AA5547569296CA5B3D9B0D249E32B58055B20252A4A8A9284203FFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 86.929190000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio dos objetos por setor e tipo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 952.441560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo13: TfrxMemoView
          Left = 86.929190000000000000
          Top = 18.897650000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."instituicao"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'codigo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."codigo"]')
        end
        object Memo8: TfrxMemoView
          Left = 112.724490000000000000
          Width = 347.716515910000000000
          Height = 15.118120000000000000
          DataField = 'descricao'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."descricao"]')
        end
        object Memo9: TfrxMemoView
          Left = 635.134200000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'datacriacao'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."datacriacao"]')
        end
        object Memo10: TfrxMemoView
          Left = 728.622450000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          DataField = 'autor'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."autor"]')
        end
        object Memo11: TfrxMemoView
          Left = 951.866730000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'aquisicao'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."aquisicao"]')
        end
        object Memo16: TfrxMemoView
          Left = 461.102660000000000000
          Width = 173.858135910000000000
          Height = 15.118120000000000000
          DataField = 'tipo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."tipo"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Fill.BackColor = cl3DLight
        Height = 15.118120000000000000
        Top = 158.740260000000000000
        Width = 1046.929810000000000000
        KeepChild = True
        object Memo2: TfrxMemoView
          Left = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 112.724490000000000000
          Width = 347.716515910000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 635.134200000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cria'#231#227'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 728.622450000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Autor')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 951.866730000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Aquisi'#231#227'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 15.118120000000000000
          Width = 1046.929133860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Width = 1046.929133860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Left = 460.102660000000000000
          Width = 173.858135910000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDataset1."setor"'
        object Memo14: TfrxMemoView
          Width = 952.441560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Setor: [<frxDBDataset1."setor">]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DataModule1.FdqRelatorio
    BCDToCurrency = False
    Left = 80
    Top = 104
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FdqSetor
    ScopeMappings = <>
    Left = 192
    Top = 80
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = CmbSetor
      Track = True
      FillDataSource = BindSourceDB1
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField2: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = CmbTipo
      Track = True
      FillDataSource = BindSourceDB2
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.FdqTipo
    ScopeMappings = <>
    Left = 264
    Top = 56
  end
end
