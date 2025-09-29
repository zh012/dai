# Context Map & Ubiquitous Language

## 1. Bounded Contexts

*Identify and describe the different bounded contexts within the system. For each context, define its responsibilities and boundaries.*

### 1.1. Context Name

-   **Description**: *Briefly describe the context.*
-   **Responsibilities**: *List the key responsibilities of this context.*
-   **Triggers**: *What events or actions trigger processes within this context?*

## 2. Context Map

*Visually represent the relationships between the bounded contexts. Use DDD patterns to describe the relationships (e.g., Shared Kernel, Customer-Supplier, Conformist, Anti-Corruption Layer).*

-   **[Context A] <-> [Context B]**: *Relationship type (e.g., Partnership, Shared Kernel)*
    -   **Description**: *Describe the nature of the relationship and any integration points.*

## 3. Ubiquitous Language

*Define a glossary of terms that have a precise and shared meaning within each bounded context. This language should be used by all team members—developers, domain experts, and stakeholders.*

### 3.1. Glossary for [Context Name]

| Term          | Definition                                                                 |
|---------------|----------------------------------------------------------------------------|
| *e.g., Order* | *A request from a customer to purchase goods or services.*                 |
| *e.g., Invoice*| *A document issued by a seller to a buyer, relating to a sale transaction.*|
