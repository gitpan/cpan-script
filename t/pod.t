#$Id: pod.t 1277 2004-07-06 04:51:55Z comdog $
use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok();
