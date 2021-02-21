procedure InitializeComponent;
    begin
        self.richTextBox1 := new System.Windows.Forms.RichTextBox();
        self.button1 := new System.Windows.Forms.Button();
        self.numericUpDown1 := new System.Windows.Forms.NumericUpDown();
        self.button2 := new System.Windows.Forms.Button();
        self.openFileDialog1 := new System.Windows.Forms.OpenFileDialog();
        (System.ComponentModel.ISupportInitialize(self.numericUpDown1)).BeginInit();
        self.SuspendLayout();
        // 
        // richTextBox1
        // 
        self.richTextBox1.Font := new System.Drawing.Font('Microsoft Sans Serif', 14.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.richTextBox1.Location := new System.Drawing.Point(48, 31);
        self.richTextBox1.Name := 'richTextBox1';
        self.richTextBox1.Size := new System.Drawing.Size(473, 253);
        self.richTextBox1.TabIndex := 0;
        self.richTextBox1.Text := '';
        // 
        // button1
        // 
        self.button1.Font := new System.Drawing.Font('Microsoft Sans Serif', 15.75, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button1.Location := new System.Drawing.Point(48, 311);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(178, 56);
        self.button1.TabIndex := 1;
        self.button1.Text := 'Закодировать';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // numericUpDown1
        // 
        self.numericUpDown1.Font := new System.Drawing.Font('Microsoft Sans Serif', 15.75, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.numericUpDown1.Location := new System.Drawing.Point(425, 325);
        self.numericUpDown1.Minimum := new System.Decimal(new System.Int32[4](1, 0, 0, 0));
        self.numericUpDown1.Name := 'numericUpDown1';
        self.numericUpDown1.Size := new System.Drawing.Size(59, 31);
        self.numericUpDown1.TabIndex := 2;
        self.numericUpDown1.Value := new System.Decimal(new System.Int32[4](1, 0, 0, 0));
        // 
        // button2
        // 
        self.button2.Font := new System.Drawing.Font('Microsoft Sans Serif', 14.25, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button2.Location := new System.Drawing.Point(232, 311);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(178, 56);
        self.button2.TabIndex := 3;
        self.button2.Text := 'Раскодировать';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;

        // 
        // Form1
        // 
        self.BackColor := System.Drawing.SystemColors.Control;
        self.ClientSize := new System.Drawing.Size(558, 438);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.numericUpDown1);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.richTextBox1);
        self.FormBorderStyle := System.Windows.Forms.FormBorderStyle.FixedToolWindow;
        self.Name := 'Form1';
        self.StartPosition := System.Windows.Forms.FormStartPosition.CenterScreen;
        self.Text := 'Кодировщик';
        (System.ComponentModel.ISupportInitialize(self.numericUpDown1)).EndInit();
        self.ResumeLayout(false);
    end;
