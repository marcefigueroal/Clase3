cd ~
mkdir nueva_carpeta
cd nueva_carpeta/
vi archivo_nuevo.txt
touch archivo_nuevo.txt
mv archivo_nuevo.txt archivo_viejo.txt 
cat "Nueva línea de texto" >> archivo_viejo.txt 
echo "Nueva línea de texto" >> archivo_viejo.txt 
cat archivo_viejo.txt 
chmod 777 archivo_viejo.txt 
cd ..
ln -s nueva_carpeta/archivo_viejo.txt enlace.ln
rm -rf nueva_carpeta