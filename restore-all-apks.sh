#/bin/bash
#For help ask here community.e.foundation

for APP in $(ls)
do
   case "$APP" in
  *.apk )
        # only restore .backup files
         adb install $( echo ${APP})
	;;
  *)
        # Do nothing if file is not of type .backup
        ;;
  esac
done
