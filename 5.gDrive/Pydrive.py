from pydrive.auth import GoogleAuth
from pydrive.drive import GoogleDrive
import os
#Downlaod credentials from google console
from pydrive.auth import GoogleAuth
from pydrive.drive import GoogleDrive

gauth = GoogleAuth()
# Try to load saved client credentials
gauth.LoadCredentialsFile("mycreds.txt")
if gauth.credentials is None:
   # Authenticate if they're not there
   gauth.LocalWebserverAuth()
elif gauth.access_token_expired:
   # Refresh them if expired
   gauth.Refresh()
else:
   # Initialize the saved creds
   gauth.Authorize()
# Save the current credentials to a file
gauth.SaveCredentialsFile("mycreds.txt")

drive = GoogleDrive(gauth)

file = {'title' : 'sample'}
file_upload = drive.CreateFile(file)
file_upload.SetContentFile("sample.zip")
file_upload.Upload()

file_drive = drive.CreateFile({'id' : file_upload['id']})
file_drive.GetContentFile("download.zip")
