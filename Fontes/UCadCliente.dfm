object Form_CadCliente: TForm_CadCliente
  Left = 171
  Top = 205
  Caption = 'Cadastro de Clientes - Filtro'
  ClientHeight = 514
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1070
    Height = 514
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1068
      Height = 512
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Filtrar Cliente'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox1: TGroupBox
          Left = 72
          Top = 40
          Width = 633
          Height = 305
          Caption = 'Filtrar Clientes por : '
          TabOrder = 0
          object Label22: TLabel
            Left = 93
            Top = 69
            Width = 87
            Height = 23
            Caption = 'Nome   : '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 14
            Top = 121
            Width = 171
            Height = 23
            Caption = 'F'#237'sica / Juridica : '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 14
            Top = 178
            Width = 166
            Height = 23
            Caption = 'Ativo / Invativo :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit2: TEdit
            Left = 210
            Top = 66
            Width = 399
            Height = 31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object ComboBox1: TComboBox
            Left = 210
            Top = 118
            Width = 145
            Height = 31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Text = 'Todos'
            Items.Strings = (
              'Todos'
              'F'#237'sica'
              'Juridica')
          end
          object ComboBox2: TComboBox
            Left = 210
            Top = 170
            Width = 145
            Height = 31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Text = 'Todos'
            Items.Strings = (
              'Todos'
              'Ativo'
              'Inativo')
          end
          object Button1: TButton
            Left = 400
            Top = 121
            Width = 161
            Height = 83
            Caption = 'FILTRAR '
            TabOrder = 3
            OnClick = Button1Click
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Visualiza Filtro'
        ImageIndex = 1
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 1060
          Height = 230
          Align = alTop
          Caption = 'Clientes Filtrados'
          TabOrder = 0
          object ScrollBox1: TScrollBox
            Left = 2
            Top = 15
            Width = 1056
            Height = 213
            Align = alClient
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 1052
              Height = 209
              Hint = 'De UM Duplo Click para Alterar/Incluir/Excluir'
              Align = alClient
              DataSource = DataModule1.DS_Cliente
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = DBGrid1DblClick
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'idCliente'
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Nome'
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Tipo'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo Cliente'
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'CPF_CNPJ'
                  Title.Alignment = taCenter
                  Title.Caption = 'CPF / CNPJ'
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'RG_IE'
                  Title.Alignment = taCenter
                  Title.Caption = 'RG / Inscr Est'
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Data_Cadastro'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data Cadastro'
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Ativo'
                  Title.Alignment = taCenter
                  Title.Caption = 'Ativo/Inativo'
                  Visible = True
                end>
            end
          end
        end
        object Button2: TButton
          Left = 552
          Top = 236
          Width = 177
          Height = 25
          Caption = 'Gerar Planilha do Grid'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 752
          Top = 236
          Width = 177
          Height = 25
          Caption = 'Gerar Relat'#243'rio Grid'
          TabOrder = 2
          OnClick = Button3Click
        end
        object GroupBox3: TGroupBox
          Left = 3
          Top = 280
          Width = 186
          Height = 193
          Caption = 'Telefone'
          TabOrder = 3
          object ScrollBox2: TScrollBox
            Left = 2
            Top = 15
            Width = 182
            Height = 176
            Align = alClient
            TabOrder = 0
            object DBGrid2: TDBGrid
              Left = 0
              Top = 0
              Width = 178
              Height = 172
              Align = alClient
              DataSource = DataModule1.DS_Telefone
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = DBGrid2DblClick
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'idTelefone'
                  Title.Alignment = taCenter
                  Title.Caption = 'cod Fone'
                  Width = 55
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Fone'
                  Title.Alignment = taCenter
                  Title.Caption = 'DDD + Telefone'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cliente_idCliente'
                  Visible = True
                end>
            end
          end
        end
        object GroupBox4: TGroupBox
          Left = 195
          Top = 280
          Width = 861
          Height = 193
          Caption = 'Endere'#231'o'
          TabOrder = 4
          object ScrollBox3: TScrollBox
            Left = 2
            Top = 15
            Width = 857
            Height = 176
            Align = alClient
            TabOrder = 0
            object DBGrid3: TDBGrid
              Left = 0
              Top = 0
              Width = 853
              Height = 172
              Align = alClient
              DataSource = DataModule1.DS_Enderco
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = DBGrid3DblClick
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'idEndereco'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cod End'
                  Width = 45
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Logradouro'
                  Title.Alignment = taCenter
                  Width = 250
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Numero'
                  Title.Alignment = taCenter
                  Width = 80
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'CEP'
                  Title.Alignment = taCenter
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Bairro'
                  Title.Alignment = taCenter
                  Width = 130
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cidade'
                  Title.Alignment = taCenter
                  Width = 150
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Estado'
                  Title.Alignment = taCenter
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Pais'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cliente_idCliente'
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
end
