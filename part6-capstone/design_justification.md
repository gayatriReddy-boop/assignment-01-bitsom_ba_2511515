## Storage Systems

The architecture uses multiple storage systems designed for different workloads in the hospital data platform.

For transactional healthcare data such as patient records, appointments, treatments, and billing information, a relational OLTP database such as PostgreSQL or MySQL is used. These systems provide strong ACID guarantees, ensuring consistency and reliability for critical healthcare operations.

Real-time ICU monitoring devices generate continuous streams of patient vitals such as heart rate, oxygen levels, and blood pressure. This data is ingested through a streaming platform like Apache Kafka and stored in a data lake using scalable cloud storage. The data lake allows the hospital to store massive volumes of raw medical data including logs, sensor streams, and medical images.

For analytical workloads such as hospital management reports, department-wise cost analysis, and bed occupancy tracking, a data warehouse such as Snowflake or BigQuery is used. The warehouse stores structured, cleaned data optimized for fast analytical queries.

To support natural language search over patient records, a vector database such as Pinecone or Weaviate is used. Patient history documents are converted into embeddings and stored in the vector database so doctors can ask questions in plain English and retrieve relevant medical history information.

Finally, machine learning models use historical data from the warehouse and data lake to predict patient readmission risks.

## OLTP vs OLAP Boundary

The OLTP system handles all operational hospital transactions such as patient admissions, doctor consultations, prescriptions, and billing. These transactions require fast writes and strong consistency to ensure accurate medical records.

The OLAP system begins when data is extracted from the operational database and loaded into the data warehouse for analytical processing. In the warehouse, the data is transformed into structures optimized for reporting and analytics. Hospital administrators use this system to generate monthly reports, monitor department performance, and analyze operational trends.

The data lake sits between these systems and stores raw and historical data used for advanced analytics and machine learning.

## Trade-offs

One major trade-off in this architecture is system complexity. Using multiple specialized storage systems such as relational databases, data lakes, warehouses, and vector databases increases operational complexity and infrastructure costs.

However, this complexity is necessary to support the different workloads required by the hospital system, including transactional processing, real-time streaming, analytics, and AI-driven search.

To mitigate this trade-off, the hospital could adopt a unified cloud platform that integrates these services, such as a lakehouse architecture. Managed cloud services also reduce operational overhead by handling scaling, monitoring, and maintenance automatically.
