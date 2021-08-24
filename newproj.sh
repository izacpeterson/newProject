if [[ -z $1 ]]; then 
    echo "Please enter new Project name"
    exit
fi

newProj=$1

echo
echo "New Project created in folder ${newProj}"
cd ..

cp -r newProject/template/ $newProj

cd $newProj

echo "Created files and folders from template"
ls

echo
git init

cd html

sed -i "s/Document/${newProj}/" index.html

start index.html