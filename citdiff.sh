#!/usr/bin/env bash

cites()
{
	awk '{
	  while (match($0, /\\cite\{[[:alnum:][:space:]_,]*\}/) ) {
		print substr($0, RSTART, RLENGTH)
		$0 = substr($0, RSTART+RLENGTH)
	  }
	}' $1 | sed 's/\\cite{//g; s/\}$//g' | tr ',' '\n' | sed 's/^ *//g' 
}


diff -u <(cites $1 | sort -u) <(cites $2 | sort -u) |sed -n '/^\(+\|-\)/p'
