﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Program.Folder_HumanCapital
{
    public partial class HumanCapital : Form
    {
        public HumanCapital()
        {
            InitializeComponent();
        }

        Login login;
        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            login = new Login();
            login.Show();
            this.Dispose();
        }

        AddStaff ast;
        private void addStaffToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ast = new AddStaff();
            ast.Show();
        }

        HireStaff hs;
        private void hireStaffToolStripMenuItem_Click(object sender, EventArgs e)
        {
            hs = new HireStaff();
            hs.Show();
        }
    }
}
