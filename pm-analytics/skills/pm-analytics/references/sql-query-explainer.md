
# SQL Query Explainer

Analyze and work with SQL queries across multiple database systems (PostgreSQL, MySQL, BigQuery, Snowflake, SQLite).

## Core Functionality

The skill operates in four distinct modes:

**Explain Mode** translates SQL into business-friendly language through three components: a concise summary, step-by-step breakdown of clauses, and description of output structure. It also flags potential gotchas like NULL handling in joins.

**Optimise Mode** evaluates query performance using a three-tier rating system (green/yellow/red) and provides before-after code samples for improvements. It checks for common issues including missing indexes, type conversion problems, and inefficient patterns like SELECT *.

**Write Mode** generates SQL from natural language requirements after confirming database dialect, table names, and specific filtering needs. Output includes commented code plus a full explanation.

**Document Mode** creates structured reference material with sections covering purpose, input tables, output columns in tabular format, underlying assumptions, and known limitations.

## Quality Standards

The guidance emphasizes avoiding technical jargon when explaining to non-technical audiences, always pairing optimization suggestions with code examples, and clearly describing result set characteristics (row grain, column count, sort order).

The skill supports "standard SQL" plus dialect-specific syntax, with a note to flag non-standard variations when they appear.