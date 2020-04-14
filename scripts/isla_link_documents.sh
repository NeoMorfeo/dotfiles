#!/bin/sh

echo "Make backup of actual home"
if [ -d "${HOME}/Documentos" ]; then
	mv "${HOME}/Documentos" "${HOME}/Documentos_bck"
fi

if [ -d "${HOME}/Imágenes" ]; then
	mv "${HOME}/Imágenes" "${HOME}/Imágenes_bck"
fi

if [ -d "${HOME}/Música" ]; then
	mv "${HOME}/Música" "${HOME}/Música_bck"
fi

if [ -d "${HOME}/Proyectos" ]; then
	mv "${HOME}/Proyectos" "${HOME}/Proyectos_bck"
fi

if [ -d "${HOME}/Backups" ]; then
	mv "${HOME}/Backups" "${HOME}/Backups_bck"
fi

if [ -d "${HOME}/.ssh" ]; then
	mv "${HOME}/.ssh" "${HOME}/.ssh_bck"
fi

echo "Linking isla documents"
ln -s /net/lersan.synology.me/volume1/homes/neomorfeo/Documentos ${HOME}/Documentos
ln -s /net/lersan.synology.me/volume1/homes/neomorfeo/Imágenes ${HOME}/Imágenes
ln -s /net/lersan.synology.me/volume1/music ${HOME}/Música
ln -s /net/lersan.synology.me/volume1/homes/neomorfeo/Proyectos ${HOME}/Proyectos
ln -s /net/lersan.synology.me/volume1/homes/neomorfeo/backups ${HOME}/Backups
ln -s /net/lersan.synology.me/volume1/homes/neomorfeo/.ssh ${HOME}/.ssh
