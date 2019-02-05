object DMATI: TDMATI
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 121
  Top = 25
  Height = 712
  Width = 811
  object ATISkt: TSocketConnection
    ServerGUID = '{E8BA724D-969D-4ADD-9360-2D32D366C40C}'
    ServerName = 'ATIsrvPrj.SrvATI'
    Left = 48
    Top = 8
  end
  object cdsQry: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 96
    Top = 8
  end
  object dsQry: TwwDataSource
    DataSet = cdsQry
    Left = 96
    Top = 48
  end
  object cdsQry1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry1'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 61
    Top = 104
  end
  object dsQry1: TwwDataSource
    DataSet = cdsQry1
    Left = 61
    Top = 144
  end
  object cdsQRY12: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry12'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 111
    Top = 192
  end
  object dsQRY12: TwwDataSource
    DataSet = cdsQRY12
    Left = 111
    Top = 232
  end
  object cdsQRY13: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry13'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 160
    Top = 192
  end
  object dsQRY13: TwwDataSource
    DataSet = cdsQRY13
    Left = 160
    Top = 232
  end
  object cdsQry2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry2'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 111
    Top = 104
  end
  object dsQry2: TwwDataSource
    DataSet = cdsQry2
    Left = 111
    Top = 144
  end
  object cdsQry3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry3'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 160
    Top = 104
  end
  object dsQry3: TwwDataSource
    DataSet = cdsQry3
    Left = 160
    Top = 144
  end
  object cdsQry4: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry4'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 207
    Top = 104
  end
  object dsQry4: TwwDataSource
    DataSet = cdsQry4
    Left = 207
    Top = 144
  end
  object cdsQry5: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry5'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 258
    Top = 104
  end
  object dsQry5: TwwDataSource
    DataSet = cdsQry5
    Left = 258
    Top = 144
  end
  object cdsQry6: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry6'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 308
    Top = 104
  end
  object dsQry6: TwwDataSource
    DataSet = cdsQry6
    Left = 308
    Top = 144
  end
  object cdsQry7: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry7'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 363
    Top = 104
  end
  object dsQry7: TwwDataSource
    DataSet = cdsQry7
    Left = 363
    Top = 144
  end
  object cdsQry8: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry8'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 420
    Top = 104
  end
  object dsQry8: TwwDataSource
    DataSet = cdsQry8
    Left = 420
    Top = 144
  end
  object cdsQry9: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry9'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 474
    Top = 104
  end
  object dsQry9: TwwDataSource
    DataSet = cdsQry9
    Left = 474
    Top = 144
  end
  object cdsQry10: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry10'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 531
    Top = 104
  end
  object dsQry10: TwwDataSource
    DataSet = cdsQry10
    Left = 531
    Top = 144
  end
  object cdsQryR: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQryR'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 179
    Top = 8
  end
  object dsQryR: TwwDataSource
    DataSet = cdsQryR
    Left = 179
    Top = 48
  end
  object cdsQryC: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQryC'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 275
    Top = 8
  end
  object dsQryC: TwwDataSource
    DataSet = cdsQryC
    Left = 275
    Top = 48
  end
  object cdsQRY20: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry20'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 531
    Top = 192
  end
  object dsQRY20: TwwDataSource
    DataSet = cdsQRY20
    Left = 531
    Top = 232
  end
  object cdsQry11: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry11'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 61
    Top = 192
  end
  object dsQRY11: TwwDataSource
    DataSet = cdsQry11
    Left = 61
    Top = 232
  end
  object cdsQry14: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry14'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 207
    Top = 192
  end
  object dsQRY14: TwwDataSource
    DataSet = cdsQry14
    Left = 207
    Top = 232
  end
  object cdsQry15: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry15'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 258
    Top = 192
  end
  object dsQRY15: TwwDataSource
    DataSet = cdsQry15
    Left = 258
    Top = 232
  end
  object cdsQry16: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry16'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 308
    Top = 192
  end
  object dsQRY16: TwwDataSource
    DataSet = cdsQry16
    Left = 308
    Top = 232
  end
  object cdsQry17: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry17'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 363
    Top = 192
  end
  object dsQRY17: TwwDataSource
    DataSet = cdsQry17
    Left = 363
    Top = 232
  end
  object cdsQry18: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry18'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 420
    Top = 192
  end
  object dsQRY18: TwwDataSource
    DataSet = cdsQry18
    Left = 420
    Top = 232
  end
  object cdsQry19: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry19'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 474
    Top = 192
  end
  object dsQRY19: TwwDataSource
    DataSet = cdsQry19
    Left = 474
    Top = 232
  end
  object cdsQRY22: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry22'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 111
    Top = 280
  end
  object dsQRY22: TwwDataSource
    DataSet = cdsQRY22
    Left = 111
    Top = 320
  end
  object cdsQRY23: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry23'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 160
    Top = 280
  end
  object dsQRY23: TwwDataSource
    DataSet = cdsQRY23
    Left = 160
    Top = 320
  end
  object cdsQRY30: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry30'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 531
    Top = 280
  end
  object dsQRY30: TwwDataSource
    DataSet = cdsQRY30
    Left = 531
    Top = 320
  end
  object cdsQRY21: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry21'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 61
    Top = 280
  end
  object dsQRY21: TwwDataSource
    DataSet = cdsQRY21
    Left = 61
    Top = 320
  end
  object cdsQRY24: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry24'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 207
    Top = 280
  end
  object dsQRY24: TwwDataSource
    DataSet = cdsQRY24
    Left = 207
    Top = 320
  end
  object cdsQRY25: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry25'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 258
    Top = 280
  end
  object dsQRY25: TwwDataSource
    DataSet = cdsQRY25
    Left = 258
    Top = 320
  end
  object cdsQRY26: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry26'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 308
    Top = 280
  end
  object dsQRY26: TwwDataSource
    DataSet = cdsQRY26
    Left = 308
    Top = 320
  end
  object cdsQRY27: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry27'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 363
    Top = 280
  end
  object dsQRY27: TwwDataSource
    DataSet = cdsQRY27
    Left = 363
    Top = 320
  end
  object cdsQRY28: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry28'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 420
    Top = 280
  end
  object dsQRY28: TwwDataSource
    DataSet = cdsQRY28
    Left = 420
    Top = 320
  end
  object cdsQRY29: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry29'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 474
    Top = 280
  end
  object dsQRY29: TwwDataSource
    DataSet = cdsQRY29
    Left = 474
    Top = 320
  end
  object cdsQRY32: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry32'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 111
    Top = 464
  end
  object dsQRY32: TwwDataSource
    DataSet = cdsQRY32
    Left = 111
    Top = 504
  end
  object cdsQRY33: TwwClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsQRY33Index2'
        Options = [ixDescending, ixCaseInsensitive]
      end>
    Params = <>
    ProviderName = 'dspQry33'
    RemoteServer = ATISkt
    StoreDefs = True
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 160
    Top = 464
  end
  object dsQRY33: TwwDataSource
    DataSet = cdsQRY33
    Left = 160
    Top = 504
  end
  object cdsQRY40: TwwClientDataSet
    Aggregates = <>
    FilterOptions = [foCaseInsensitive]
    Params = <>
    ProviderName = 'dspQry40'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 531
    Top = 464
  end
  object dsQRY40: TwwDataSource
    DataSet = cdsQRY40
    Left = 531
    Top = 504
  end
  object cdsQRY31: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry31'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 61
    Top = 464
  end
  object dsQRY31: TwwDataSource
    DataSet = cdsQRY31
    Left = 61
    Top = 504
  end
  object cdsQRY34: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry34'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 207
    Top = 464
  end
  object dsQRY34: TwwDataSource
    DataSet = cdsQRY34
    Left = 207
    Top = 504
  end
  object cdsQRY35: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry35'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 258
    Top = 464
  end
  object dsQRY35: TwwDataSource
    DataSet = cdsQRY35
    Left = 258
    Top = 504
  end
  object cdsQRY36: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry36'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 308
    Top = 464
  end
  object dsQRY36: TwwDataSource
    DataSet = cdsQRY36
    Left = 308
    Top = 504
  end
  object cdsQRY37: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry37'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 363
    Top = 464
  end
  object dsQRY37: TwwDataSource
    DataSet = cdsQRY37
    Left = 363
    Top = 504
  end
  object cdsQRY38: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry38'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 420
    Top = 464
  end
  object dsQRY38: TwwDataSource
    DataSet = cdsQRY38
    Left = 420
    Top = 504
  end
  object cdsQRY39: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry39'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 474
    Top = 464
  end
  object dsQRY39: TwwDataSource
    DataSet = cdsQRY39
    Left = 474
    Top = 504
  end
  object cdsQRY22A: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry22A'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 111
    Top = 368
  end
  object dsQRY22A: TwwDataSource
    DataSet = cdsQRY22A
    Left = 111
    Top = 408
  end
  object cdsQRY23A: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry23A'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 160
    Top = 368
  end
  object dsQRY23A: TwwDataSource
    DataSet = cdsQRY23A
    Left = 160
    Top = 408
  end
  object cdsQRY30A: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry30A'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 531
    Top = 368
  end
  object dsQRY30A: TwwDataSource
    DataSet = cdsQRY30A
    Left = 531
    Top = 408
  end
  object cdsQRY21A: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry21A'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 61
    Top = 368
  end
  object dsQRY21A: TwwDataSource
    DataSet = cdsQRY21A
    Left = 61
    Top = 408
  end
  object cdsQRY24A: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry24A'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 207
    Top = 368
  end
  object dsQRY24A: TwwDataSource
    DataSet = cdsQRY24A
    Left = 207
    Top = 408
  end
  object cdsQRY25A: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry25A'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 258
    Top = 368
  end
  object dsQRY25A: TwwDataSource
    DataSet = cdsQRY25A
    Left = 258
    Top = 408
  end
  object cdsQRY26A: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry26A'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 308
    Top = 368
  end
  object dsQRY26A: TwwDataSource
    DataSet = cdsQRY26A
    Left = 308
    Top = 408
  end
  object cdsQRY27A: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry27A'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 363
    Top = 368
  end
  object dsQRY27A: TwwDataSource
    DataSet = cdsQRY27A
    Left = 363
    Top = 408
  end
  object cdsQRY28A: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry28A'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 420
    Top = 368
  end
  object dsQRY28A: TwwDataSource
    DataSet = cdsQRY28A
    Left = 420
    Top = 408
  end
  object cdsQRY29A: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry29A'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 474
    Top = 368
  end
  object dsQRY29A: TwwDataSource
    DataSet = cdsQRY29A
    Left = 474
    Top = 408
  end
  object cdsRepocitorio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 16
  end
  object dsRepocitorio: TDataSource
    DataSet = cdsRepocitorio
    Left = 376
    Top = 44
  end
  object cdsQRY42: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry42'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 111
    Top = 552
  end
  object dsQRY42: TwwDataSource
    DataSet = cdsQRY42
    Left = 111
    Top = 592
  end
  object cdsQRY43: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry43'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 160
    Top = 552
  end
  object dsQRY43: TwwDataSource
    DataSet = cdsQRY43
    Left = 160
    Top = 592
  end
  object cdsati_det_retiro_parte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry50'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 651
    Top = 128
  end
  object dsati_det_retiro_parte: TwwDataSource
    DataSet = cdsati_det_retiro_parte
    Left = 651
    Top = 168
  end
  object cdsQRY41: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry41'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 61
    Top = 552
  end
  object dsQRY41: TwwDataSource
    DataSet = cdsQRY41
    Left = 61
    Top = 592
  end
  object cdsQRY44: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry44'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 207
    Top = 552
  end
  object dsQRY44: TwwDataSource
    DataSet = cdsQRY44
    Left = 207
    Top = 592
  end
  object cdsQRY45: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry45'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 258
    Top = 552
  end
  object dsQRY45: TwwDataSource
    DataSet = cdsQRY45
    Left = 258
    Top = 592
  end
  object cdsQRY46: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry46'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 308
    Top = 552
  end
  object dsQRY46: TwwDataSource
    DataSet = cdsQRY46
    Left = 308
    Top = 592
  end
  object cdsQRY47: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry47'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 363
    Top = 552
  end
  object dsQRY47: TwwDataSource
    DataSet = cdsQRY47
    Left = 363
    Top = 592
  end
  object cdsQRY48: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry48'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 420
    Top = 552
  end
  object dsQRY48: TwwDataSource
    DataSet = cdsQRY48
    Left = 420
    Top = 592
  end
  object cdsQRY49: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry49'
    RemoteServer = ATISkt
    ValidateWithMask = True
    Left = 474
    Top = 552
  end
  object dsQRY49: TwwDataSource
    DataSet = cdsQRY49
    Left = 474
    Top = 592
  end
  object cdsInformetec: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 24
  end
  object dsInformetec: TDataSource
    DataSet = cdsInformetec
    Left = 608
    Top = 53
  end
  object cdsEntrada: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 464
    Top = 16
  end
  object dsEntrada: TDataSource
    DataSet = cdsEntrada
    Left = 464
    Top = 44
  end
  object cdsInforme1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 8
  end
  object dsInforme1: TDataSource
    DataSet = cdsInforme1
    Left = 688
    Top = 37
  end
  object cdsSalida: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 16
  end
  object dsSalida: TDataSource
    DataSet = cdsSalida
    Left = 536
    Top = 44
  end
  object cdsQRY50: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry50'
    RemoteServer = ATISkt
    PictureMasks.Strings = (
      'CODNOMEQUIPO'#9'#*#'#9'T'#9'T')
    ValidateWithMask = True
    Left = 531
    Top = 552
  end
  object dsQRY50: TwwDataSource
    DataSet = cdsQRY50
    Left = 531
    Top = 592
  end
end
