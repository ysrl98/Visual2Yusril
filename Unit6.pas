unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    edt5: TEdit;
    lbl6: TLabel;
    edt6: TEdit;
    lbl7: TLabel;
    edt7: TEdit;
    lbl8: TLabel;
    edt8: TEdit;
    lbl9: TLabel;
    edt9: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl10: TLabel;
    edt10: TEdit;
    btn4: TButton;
    lbl11: TLabel;
    edt11: TEdit;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  a : string;

implementation

uses Unit4;
{$R *.dfm}

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
    edt11.Text:= DataModule4.Zsupplier.Fields[9].AsString;
    edt9.Text:= DataModule4.Zsupplier.Fields[8].AsString;
    edt8.Text:= DataModule4.Zsupplier.Fields[7].AsString;
    edt7.Text:= DataModule4.Zsupplier.Fields[6].AsString;
    edt6.Text:= DataModule4.Zsupplier.Fields[5].AsString;
    edt5.Text:= DataModule4.Zsupplier.Fields[4].AsString;
    edt3.Text:= DataModule4.Zsupplier.Fields[3].AsString;
    edt2.Text:= DataModule4.Zsupplier.Fields[2].AsString;
    edt1.Text:= DataModule4.Zsupplier.Fields[1].AsString;
    a:= DataModule4.Zsupplier.Fields[0].AsString;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
  DataModule4.Zsupplier.SQL.Clear;
  DataModule4.Zsupplier.SQL.Add('insert into supplier values(null,"'+edt1.Text+'","'+edt2.text+'","'+edt3.Text+'","'+edt5.text+'","'+edt6.Text+'","'+edt7.text+'","'+edt8.Text+'","'+edt9.text+'","'+edt11.Text+'")');
  DataModule4.Zsupplier.ExecSQL ;

  DataModule4.Zsupplier.SQL.Clear;
  DataModule4.Zsupplier.SQL.Add('select * from supplier');
  DataModule4.Zsupplier.Open;
  Showmessage('Data Berhasil Disimpan!');
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
   if edt1.Text <> '' then
   DataModule4.Zsupplier.SQL.Add('update supplier set NIK="'+edt1.Text+'" where id= "'+a+'"');
   DataModule4.Zsupplier.ExecSQL;

   DataModule4.Zsupplier.SQL.Clear;
   if Edt2.Text <> '' then
   DataModule4.Zsupplier.SQL.Add('update supplier set NAME="'+edt2.Text+'" where id= "'+a+'"');
   DataModule4.Zsupplier.ExecSQL;

   DataModule4.Zsupplier.SQL.Clear;
   if Edt3.Text <> '' then
   DataModule4.Zsupplier.SQL.Add('update supplier set TELP="'+edt3.Text+'" where id= "'+a+'"');
   DataModule4.Zsupplier.ExecSQL;

   DataModule4.Zsupplier.SQL.Clear;
   if Edt5.Text <> '' then
   DataModule4.Zsupplier.SQL.Add('update supplier set ALAMAT="'+edt5.Text+'" where id= "'+a+'"');
   DataModule4.Zsupplier.ExecSQL;

   DataModule4.Zsupplier.SQL.Clear;
   if Edt6.Text <> '' then
   DataModule4. ZSupplier.SQL.Add('update supplier set EMAIL="'+edt6.Text+'" where id= "'+a+'"');
   DataModule4. ZSupplier.ExecSQL;

   DataModule4. ZSupplier.SQL.Clear;
   if Edt7.Text <> '' then
   DataModule4. ZSupplier.SQL.Add('update supplier set PERUSAHAAN="'+edt7.Text+'" where id= "'+a+'"');
   DataModule4. ZSupplier.ExecSQL;

   DataModule4. ZSupplier.SQL.Clear;
   if Edt8.Text <> '' then
   DataModule4. ZSupplier.SQL.Add('update supplier set NAMA_BANK="'+edt8.Text+'" where id= "'+a+'"');
   DataModule4. ZSupplier.ExecSQL;

   DataModule4. ZSupplier.SQL.Clear;
   if Edt9.Text <> '' then
   DataModule4. ZSupplier.SQL.Add('update supplier set NAMA_AKUN_BANK="'+edt9.Text+'" where id= "'+a+'"');
   DataModule4. ZSupplier.ExecSQL;

   DataModule4. ZSupplier.SQL.Clear;
   if Edt11.Text <> '' then
   DataModule4. ZSupplier.SQL.Add('update supplier set NO_AKUN_BANK="'+edt11.Text+'" where id= "'+a+'"');
   DataModule4. ZSupplier.ExecSQL;

   DataModule4.Zsupplier.SQL.Clear;
   DataModule4.Zsupplier.SQL.Add ('select * from supplier');
   DataModule4.Zsupplier.Open;
   ShowMessage('Data berhasil diupdate');
end;



procedure TForm6.btn3Click(Sender: TObject);

 begin
  begin
    with DataModule4.Zsupplier do
    begin
  SQL.Clear;
  SQL.Add('delete from supplier where id= "'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from supplier');
  Open;
  end;
  ShowMessage('Data Berhasil Diupdate!');
  end;
end;


end.
