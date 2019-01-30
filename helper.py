from tkinter import *
import mysql.connector

DW_loadDB = [] # DW = Dynamic Widgets
DW_dbdata = []
isloaded=0

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="mynewpassword"
)

def LoadDatabase():
	global isloaded
	global DW_loadDB
	global DW_dbdata

	if not isloaded:
		isloaded = 1
		#print("loading database %s"%(DB_name.get()))
		mycursor = mydb.cursor()
		loaddb_command = "USE "+DB_name.get()
		res = 1
		try:
			mycursor.execute(loaddb_command)
		except mysql.connector.Error as err:
  			res = 0
		if not res:
			DW_loadDB.append(  Label( root,  text="failed loading database %s"%(DB_name.get())  )  )
			DW_loadDB[-1].grid(row=1,column=0)
		else:
			mycursor.execute("SHOW TABLES")
			tables = [x for x in mycursor]
			DW_loadDB.append(  Label( root,  text="loading  %s with %d table(s)"%(DB_name.get(),len(tables))  )  )
			DW_loadDB[-1].grid(row=1,column=0)


			table_list = Listbox(root)
			DW_loadDB.append(table_list)
			table_list.grid(row=1,column=1)
			

			DW_loadDB.append( Button(root, text="See Desc"))
			DW_loadDB[-1].grid(row=1,column=2)


			for i,x in enumerate(tables):
				table_list.insert(i,x)






def CloseDatabase():
	global isloaded
	global DW_loadDB
	global DW_dbdata

	if isloaded:
		isloaded = 0
		for elem in DW_loadDB:
			elem.destroy()
		DW_loadDB = []
		for elem in DW_dbdata:
			elem.destroy()
		DW_dbdata = []
	



root = Tk()
root.title("helper")
root.geometry('640x480')

menu = Menu(root) 
root.config(menu=menu) 

filemenu = Menu(menu) 
menu.add_cascade(label='File', menu=filemenu) 
#filemenu.add_command(label='New') 
filemenu.add_command(label='Open...') 
filemenu.add_separator() 
filemenu.add_command(label='Exit', command=root.quit) 

helpmenu = Menu(menu) 
menu.add_cascade(label='Help', menu=helpmenu) 
helpmenu.add_command(label='About') 

DB_label = Label(root, text="User Name")
DB_label.grid(row=0,column=0)
DB_name = Entry(root, bd =5)
DB_name.grid(row=0,column=1)
Load_DB_Button = Button(root, text ="Load DB",command=LoadDatabase)
Load_DB_Button.grid(row=0,column=2)
Close_DB_Button = Button(root, text ="Close DB",command=CloseDatabase)
Close_DB_Button.grid(row=0,column=3)


root.mainloop() 

