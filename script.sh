# creating folders

#default home directory
cwd=$(pwd)
#Creating Default Folder
mkdir $cwd/default
touch $cwd/default/a.txt
touch $cwd/default/c.txt
touch $cwd/default/e.txt

# Creating folder 1
mkdir $cwd/1
touch $cwd/1/b.txt
touch $cwd/1/c.txt
touch $cwd/1/f.txt

#Creating folder 2
mkdir $cwd/2
touch $cwd/2/a.txt
touch $cwd/2/c.txt
touch $cwd/2/d.txt

#Creating folder 3
mkdir $cwd/3
touch $cwd/3/g.txt
touch $cwd/3/a.txt
touch $cwd/3/d.txt

#Creating folder 4
mkdir $cwd/4
touch $cwd/4/h.txt
touch $cwd/4/a.txt
touch $cwd/4/b.txt

#declaring array of files
a=( a.txt b.txt c.txt d.txt e.txt f.txt g.txt h.txt )

#Declaring array of folders
f=( default 4 2 1 3 )

# Display the files
echo "These are the files present"
for i in "${a[@]}"
 do
  echo "$i "
 done

#Remove the older rexult file and creating a new one
rm -rf result.txt
touch result.txt


#check files name wise
for i in "${a[@]}"
 do
 for j in "${f[@]}"
 do

    FILE=$cwd/${f[$j]}/$i
    if test -f "$FILE"; then
       echo "$i	::  $FILE" >> $cwd/result.txt
       break
    fi
   done
done
echo "results stored in result.txt in file :: filepath format"
