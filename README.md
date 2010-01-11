LittleSnapper to Evernote migration applescript
===============================================
Evernote does everything LittleSnapper does, and it syncs to the web and all
your devices. It also won't drop your tags, has better methods for adding
images and does OCR.

DETAILS
-------
This script will move all of your LittleSnapper snaps into Evernote,
including the rating, tags, title, date created and type. It makes
a tag in the form "****" for a four star snap, etc. It adds a tag
"websnap" to anything that was a websnap in LittleSnapper.


INSTRUCTIONS
------------

1. Download all of these files. 
2. Copy the Property List Tools.osax file to ~/Library/ScriptingAdditions 
	 (create that directory if it doesn't exist).
	 Source: http://www.latenightsw.com/freeware/PListTools/index.html
3. To ensure all of the property list files are in place for your snaps,
   export all of them as Snap Bundles:
		1. Highlight all of your snaps in LittleSnapper. Go to File > Export Images.
		2. Make sure you pick "Snap Bundle" as the File Type.
		3. Once this finishes, you can delete the exported files. The export was
		   only necessary to force a rebuild of your metadata.
4. Run the littlesnapper\_to\_evernote.scpt script. 
5. Pick your library file and notebook name. You can leave the notebook
   name blank and it will use the default. If you enter a new notebook name
   it will be created. If you don't want to run into your Syncing limits, 
   __create a new, local-only notebook to sync to__. You can move notes over
   to a syncing notebook later (in batches if necessary). 
6. Let the script run through - you'll see the notes being added in real time.
   It took a few hours for my 2000+ snaps to be brought into Evernote.

NOTES
-----

You may want to check Evernote once and a while, as it will stop the export's
progress if you try to import a file over 25MB, which is not allowed. Just
press OK on the dialog box and the export will continue.

TODO
----

Let user know if there's a file without an info.plist, ask them to do step 3.