pligg-cms
=========

Pligg Content Management System
correction du hash du password en sha512 (le salt est laissé en md5)
la structure de la table users de la base pligg doit être modifiée : user_pass varchar 256
changer ensuite les veurs des anciens mots de passe : utiliser testsalt.php
