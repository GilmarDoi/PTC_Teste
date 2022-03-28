unit UCadCliente_CRUD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDataModule, ExtCtrls, DBCtrls, StdCtrls, Mask, MaskUtils,
  rxToolEdit, RXDBCtrl, EDBNav;

type
  TForm_CadClienteManut = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBDateEdit1: TDBDateEdit;
    EvDBNavigator1: TEvDBNavigator;
    procedure FormataCPF_CNPJ(edvalor: String);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    function cnpj(num: string): boolean;
    function cpf(num: string): boolean;
    procedure DBEdit4Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_CadClienteManut: TForm_CadClienteManut;

implementation

{$R *.dfm}

{ TForm_CadClienteManut }

function TForm_CadClienteManut.cnpj(num: string): boolean;
var
	n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
	d1,d2: integer;
	digitado, calculado: string;
begin
	n1:=StrToInt(num[1]);
	n2:=StrToInt(num[2]);
	n3:=StrToInt(num[3]);
	n4:=StrToInt(num[4]);
	n5:=StrToInt(num[5]);
	n6:=StrToInt(num[6]);
	n7:=StrToInt(num[7]);
	n8:=StrToInt(num[8]);
	n9:=StrToInt(num[9]);
	n10:=StrToInt(num[10]);
	n11:=StrToInt(num[11]);
	n12:=StrToInt(num[12]);
	d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
	d1:=11-(d1 mod 11);
	if d1>=10 then d1:=0;
	d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
	d2:=11-(d2 mod 11);
	if d2>=10 then d2:=0;
	calculado:=inttostr(d1)+inttostr(d2);
	digitado:=num[13]+num[14];
	if calculado=digitado then
		cnpj:=true
	else
		cnpj:=false;
end;

function TForm_CadClienteManut.cpf(num: string): boolean;
var
	n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
	d1,d2: integer;
	digitado, calculado: string;
begin
	n1:=StrToInt(num[1]);
	n2:=StrToInt(num[2]);
	n3:=StrToInt(num[3]);
	n4:=StrToInt(num[4]);
	n5:=StrToInt(num[5]);
	n6:=StrToInt(num[6]);
	n7:=StrToInt(num[7]);
	n8:=StrToInt(num[8]);
	n9:=StrToInt(num[9]);
	d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
	d1:=11-(d1 mod 11);
	if d1>=10 then d1:=0;
	d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
	d2:=11-(d2 mod 11);
	if d2>=10 then d2:=0;
	calculado:=inttostr(d1)+inttostr(d2);
	digitado:=num[10]+num[11];
	if calculado=digitado then
		cpf:=true
	else
		cpf:=false;
end;

procedure TForm_CadClienteManut.DBEdit4Exit(Sender: TObject);
begin
		FormataCPF_CNPJ(DBEdit4.Text);

end;

procedure TForm_CadClienteManut.FormActivate(Sender: TObject);
begin
{  if DBRadioGroup1.ItemIndex = 0 then
    MaskEdit1.EditMask :=  '000\.000\.000\-00;0;_'
  else
    MaskEdit1.EditMask :=  '00\.000\.000\/0000\-00;0;_';
  MaskEdit1.Text := DBEdit4.Text;
 }
	DBEdit2.SetFocus;
end;

procedure TForm_CadClienteManut.FormataCPF_CNPJ(edvalor: String);
Var
	FormatarCNPJ:String;
	FormatarCPF:String;
	recebecpf : Tedit;
begin
  if Length(edvalor) <> 0 then
  begin
	  if Length(edvalor) = 14 then
 		Begin
    	if cnpj(edvalor) = True Then
    	Begin
      	FormatarCNPJ:= Copy(edvalor, 1,2)
      		+ '.' + Copy(edvalor, 3,3)
      		+'.' + Copy(edvalor, 6,3)
      		+ '/' +Copy(edvalor, 9,4)
      		+ '-' + Copy(edvalor, 13,2);
      	edvalor:= FormatarCNPJ;
    	End Else
    	Begin
      	ShowMessage('CNPJ com erro. favor verificar');
      	DBEdit4.SetFocus;
    	End;
    End   Else
  	if Length(edvalor) = 11 then
    Begin
    	if cpf(edvalor) = True Then
    	Begin
      	FormatarCPF:= Copy(edvalor, 1,3)
      	+ '.' + Copy(edvalor, 4,3)
      	+ '.' + Copy(edvalor,7,3)
      	+ '-' + Copy(edvalor, 10,2);
      	edvalor:= FormatarCPF;
    	End Else
    	Begin
      	ShowMessage('CPF com erro. favor verificar');
      	DBEdit4.SetFocus;
      End;
    End  Else
    Begin
      ShowMessage ('O CPF tem 11 n� e CNPJ tem 14 n�.'#13'Prencha com n�meros');
      DBEdit4.SetFocus;
    End;
  End;
end;

procedure TForm_CadClienteManut.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key = #13 then begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;

  with Sender do
		if Key = #13 then begin
		SelectNext(Sender as tWinControl, True, True);
		Key := #0;
	end;
end;

end.

