object Form_CadClienteManut: TForm_CadClienteManut
  Left = 371
  Top = 208
  Caption = 'Cad Cliente '
  ClientHeight = 208
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 593
    Height = 201
    Caption = 'Dados do Cliente'
    TabOrder = 0
    object Label2: TLabel
      Left = 85
      Top = 11
      Width = 41
      Height = 13
      Caption = 'idCliente'
      FocusControl = DBEdit1
    end
    object Label5: TLabel
      Left = 174
      Top = 56
      Width = 50
      Height = 13
      Caption = 'CPF_CNPJ'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 174
      Top = 102
      Width = 30
      Height = 13
      Caption = 'RG_IE'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 469
      Top = 7
      Width = 73
      Height = 13
      Caption = 'Data_Cadastro'
    end
    object DBEdit1: TDBEdit
      Left = 92
      Top = 26
      Width = 35
      Height = 21
      DataField = 'idCliente'
      DataSource = DataModule1.DS_Cliente
      Enabled = False
      TabOrder = 0
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 92
      Top = 56
      Width = 68
      Height = 86
      Caption = 'Tipo Cliente'
      DataField = 'Tipo'
      DataSource = DataModule1.DS_Cliente
      Items.Strings = (
        'Fisica'
        'Juridica')
      ParentBackground = True
      TabOrder = 3
      Values.Strings = (
        'F'
        'J')
    end
    object DBEdit2: TDBEdit
      Left = 133
      Top = 29
      Width = 283
      Height = 21
      DataField = 'Nome'
      DataSource = DataModule1.DS_Cliente
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 174
      Top = 75
      Width = 242
      Height = 21
      DataField = 'CPF_CNPJ'
      DataSource = DataModule1.DS_Cliente
      TabOrder = 4
      OnExit = DBEdit4Exit
    end
    object DBEdit5: TDBEdit
      Left = 174
      Top = 121
      Width = 242
      Height = 21
      DataField = 'RG_IE'
      DataSource = DataModule1.DS_Cliente
      TabOrder = 5
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 469
      Top = 59
      Width = 78
      Height = 86
      Caption = 'Ativo/Inativo'
      DataField = 'Ativo'
      DataSource = DataModule1.DS_Cliente
      Items.Strings = (
        'Ativo'
        'Inativo')
      ParentBackground = True
      TabOrder = 6
      Values.Strings = (
        'A'
        'I')
    end
    object DBDateEdit1: TDBDateEdit
      Left = 456
      Top = 24
      Width = 119
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'Data_Cadastro'
      DataSource = DataModule1.DS_Cliente
      NumGlyphs = 2
      TabOrder = 2
    end
    object EvDBNavigator1: TEvDBNavigator
      Left = 2
      Top = 151
      Width = 589
      Height = 48
      DataSource = DataModule1.DS_Cliente
      Align = alBottom
      TabOrder = 7
      BtnWidth = 59
      ExplicitLeft = 46
      ExplicitTop = 148
      ExplicitWidth = 480
    end
  end
end
