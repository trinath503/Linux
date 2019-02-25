#creating 
./gdrive -c new_folder_name list

#using tokem 
./gdrive -c token_folder commands

#comands to use 
gdrive [global] list [options]                                 List files
gdrive [global] download [options] <fileId>                    Download file or directory
gdrive [global] download query [options] <query>               Download all files and directories matching query
gdrive [global] upload [options] <path>                        Upload file or directory
gdrive [global] upload - [options] <name>                      Upload file from stdin
gdrive [global] update [options] <fileId> <path>               Update file, this creates a new revision of the file
gdrive [global] info [options] <fileId>                        Show file info
gdrive [global] mkdir [options] <name>                         Create directory
gdrive [global] share [options] <fileId>                       Share file or directory
gdrive [global] share list <fileId>                            List files permissions
gdrive [global] share revoke <fileId> <permissionId>           Revoke permission
gdrive [global] delete [options] <fileId>                      Delete file or directory
gdrive [global] sync list [options]                            List all syncable directories on drive
gdrive [global] sync content [options] <fileId>                List content of syncable directory
gdrive [global] sync download [options] <fileId> <path>        Sync drive directory to local directory
gdrive [global] sync upload [options] <path> <fileId>          Sync local directory to drive
gdrive [global] changes [options]                              List file changes
gdrive [global] revision list [options] <fileId>               List file revisions
gdrive [global] revision download [options] <fileId> <revId>   Download revision
gdrive [global] revision delete <fileId> <revId>               Delete file revision
gdrive [global] import [options] <path>                        Upload and convert file to a google document, see 'about import' for available conversions
gdrive [global] export [options] <fileId>                      Export a google document
gdrive [global] about [options]                                Google drive metadata, quota usage
gdrive [global] about import                                   Show supported import formats
gdrive [global] about export                                   Show supported export formats
gdrive version                                                 Print application version
gdrive help                                                    Print help
gdrive help <command>                                          Print command help
gdrive help <command> <subcommand>                             Print subcommand help 
