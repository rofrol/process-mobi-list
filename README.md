# process mobi list

## Purpose

There is a list of books created with `find ~/Calibre\ Library -iname '*.mobi' > mobi.txt`.

I need to check which books have corresponding epub file.

If there is epub file, delete mobi file.

If there is no epub file, echo the file path.

Then I have run `find . -iname '*.mobi' > ~/personal_projects/process-mobi-list/mobi_no_epub.txt`

Do the same for azw3.
