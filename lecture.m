


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
    disp('erreur');
else
    disp('fichier ouvert');
    val=fgetl(lec)
    while val~= -1
    val=fgetl(lec)
    %cryptage
    x=randi(50)
    
    passe_cryp= x+ val
    end
    
    
    
    
   %__----------- 
    lecs=fopen('passe_c.txt','at');
    
    if lec== -1
    disp('erreur')
    else
    disp('fichier ouvert')
    
    %x=randi(50);
    
    fprintf(lecs,'%9.0f', x);
    fclose(lecs)
    %------------------
    
 fclose(lec);   
    
    end
end
