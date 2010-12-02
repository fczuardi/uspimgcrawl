#!/bun/bash
DATA_PATH="data"
if [ -z $1 ]
then
  echo "Get the attachment ids from the local data rss folder generated by download_rss_pages.sh and create a txt file"
  echo "Usage: extract_attachment_ids_from_local_rss.sh [first_page_id] [last_page_id]"
else
  STEP=$1
  mkdir -p "$DATA_PATH/txt"
  rm "$DATA_PATH/txt/attachment_ids.txt"
  while [ $STEP -le $2 ]
  do
    echo "Getting album $STEP..."
    `grep _id $DATA_PATH/rss/pages/$STEP/* | sed s/.*attachment_id=// | sed s/[^0-9].*// >> "$DATA_PATH/txt/attachment_ids.txt"`
    ((STEP++))
  done
fi