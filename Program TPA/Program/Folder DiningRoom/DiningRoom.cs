﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Program.Folder_DiningRoom
{
    public partial class DiningRoom : Form
    {
        public DiningRoom()
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

        ViewTicket vbt;
        private void viewTicketToolStripMenuItem_Click(object sender, EventArgs e)
        {
            vbt = new ViewTicket();
            vbt.Show();
        }

        RequestOrder ro;
        private void requestOrderToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ro = new RequestOrder();
            ro.Show();
        }
    }
}