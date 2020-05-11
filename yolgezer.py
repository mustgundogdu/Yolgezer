#-*- coding:utf-8 -*-
#__author__ = "Mustafa GÜNDOĞDU"

"""

Yolgezer is with google hacking queries provides an osint study.It use mysql database and queries in this database.In this way, it provides fast scanning.
It also shows some dns record information with dig and whois scans.


"""
import mysql.connector
import subprocess
import webbrowser
import thread
import argparse
import sys
import os

print('''
        \t\t\t
        
@b3kc4t
       ___     ___
       \ \ \  / //_______   ___      ___    ____________   ___________
        \ \ \/ /// ___ \ \ | ||     / __\  / /____/__/ /  / /____/ __ \ 
         \ \  /// /   \ \ \| ||    / /    / /____   / /  / /____ || / / 
         | | || \ \___/ / /| ||___/ / ___/ /____   / /  / /____  ||/ / 
         | | ||  \_____/_/ |____/_/____//______/  /_/__/______/  ||\ \ 
                                                                          
                                                                               
                                                                          
                                                                           
                                                                          
        '''
        )


class kolcu:
    

    def main(self):

        desc = " AUTOMATED OSINT TOOL"
        parser = argparse.ArgumentParser(description=desc)
        option = parser.add_argument_group('ALL OSINT OPTION')
        parser.add_argument("-o","--osint",help="google", type=str,required=False)
        parser.add_argument("-i","--info",help="INFO",type=str,required=False)
        parser.add_argument("-t",help="Target website or ip address",type=str,required=False)
        parser.add_argument("-q",help="Query type for Google Hacking",type=int,required=False)
        args = parser.parse_args()

        if args.osint:
            if args.t == None:
                sys.exit()
            else:
                target = args.t
                query = args.q
                self.query_google(target,query)
     
        if args.info:
            if args.t == None:
                sys.exit()
            else:
                target = args.t
                self.query_dns_record(target)
        

#Google Hacking query function

    def query_google(self,target,query):
        
        try:    
            command = []    
            result = []
            conn = mysql.connector.connect(user='yolgezer', password='g1b3kc4t', host='127.0.0.1', database='GHDB')
            cursor = conn.cursor()

    
            query="select query_name from dork.query_type INNER JOIN dork.query ON dork.query_type.query_id = dork.query.query_id where dork.query_type.query_id=%d;"%query
            cursor.execute(query)
            result = (cursor.fetchall())


            for s in range(0,len(result)):
                b = "site:%s "%target+str(result[s][0])
                command.append(b)


            for term in command:
                print(term)
    
                webbrowser.open_new_tab("https://www.google.com/search?client=ubuntu&channel=fs&q=%s"%term)
            conn.close()

        except:
            print("Yolgezer is Shutdown...")
            sys.exit(1)



    def query_dns_record(self, target):
        try:
            os.system("bash osint.sh %s"%target)
        except:
            print("[!]System Problem ")
            print("[-]Yolgezer is Shutdown[-]")

    

o = kolcu()

o.main()

