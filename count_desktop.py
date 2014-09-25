import os
import os.path

total_number = len([name for name in os.listdir('/home/mosab/Desktop')])
file_number = len([name for name in os.listdir('/home/mosab/Desktop') if os.path.isfile(name)])
directory_number = total_number - file_number


print "Number of directories in Desktop : {}".format(directory_number)
print "Number of files in Desktop : {}".format(file_number)
