unit UCadTelefone_CRUD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UDataModule, Mask, DBCtrls, ExtCtrls, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBControls, DBCtrlsEh, EDBNav;

type
  TForm_CadTelefone = class(TForm)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    EvDBNavigator1: TEvDBNavigator;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_CadTelefone: TForm_CadTelefone;

implementation

{$R *.dfm}

procedure TForm_CadTelefone.FormActivate(Sender: TObject);
begin
 //	 DBEdit2.Field.EditMask := '!\(99\)_#0000-0000;0';
 //  DataModule1.ADOTab_TelefoneCliente_idCliente.Value := DataModule1.ADOQuery_ClienteidCliente.Value;
end;

end.

