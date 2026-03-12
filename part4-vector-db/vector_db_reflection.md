## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for searching large legal contracts using natural language questions. Keyword searches rely on exact word matches, which means they often fail when the wording in the document differs from the user's query. Legal documents are complex and may describe the same concept using different phrases. For example, a termination clause might be written using phrases such as "agreement cancellation", "contract termination", or "ending the agreement". A keyword search might miss relevant sections if the exact keywords are not present.

Vector databases solve this problem by enabling semantic search. Instead of searching for exact words, the system converts both the document text and the user's question into numerical embeddings using language models. These embeddings capture the meaning of the text. The vector database then compares the embeddings using similarity metrics such as cosine similarity to find sections of the document that are semantically related to the query.

In the case of a 500-page legal contract, the document could be broken into smaller chunks, each converted into embeddings and stored in a vector database. When a lawyer asks a question in plain English, the system converts the question into an embedding and retrieves the most relevant sections of the contract. This allows lawyers to quickly locate important clauses without manually scanning the entire document.

Therefore, vector databases play a critical role in enabling intelligent document search systems that understand meaning rather than relying only on exact keywords.
