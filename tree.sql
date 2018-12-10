select
 lpad( rpad('L', 5*(level-1), '_'), 5*(level+level-1), ' ')||'"'||dt.cd_c||'-'||dt.nm||'"' nm
from
  abc.doctp dt
start with dt.cd_up is null 
connect by prior dt.cd_c = dt.cd_up


select                              
 lpad( rpad('L', 5*(level-1), '_'), 5*(level+level-1), ' ')||r.rid||'-'||r.description
from reports r
start with r.rid_up is null
connect by prior r.rid = r.rid_up
