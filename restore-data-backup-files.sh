#/bin/bash
#For help ask here community.e.foundation

#list all files
for APP in $(ls)
do
  case "$APP" in
  *.backup ) 
        # only restore .backup files
	adb restore $( echo ${APP})
        ;;
  *)
        # Do nothing if file is not of type .backup
        ;;
  esac
done
