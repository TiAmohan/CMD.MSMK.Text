namespace CMD.MSMK.MODEL
{
    public class loginModel
    {
        private int ID;
        /// <summary>
        /// id
        /// </summary>
        public int id
        {
            get { return ID; }
            set { ID = value; }
        }

        private string Name;
        /// <summary>
        /// name
        /// </summary>
        public string name
        {
            get { return Name; }
            set { Name = value; }
        }
        private string Pwd;
        /// <summary>
        /// pow
        /// </summary>
        public string pwd
        {
            get { return Pwd; }
            set { Pwd = value; }
        }

    }
}