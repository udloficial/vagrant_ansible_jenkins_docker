# Propòsit
Mostrar com podria funcionar un cicle de vida de desenvolupament sobre Sakai utilitzant el següent procediment de CI/CD:
- Els canvis al codi s'integren i es testejen utilitzant Github Actions.
- En cas de funcionament correcte, es crea una imatge Docker que es desa a Packages amb tag de Release Candidate.
- Un Jenkins on-premises "escolta" la creació de Release Candidates i desplega la imatge a l'entorn de pre-producció.
- Es fa testing a l'entorn de pre-producció i en cas de superar totes les proves es marca el codi amb un tag de versió.
- Un workflow Github Actions crea una nova Release empaquetant el codi en un o més Dockerfile i, en cas necessari, un docker-compose.yml.
- El Jenkins on-premises "escolta" la creació de relases i desplega les imatges en l'entorn de producció.

# Necessitats
- Receptes per a "construir" un entorn de proves de pre-release a Github Actions. 
- Recepta per a crear release candidate en forma de imatge Docker o varies imatges i docker-compose que defineixi com funcionen en conjunt.
- Recepta de Jenkins per a desplegar release-candidate en pre-pruducció.
- Recepta per a "construir" entorn de proves de release a Github Actions.
- Recepta de Jenkins per a desplegar release en producció.

# Construcció entorn de proves de pre-release
S'hauran de crear els següents recursos:
- Dockerfile de creació del "servei" Sakai des de la darrera versió del codi.
- Recepta Github Actions que permeti el build de la imatge Docker a partir d'aquest Dockerfile.
- Recepta GitHub Actions per a crear un stack de proves amb Nginx com a frontal que derivi peticions a un node Tomcat amb Sakai i una bbdd mysql
