#!/bun/bash
DATA_PATH="data"
if [ -z $1 ]
then
  echo "Get a sequence of rss files from the usp images's gallery pages. (wget is required)"
  echo "Usage: get_pages [first_page_id] [last_page_id]"
else
  STEP=$1
  while [ $STEP -le $2 ]
  do
    echo "Getting album $STEP..."
    wget --content-disposition "http://www.imagens.usp.br/?feed=rss2&order=ASC&paged=$STEP" -P "$DATA_PATH/rss/pages/$STEP"
    ((STEP++))
  done
fi