



% 
%*************************************************
% Nom du fichier: lecture.m
% Description: exercice TP5 
% Auteur: Samuel Le Brasseur
%         Juliette Tibayrenc
% Paramètres: date
% Valeurs de retour: chaine charactère de la date
% Date: 17 novembre 2015
%***************************************



lec=fopen('passe.txt','rt');

if lec== -1
    disp('erreur')
else
    disp('fichier ouvert')
    
    x=randi(50)
    affiche=fgetl(lec)
    
    ligne=strfind(affiche,' ');
    dernier=length(ligne);
    dernier_espace=ligne(dernier);
    mot_pass=affiche(dernier_espace+1:end)
    mot_cryp=(mot_pass)+x
    
    while affiche~=-1
    affiche=fgetl(lec)
     
    end
    lec2=fopen('passe_c.txt', 'at')
    
    
    fclose(lec2);
 fclose(lec);   
 
 
    
end







