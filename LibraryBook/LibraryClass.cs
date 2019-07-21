using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LibraryBook
{
    public class LibraryClass
    {
        BookLibraryEntities1 bookdatabase = new BookLibraryEntities1();
        NameTable Nametb = new NameTable();
        Usertable Userrtb = new Usertable();
        
        Cust Custtb = new Cust();

        BookTable Bookinsert = new BookTable();
        public void Nameinsert(string adminName, int adminAge)
        {
            Nametb.Name = adminName;
            Nametb.Age = adminAge;

            bookdatabase.NameTables.Add(Nametb);
            bookdatabase.SaveChanges();



        }
        public void Userinsert(string Login_pass, string LoginUser)
        {

            Userrtb.Username = LoginUser;
            Userrtb.Password = Login_pass;

            bookdatabase.Usertables.Add(Userrtb);
            bookdatabase.SaveChanges();

        }

        public void BookInser(string BookName, string BookAuthor, int Copies)
        {
            Bookinsert.BookName = BookName;
            Bookinsert.BookAuthor = BookAuthor;
            Bookinsert.Copies = Copies;


            bookdatabase.BookTables.Add(Bookinsert);
            bookdatabase.SaveChanges();




        }
        public void BookRemove(int BookID)
        {

            using (BookLibraryEntities1 BookRemove = new BookLibraryEntities1())
            {


                BookTable obj_table = BookRemove.BookTables.First(x => x.BookNo == BookID);
                BookRemove.BookTables.Remove(obj_table);
                BookRemove.SaveChanges();


            }

        }
        public void BookUpdate(int BookID, string BookName, string BookAuthor, int Copies)
        {
            using (var BooktableObj = new BookLibraryEntities1())
            {
                var UPbook = BooktableObj.BookTables.SingleOrDefault(b => b.BookNo == BookID);
                if (UPbook != null)
                {
                    UPbook.BookName = BookName;
                    UPbook.BookAuthor = BookAuthor;

                    UPbook.Copies = Copies;

                    BooktableObj.SaveChanges();

                }



            }
        }
        public void CustRent(string CustName, int BookID, string Email)
        {
            Custtb.CustomerName = CustName;
            Custtb.BookID = BookID;
            Custtb.Email = Email;

            bookdatabase.Custs.Add(Custtb);
            bookdatabase.SaveChanges();
            



        }
        public void CustReturn(int Custid)
        {
            using (BookLibraryEntities1 Return = new BookLibraryEntities1())
            {


                Cust obj_table = Return.Custs .First(x => x.CustID == Custid);
                Return.Custs.Remove(obj_table);
                Return.SaveChanges();


            }
            



        }
    }
}