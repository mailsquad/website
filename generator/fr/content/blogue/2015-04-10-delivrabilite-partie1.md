---
title: "Délivrabilité sous toutes ses facettes - partie 1"
slug: "delivrabilite vs spf et dkim"
description: Démystifions les normes d’authentification email SPF et DKIM et pourquoi cela est important dans la déliverabilité de vos campagnes d’emailing.
date: "2015-04-10"
categories: [ "delivrabilite" ]
menu:
  top:
    parent: 'blogue'
---

Dans ce billet, nous démystifions les **normes d’authentification email** et pourquoi cela est important dans la déliverabilité de vos campagnes d’emailing.

<!--more-->

*Cette série de post sur notre blogue vous permettra de démystifier toutes les facettes de la dévrabilité des emails.*

# Délivrabilité et l’intérêt des normes de vérification SPF et DKIM

Le spam représente selon les statistiques plus de 90% du routage global de emails de la planète. Les filtres anti-spam sont donc un mal nécessaire et une bonne connaissance de leur fonctionnement est toujours utile pour maximiser la délivrabilité des emails.

## L’ursurpation d’identité et le spam

Les emails sont aussi vieux que l’internet et les inventeurs de ce merveilleux mode de communication ne pouvaient prévoir l’arrivé des spammeurs. Le protocole d’envoie email (SMTP) a malheureusement été conçu sans aucune contrainte de validation de l’identité de l’émetteur.
 
Lorsque vous envoyez un email, votre FAI contacte le serveur de réception SMTP relié au domaine du destinataire. Ce serveur a alors la responsabilité de livrer le email dans la boîte de réception du destinaire.
 
Pour usurper l’identité d’un tiers, les spammeurs n’ont qu’à indiquer comme emetteru n’importe quelle adresse email. Rien de plus compliqué! Alors, rien n’empêche un spammeur d’envoyer un email à votre ami et de lui faire croire qu’il provient bel et bien de vous.
 
Évidemment, la détection d’une telle fraude est quelque chose qui doit être possible et la communauté a donc mis en place de nouvelles normes de vérification:

* La norme **SPF** pour « Sender Policy Framework »
* La norme **DKIM** pour « Domain Key Identified Mail »

## SPF: restriction des adresses IPs aux vôtres

Lorsque votre FAI entre en contact avec le serveur SMTP de votre destinataire, il le fait sous une adresse IP spécifique. La mécanique du SPF consiste à vérifier que cette adresse IP est bien autorisée à livrer des emails pour votre nom de domaine. Cette liste d’adresses IP autorisées pour votre domaine est spécifié dans une entrée DNS que seul vous peut contrôler.

Cette norme d’authentification est simple et efficace mais ne protège pas totalement contre l’ursupation d’identité.

## DKIM : signature électronique pour votre domaine

Le protocole DKIM est une forme de vérification de l’identité de l’émetteur basée sur des principes cryptographiques telles qu’utilisé lors des connections sécurisées SSL. Ce protocole permet d’apposer une signature électronique au contenu de votre email à l’aide d’une clé privée que personne d’autre que vous possède.
 
Le serveur SMTP de votre destinataire peut ensuite vérifier à la réception que cette signature correspond bien à la vôtre en utilisant votre clé publique qui est disponible publiquement dans le DNS de votre nom de domaine.
 
Cette forme d’authentification est très robuste car elle permet aussi de valider que le contenu du email n’a pas été intercepté et modifié par un imposteur.

## SPF, DKIM et vos campagnes d’emailing

Comme vous pouvez le constater, tous ces protocoles d’authentification sont très techniques mais malheureusement inévitables pour assurer la délivrabilité optimale de vos newsletters.
 
Par défaut, tous les emails envoyés par MailSquad sont signés avec notre clé DKIM privée et nos serveurs de routage SMTP sont tous bien configurés pour le protocole SPF. Une authentification de base est donc toujours présente.
 
Par contre, nous encourageons toutes nos agences à faire un pas en avant en activant l’authentification avancée pour les domaines de leurs clients. Cela vous permet d’assurer l’identité directe des domaines de vos clients au lieu de partager une identité générique de base.
 
Avez-vous des questions? Vous voulez activer l’authentification avancée pour vos clients? Nous sommes là pour vous aider!