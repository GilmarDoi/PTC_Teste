object Form_CadTelefone: TForm_CadTelefone
  Left = 468
  Top = 220
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cad Telefone '
  ClientHeight = 137
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 475
    Height = 137
    Align = alClient
    Caption = 'Cadastro de Telefones'
    TabOrder = 0
    ExplicitWidth = 505
    ExplicitHeight = 181
    object Label1: TLabel
      Left = 88
      Top = 29
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 168
      Top = 29
      Width = 45
      Height = 13
      Caption = 'Telefone '
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 48
      Width = 33
      Height = 21
      DataField = 'idTelefone'
      DataSource = DataModule1.DS_Telefone
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 168
      Top = 48
      Width = 121
      Height = 21
      DataField = 'Fone'
      DataSource = DataModule1.DS_Telefone
      TabOrder = 1
    end
    object EvDBNavigator1: TEvDBNavigator
      Left = 2
      Top = 87
      Width = 471
      Height = 48
      DataSource = DataModule1.DS_Telefone
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      TabOrder = 2
      BtnWidth = 79
      ExplicitLeft = 4
      ExplicitTop = 86
      ExplicitWidth = 468
    end
  end
end
