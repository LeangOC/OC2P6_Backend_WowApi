# main
clone  https://github.com/OpenClassrooms-Student-Center/G-rez-l-int-gration-et-la-livraison-continue-Application-Java.git

# dev1
- Dérouler le contenu de "README.md"
  : $ ./gradlew clean compileJava
  : $ ./gradlew bootRun ( KO "Postgresql non démarré" )
  : $ docker compose up -d ( KO "image workshop-organizer n'existe pas")
  : $ docker compose up -d ( after delete "app" from docker-compose.yml)
  : $ ./gradlew bootRun
  : $ ./gradlew clean test

# dev2
- Dockerfile et new docker-compose.yml
  : $ ./gradlew bootWar
  : $ docker compose up --build -d (Reconstruire sans utiliser le cache )

# dev3
-  Implémenter le script run-tests.sh
   : ./run-tests.sh


# develop
- Implémentation CI workflow Github Actions
: .github/workflows/ci.yml


# main
- merge de la branch develop

- adapter la pipeline ci/cd à la branche main

- Pour démarrer l'application : 
> $ docker compose up -d

- Pour déclencher la pipeline ci/cd : 
> Faire un "push" sur cette branche "main".