Echo "Bienvenue sur la calculatrice"  # Affichage du message de bienvenue

pause

# boucle dans laquelle il va demander les valeurs et l'opération puis afficher l'opération (voir suite ligne 23)

Do {
$nombre1 = Read-Host "Quel est le premier nombre" # Demande du premier nombre
$nombre2 = Read-Host "Quel est le second nombre"  # Demande du second nombre
$operation = Read-Host "Quelle est l'opération ( + - x /)" # Demande de l'opération souhaitée
    switch ($operation) # vérification de la valeur de la variable $operation
        {
            "+" {$calcul = $nombre1 + $nombre2}  # si la valeur est "+" alors faire l'addition
            "-" {$calcul = $nombre1 - $nombre2}  # si la valeur est "-" alors faire la soustraction
            "x" {$calcul = $nombre1 * $nombre2}  # si la valeur est "x" alors faire la multiplication
            "/" {$calcul = $nombre1 / $nombre2}  # si la valeur est "/" alors faire la division
        }

    echo "`nle résultat est`n" $calcul # Affichage du résultat

    $again = read-host "Voulez-vous effectuer une autre opération ?" # Demande si l'utilisateur souhaite réeffectuer une opération 
        
   }until ($again -eq "non") # jusqu'a ce que l'utilisateur souhaite ne plus effectuer d'opération (valeur $again = non)

   echo "Fin du programme ... Au revoir !"