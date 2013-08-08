Spring Portlet MVC
==================

O Projeto Spring Portlet Ajax usando Maven.

* Java 1.6
* Portlet 2.0
* Spring Framework 3.1.1
* Annotation-based controller configuration

Como Usar
-----
```bash

$ git clone git@github.com:adercinho/spring-portlet-ajax.git
$ cd spring-portlet-ajax
$ mvn package
```

Deploy
------

If você está utilizando o eXo Platform 3.5.7 com JBoss 5.1, copie o war para o diretório de deploy
```
$ cp target/spring-portlet-ajax.war $EXO_HOME/server/default/deploy
```

If você está utilizando o eXo Platform 4.0.1 com JBoss 6.1, copie o war para o diretório de deploy

```
$ target/spring-portlet-ajax.war $EXO_HOME/standalone/deployment/platform.ear

Em $EXO_HOME/standalone/deployment/platform.ear/META_INF no application.xml add o modulo do portlet:


```
