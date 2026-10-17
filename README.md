# 📚 Learn Platform API (Domain Model)

[![Java 21](https://img.shields.io/badge/Java-21-orange.svg)](https://www.oracle.com/java/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> Módulo de domínio e mapeamento relacional avançado para uma plataforma de ensino corporativa (LMS), desenvolvido em Java 21 e Spring Boot 3.x, focado na resolução de modelos de entidades altamente complexos.

---

## 🛠️ Decisões de Arquitetura e Engenharia (Fase Atual)

* **Problema Resolvido:** Modelagem orientada a objetos e mapeamento relacional complexo (JPA/Hibernate) de um ecossistema educacional completo, englobando múltiplos relacionamentos direcionados, chaves compostas e herança de entidades.
* **Modelagem de Domínio:** Estruturação de entidades ricas simulando cenários reais de plataformas de ensino (matrículas, ofertas de cursos, seções, lições do tipo *Task* e *Content*, fóruns de discussões e notificações).
* **Próximas Etapas:** Implementação da camada de persistência (Repositories), regras de negócio (Services) e exposição dos contratos via API REST (Controllers).

---

## 📊 Arquitetura do Modelo de Domínio

O diagrama abaixo ilustra o mapeamento conceitual implementado no núcleo do projeto:

```mermaid
graph TD
    User[User / Students] -->|Enrollment| Offer[Offer]
    Offer --> Course[Course]
    Offer --> Resource[Resource]
    Resource --> Section[Section]
    Section --> Lesson[Lesson]
    Lesson --> Task[Task / Content]