unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, pngimage, QuickRpt, QRCtrls, ExtCtrls, UCadCliente,
  UDataModule;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    Panel1: TPanel;
    QRImage1: TQRImage;
    procedure Cliente1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Cliente1Click(Sender: TObject);
begin
	If (Form_CadCliente=nil) Then
  	Form_CadCliente:=TForm_CadCliente.Create(Self);
  Form_CadCliente.ShowModal;
  Form_CadCliente := Nil;
  Form_CadCliente.free;
end;

end.
