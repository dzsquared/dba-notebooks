This is a slightly modified implementation of Jonathan Kehayias's Random Workload Generator from https://www.sqlskills.com/blogs/jonathan/the-adventureworks2008r2-books-online-random-workload-generator/

This implementation presumes two copies of the AdventureWorks2008R2 database named AW1 and AW2.

AdventureWorks2008R2 is available from download on CodePlex at http://msftdbprodsamples.codeplex.com/releases/view/93587 - it can be installed on any SQL Server version 2008R2+ 

--

The two SQL files are query files pointed at AW1 and AW2 respectively, and the PS files pull random queries from the SQL files and run them.  Multiple PS windows can be run simultaneously to increase load into the given databases.  You can stop the workload by killing the PS windows.

--

This can be useful for a wide variety of example situations where traffic is needed - to modify the database names simply edit the files to change AW1 to some other name - similarly if you want an additional load into another database, you can copy the SQL and PS files and point the new copies to another database by changing the database names accordingly.

--

Andy Galbraith
@DBA_Andy
07/23/2016
