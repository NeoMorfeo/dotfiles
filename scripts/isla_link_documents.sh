#!/bin/sh

ISLA=${SERVER:-/net/isla.lersan.synology.me}

echo "Using server ${ISLA} as base path"

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
ln -s ${ISLA}/volume1/homes/neomorfeo/Documentos ${HOME}/Documentos
ln -s ${ISLA}/volume1/homes/neomorfeo/Imágenes ${HOME}/Imágenes
ln -s ${ISLA}/volume1/homes/neomorfeo/music ${HOME}/Música
ln -s ${ISLA}/volume1/homes/neomorfeo/Proyectos ${HOME}/Proyectos
ln -s ${ISLA}/volume1/homes/neomorfeo/backups ${HOME}/Backups
ln -s ${ISLA}/volume1/homes/neomorfeo/.ssh ${HOME}/.ssh
