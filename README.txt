URLs:

Home page
http://www.imagens.usp.br

Album page
http://www.imagens.usp.br/?p=[ALBUM_ID]

Photo page
http://www.imagens.usp.br/?attachment_id=[PHOTO_ID]

RSS
http://www.imagens.usp.br/?feed=rss2&order=ASC&paged=[PAGE_NUMBER]

Lincense:
Creative Commons Atribution (BR) 3.0
http://creativecommons.org/licenses/by/3.0/br/

Snippet from the page stating the licenses of the photos (as of November 26, 2010)
"Todas as imagens presentes nesse site estão<br>
		disponiveis para uso livre via <strong><a href="http://creativecommons.org/licenses/by/3.0/br/" target="_blank">Creative Commons</a></strong>.<br>
		Você só precisa dar os devídos créditos."
		
		
		
-------
= how to use

1- download the latest rss pages:
. download_rss_pages.sh 20 23

2- generate a list of image files
. extract_image_urls_from_local_rss.sh 23 23

3- download the image files
cd path-to-cache-dir
wget -x -i path-to-original-images-urls.txt

