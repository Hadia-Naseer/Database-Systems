using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Food_delivery
{
    public partial class Dashboard : Form
    {
       

        public Dashboard()
        {
            InitializeComponent();
         
        }
        bool menuExpand = true;
        private void button6_Click(object sender, EventArgs e)
        {
            this.Hide();
            login  ll = new login();
            ll.Show();
            
        }



        private void button5_Click(object sender, EventArgs e)
        {
            // OrderForm od = new OrderForm();
            // od.Show();
            OrderForm od = new OrderForm();
            od.Show();
        }
        private void button7_Click(object sender, EventArgs e)
        {
            Admin_panel ap = new Admin_panel();
            ap.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {

            Feedback fd = new Feedback();
            fd.Show();
            }
            

            private void button2_Click(object sender, EventArgs e)
        {


            Delivery_Form df = new Delivery_Form();
            df.Show();
        }
       

        private void button3_Click(object sender, EventArgs e)
        {

        }
        bool sidebar = true;
        private void timer1_Tick(object sender, EventArgs e)
        {
            if (sidebar)
            {
                panel1.Width -= 5;
                if (panel1.Width <= 61)
                {
                   
                    sidebar = false;
                    timer1.Stop();
                  

                }
            }
           else
            {
                panel1.Width += 10;
              
                if (panel1.Width >=203)
                   
                sidebar = true;
                timer1.Stop();
            }
           

        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            timer1.Start();
        }

        private void Dashboard_Load(object sender, EventArgs e)
        {

        }

        private void button8_Click(object sender, EventArgs e)
        {
            MENU_CARDcs MC = new MENU_CARDcs();
            MC.Show();
        }

       
    }
        }
    
