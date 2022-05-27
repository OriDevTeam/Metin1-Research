# Account Server Core Tree
The core binary of this is called `account_server`, which
serves account data for other cores


**Notes** (to discover):
 - What cores depend on this running core?


## Dependencies
 - MySQL Client 4.0.26 (libmysqlclient.so.12)
   - summary: https://www.freshports.org/databases/mysql40-client/
   - mirror: http://ip.ncloud24.com/app/source_compile/mysql/mysql-4.0.26.tar.gz


## Directory Tree

### Required (loaded in order)
 - CONFIG - _Unique_ (not confirmed yet)
 - iplist - _Shared_ (not confirmed yet)
 - slangs.mtx - _Shared_ (not confirmed yet)



## Condition Aborts
No situations found where this core crashes
