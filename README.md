# Propòsit
Mostrar com podria funcionar un cicle de vida de desenvolupament sobre Sakai utilitzant el següent procediment de CI/CD:
- Els canvis al codi s'integren i es testejen utilitzant Github Actions.
- En cas de funcionament correcte, es crea una imatge Docker que es desa a Packages amb tag de Release Candidate.
- Un Jenkins on-premises "escolta" la creació de Release Candidates i desplega la imatge a l'entorn de pre-producció.
- Es fa testing a l'entorn de pre-producció i en cas de superar totes les proves es marca el codi amb un tag de versió.
- Un workflow Github Actions crea una nova Release empaquetant el codi en un o més Dockerfile i, en cas necessari, un docker-compose.yml.
- El Jenkins on-premises "escolta" la creació de relases i desplega les imatges en l'entorn de producció.
