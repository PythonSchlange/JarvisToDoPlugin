#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh
todo_txt=$(which todo-txt || which todo.sh)

pg_todo_tasknum () {
  echo $@ | grep "^[0-9][0-9]*$" && return
  count=$($todo_txt list $@ | tail -1 | cut -d " " -f 2) || return $?
  if [ $count -ne 1 ]
  then
    say "Es gibt keine passenden Aufgaben $@"
    return -1
  elif [ $count -ne 1 ]
  then
    say "Es gibt $count diese Aufgaben $@"
    return -1
  else
    echo $($todo_txt list $@ | head -1 | cut -d " " -f 1)
    return
  fi
}
pg_todo_add () {
  output=$($todo_txt add "$@") \
    && output=$(echo $output | sed "s/ TODO:.*//" | sed "s/^\([0-9]*\)/\\1:/") \
    && echo "$output" \
    || return $?
}
pg_todo_del () {
  tasknr=$(pg_todo_tasknum "$@") \
    && output=$($todo_txt -f -n del $tasknr) \
    && output=$(echo $output | sed "s/ TODO:.*//" | sed "s/^\([0-9]*\)/\\1:/") \
    && echo $output && return \
    || return $?
}
pg_todo_done () {
  tasknr=$(pg_todo_tasknum "$@") \
    && output=$($todo_txt -f -n move $tasknr $donefile) \
    && output=$(echo $output | sed "s/ TODO:.*//" | sed "s/^\([0-9]*\)/\\1:/") \
    && echo $output && return \
    || return $?
}
pg_todo_list () {
  $todo_txt -p -P -+ -@ list \
    | egrep -v "\--|^TODO:" \
    | head -5 \
    | sed "s/^\([0-9][0-9]*\) [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9] /\\1 /" \
    | while read nr title
    do
      say "$nr: $title."
    done
}
