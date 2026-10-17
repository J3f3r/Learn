# 📚 Learn Platform API (Domain Model)

[![Java 21](https://img.shields.io/badge/Java-21-orange.svg)](https://www.oracle.com/java/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> Módulo de domínio e mapeamento relacional avançado para uma plataforma de ensino corporativa (LMS), desenvolvido em Java 21 e Spring Boot 3.x, focado na resolução de modelos de entidades altamente complexos, relacionamentos direcionados e herança de domínio.

---

## 🛠️ Decisões de Arquitetura e Engenharia (Fase Atual)

* **Problema Resolvido:** Modelagem orientada a objetos e mapeamento relacional complexo via **JPA/Hibernate** de um ecossistema educacional completo, englobando múltiplos relacionamentos direcionados, chaves compostas e herança de entidades.
* **Modelagem de Domínio:** Estruturação de entidades ricas simulando cenários reais de plataformas de ensino corporativo e acadêmico:
  * **Gestão de Usuários e Permissões:** Entidades `User` e `Role` com controle de acesso baseado em papéis (RBAC).
  * **Ofertas e Matrículas:** Relacionamentos complexos entre `Course`, `Offer` e `Enrollment`, controlando momentos de inscrição, reembolsos e status de conclusão.
  * **Estrutura Educacional:** Organização hierárquica robusta composta por `Resource`, `Section` e `Lesson` (com polimorfismo e herança para as especializações `Task` e `Content`).
  * **Interação e Notificações:** Mapeamento de tópicos de discussão (`Topic`), respostas (`Reply`), entregas de tarefas (`Deliver`) e notificações de usuários (`Notification`).
* **Próximas Etapas:** Implementação da camada de persistência (`Spring Data JPA Repositories`), regras de negócio (`Services`) e exposição dos contratos REST (`Controllers`).

---

## 📊 Arquitetura e Modelo de Domínio (Diagrama de Classes)

O diagrama abaixo representa a arquitetura conceitual e o mapeamento relacional implementado no núcleo do projeto:

```mermaid
classDiagram
    direction LR
    class User {
        +Long id
        +String name
        +String email
        +String password
    }
    class Role {
        +Long id
        +String authority
    }
    class Course {
        +Long id
        +String name
        +String imgUri
    }
    class Offer {
        +Long id
        +String edition
        +Instant startMoment
        +Instant endMoment
    }
    class Enrollment {
        +Instant enrollMoment
        +Instant refundMoment
        +Boolean available
        +Boolean onlyUpdate
    }
    class Resource {
        +Long id
        +String title
        +String description
        +Integer position
    }
    class Section {
        +Long id
        +String title
        +String description
        +Integer position
    }
    class Lesson {
        +Long id
        +String title
        +Integer position
    }
    class Task {
        +String description
        +Integer questionCount
        +Double weight
    }
    class Content {
        +String textContent
        +String videoUri
    }

    User "1" --> "*" Role : roles
    User "1" --> "*" Enrollment : students
    Offer "*" --> "1" Course : course
    Enrollment "*" --> "1" User : student
    Enrollment "*" --> "1" Offer : offer
    Resource "*" --> "1" Offer : offer
    Section "*" --> "1" Resource : resource
    Lesson "*" --> "1" Section : section
    Lesson <|-- Task : extends
    Lesson <|-- Content : extends