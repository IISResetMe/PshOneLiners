# ScriptBlock tests whether a set of quorums satisfy constraint B2 of the Leslie Lamports Paxos Synod protocol (See section 2.1): http://research.microsoft.com/en-us/um/people/lamport/pubs/lamport-paxos.pdf
&{param([Object[]]$in)$t=,$false*($q=$in).Count;for($i=0;$i-lt$q.Count;$i++){for($n=($i+1);$n-lt$q.Count;$n++){$q[$i]|%{if($_-in$q[$n]){$i,$n|%{if(-not$t[$_]){$t[$_]=$true}}}}}if($t-eq(0..($q.Count-1))){"OK";break}}} 

# Example with all possible quorums of 3 voters from a set of 5 possible voters
&{param([Object[]]$in)$t=,$false*($q=$in).Count;for($i=0;$i-lt$q.Count;$i++){for($n=($i+1);$n-lt$q.Count;$n++){$q[$i]|%{if($_-in$q[$n]){$i,$n|%{if(-not$t[$_]){$t[$_]=$true}}}}}if($t-eq(0..($q.Count-1))){"OK";break}}} @(('a','b','c'),('a','b','d'),('a','b','e'),('a','c','d'),('a','c','e'),('a','d','e'),('b','c','d'),('b','c','e'),('b','d','e'),('c','d','e'))
