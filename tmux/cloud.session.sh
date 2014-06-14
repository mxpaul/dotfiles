tmux_cloud() {

  SESSION=cloud
  tmux attach-session -t $SESSION && return

  tmux start-server
  tmux new-session -d -s "$SESSION" -n "$SESSION"
  
 
  tmux new-window -k -t $SESSION:0 -n ROOT
  tmux new-window -t $SESSION:1 -n Zipper
  tmux new-window -t $SESSION:2 -n "MPOP Logs"
  tmux new-window -t $SESSION:3 -n "HTTPD Logs"
  tmux new-window -t $SESSION:4 -n "AUTO 4"
  tmux new-window -t $SESSION:5 -n "Zippermon"
  tmux new-window -t $SESSION:6 -n "AUTO 6"
 
  tmux send-keys -t $SESSION:0 "sudo -s" C-m
  tmux send-keys -t $SESSION:1 "cd ~/work/social/cloud-web && make run-zip" C-m
  tmux send-keys -t $SESSION:2 "sudo tail -f /var/log/httpd/cloud.mail.ru-error.log" C-m
  tmux send-keys -t $SESSION:3 "sudo tail -f /var/log/httpd/mail.ru-error.log" C-m
  tmux send-keys -t $SESSION:5 "cd ~/work/social/cloud-web/ && mc" C-m
 
  tmux select-window -t $SESSION:0
  tmux attach-session -t $SESSION
}

tmux_repo() {

  SESSION=repo
  tmux attach-session -t $SESSION && return

  tmux start-server
  tmux new-session -d -s "$SESSION" -n "$SESSION"
  
 
  tmux new-window -k -t $SESSION:0 -n ROOT
  tmux new-window -t $SESSION:1 -n "rpmtools"
  tmux new-window -t $SESSION:2 -n "Repo"
  tmux new-window -t $SESSION:3 -n "Mock logs"
  tmux new-window -t $SESSION:4 -n "AUTO 4"
 
  tmux send-keys -t $SESSION:0 "sudo -s" C-m
  tmux send-keys -t $SESSION:1 "cd ~/rpmtools && mc" C-m
  tmux send-keys -t $SESSION:2 "cd ~/repo && mc" C-m
  tmux send-keys -t $SESSION:3 "cd /var/lib/mock" C-m
 
  tmux select-window -t $SESSION:0
  tmux attach-session -t $SESSION
}

