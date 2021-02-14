Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    richTextBox1: RichTextBox;
    numericUpDown1: NumericUpDown;
    button1: Button;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;
const A = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ';
const B = 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя';
const S = '., ;:!?/*-+><=)({}@#$%^&№';


implementation

function decode(t: string; i:integer):string;
begin
  var key := A + B + S;
  var shifr := '';
  foreach var x in t do
  begin
    var k := '';
    if pos(x,key) > (key.Length - i) then
    begin
      k := key[pos(x,key) - (key.Length - i)];
    end
    else k := key[pos(x,key) + i];
    
    shifr += k;
  end;
  result := shifr;
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  var cod := richTextBox1.Text;
  
  richTextBox1.Text := decode(cod,strToInt(numericUpDown1.Text));
end;

end.
