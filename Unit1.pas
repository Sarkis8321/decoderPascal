Unit Unit1;
interface
uses System, System.Drawing, System.Windows.Forms;
type
  Form1 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
     
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    richTextBox1: RichTextBox;
    numericUpDown1: NumericUpDown;
    button2: Button;
    openFileDialog1: OpenFileDialog;
    button1: Button;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;
const A = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯABCDEFGHIJKLMNOPQRSTUVWXYZ';
const B = 'абвгдеёжзийклмнопрстуфхцчшщъыьэюяabcdefghijklmnopqrstuvwxyz';
const S = '0123456789., ;:!?/*-+><=)({}@#$%^&№';

implementation

function encode(t: string; i:integer):string;
begin
  var key := A + B + S;
  var shifr := '';
  foreach var x in t do
  begin
    var k := '';
    if pos(x,key) <= i then
    begin
      k := key[key.Length - pos(x,key) + 1];
    end
    else k := key[pos(x,key) - i];
    
    shifr += k;
  end;
  result := shifr;
end;

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
  var cod := trim(richTextBox1.Text);
  
  richTextBox1.Text := decode(cod,strToInt(numericUpDown1.Text));
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  var codR := trim(richTextBox1.Text);
  if codR <> '' then 
  begin
    richTextBox1.Text := encode(codR,strToInt(numericUpDown1.Text));
  end;
end;


end.
