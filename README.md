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
$ cd spring-portlet-ajax/spring-portlet-ajax
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
$ cp target/spring-portlet-ajax.war $EXO_HOME/standalone/deployment/platform.ear
```

Após isso, devemos registra-lo em:

```

$EXO_HOME/standalone/deployment/platform.ear/META_INF no application.xml add o modulo do portlet:

<module>
    <web>
      <web-uri>spring-portlet-ajax.war</web-uri>
      <context-root>spring-portlet-ajax</context-root>
    </web>
  </module>
```

OBS:
* O portlet poderá ser usado em qualquer portal, pois seguimento a Especificação Portlet JSR168/286.
* Para deploy do portlet em outros Portais portais poderá ser diferente o procedimento,depende de
fabricante para fabricante.
