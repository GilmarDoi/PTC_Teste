object Form_CadEndereco: TForm_CadEndereco
  Left = 364
  Top = 267
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Ender'#231'o'
  ClientHeight = 182
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = -8
    Top = 8
    Width = 705
    Height = 177
    Caption = 'Dados do Endere'#231'o do Cliente '
    TabOrder = 0
    object Label12: TLabel
      Left = 18
      Top = 22
      Width = 53
      Height = 13
      Caption = 'idEndereco'
      FocusControl = DBEdit8
    end
    object Label15: TLabel
      Left = 77
      Top = 22
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEdit11
    end
    object Label13: TLabel
      Left = 232
      Top = 22
      Width = 55
      Height = 13
      Caption = 'Logradouro'
      FocusControl = DBEdit9
    end
    object Label14: TLabel
      Left = 613
      Top = 19
      Width = 37
      Height = 13
      Caption = 'Numero'
      FocusControl = DBEdit10
    end
    object Label18: TLabel
      Left = 553
      Top = 68
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = DBEdit14
    end
    object Label16: TLabel
      Left = 316
      Top = 68
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit12
    end
    object Label17: TLabel
      Left = 79
      Top = 68
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit13
    end
    object DBEdit8: TDBEdit
      Left = 21
      Top = 41
      Width = 31
      Height = 21
      DataField = 'idEndereco'
      DataSource = DataModule1.DS_Enderco
      Enabled = False
      TabOrder = 0
    end
    object DBEdit11: TDBEdit
      Left = 77
      Top = 41
      Width = 65
      Height = 21
      DataField = 'CEP'
      DataSource = DataModule1.DS_Enderco
      TabOrder = 1
    end
    object DBEdit9: TDBEdit
      Left = 232
      Top = 41
      Width = 371
      Height = 21
      DataField = 'Logradouro'
      DataSource = DataModule1.DS_Enderco
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 609
      Top = 41
      Width = 76
      Height = 21
      DataField = 'Numero'
      DataSource = DataModule1.DS_Enderco
      TabOrder = 3
    end
    object DBEdit14: TDBEdit
      Left = 553
      Top = 87
      Width = 50
      Height = 21
      DataField = 'Estado'
      DataSource = DataModule1.DS_Enderco
      TabOrder = 6
    end
    object DBEdit12: TDBEdit
      Left = 311
      Top = 87
      Width = 236
      Height = 21
      DataField = 'Bairro'
      DataSource = DataModule1.DS_Enderco
      TabOrder = 5
    end
    object DBEdit13: TDBEdit
      Left = 77
      Top = 87
      Width = 228
      Height = 21
      DataField = 'Cidade'
      DataSource = DataModule1.DS_Enderco
      TabOrder = 4
    end
    object Button1: TButton
      Left = 148
      Top = 39
      Width = 78
      Height = 25
      Caption = 'Busca CEP'
      TabOrder = 7
      OnClick = Button1Click
    end
    object DBEdit1: TDBEdit
      Left = 21
      Top = 87
      Width = 31
      Height = 21
      DataField = 'Cliente_idCliente'
      DataSource = DataModule1.DS_Enderco
      Enabled = False
      TabOrder = 8
    end
    object EvDBNavigator1: TEvDBNavigator
      Left = 106
      Top = 126
      Width = 480
      Height = 48
      DataSource = DataModule1.DS_Enderco
      TabOrder = 9
    end
    object DBEdit2: TDBEdit
      Left = 609
      Top = 87
      Width = 64
      Height = 21
      DataField = 'Pais'
      DataSource = DataModule1.DS_Enderco
      TabOrder = 10
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 488
  end
end
