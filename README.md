# ln2clone
clone a dir with ln soft link (subdir will be made directly)

Usage:
* chmod u+x ln2clone.sh
* ./ln2clone.sh sourceDirPath targetDirPath
(targetDirPath should be created before clone)

Reasons for existence:

Something needs to share to multi users, but you want some files can be modified by current user and the disk has not enough space.
I would recommend docker actually if there is enough disk and memory.
