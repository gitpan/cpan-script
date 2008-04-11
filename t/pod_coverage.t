# $Id: pod_coverage.t 1692 2005-12-24 00:59:08Z comdog $

use Test::More;
eval "use Test::Pod::Coverage";

if( $@ )
	{
	plan skip_all => "Test::Pod::Coverage required for testing POD";
	}
else
	{
	all_pod_coverage_ok( );      
	}
