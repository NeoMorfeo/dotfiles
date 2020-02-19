########################
# User-defined Methods #
########################
# Kill Process by
#
# port - All processes with port will be killed
# name - All processes given a name will be killed
function kill-process-by()
{
  case $1 in
  port )
    kill -9 $(lsof -ti tcp:$2)
    ;;
  name )
    kill -9 $(lsof -t -c $2)
    ;;
  esac
}
