

 
 
 function show_usage {
  

  
    echo -e "################################################"
    echo -e "# remote repository \033[32m$svn_remote_url\033[0m				"
    echo -e "#"
    echo -e "# "
    echo -e "################################################"
    echo "Usage: $0 operazione"
    echo "Descrizione: start: fa partire il server"
   
    
     
    
    exit 1
}
 
setup(){

 	#ext install ritwickdey.liveserver.
 	./code --install-extension  ritwickdey.liveserver

}
start(){

	python3 -m http.server 8080

}
case "$1" in
    start)
    	shift 
    	folders_to_exclude=("$@")
        start
        ;;
    --help)
        show_usage
        ;;
    *)
        show_usage
        exit 1
        ;;
esac


 