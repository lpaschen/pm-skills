---
name: answer-data-curiosity
description: Answer data questions by querying Bitly's BigQuery databases
---

Answer Bitly data questions by querying BigQuery, generating a visual HTML report, and suggesting follow-up analyses. Always use read-only SELECT queries — never run INSERT, UPDATE, DELETE, DROP, or any mutation.

## Workflow

### Step 1 — Understand the schema

Run `list_dataset_ids` and `list_table_ids` to identify available tables. Summarize the schema concisely so the user knows what data is available, then prompt them to ask their first question.

### Step 2 — Understand the question

Restate the user's question in one sentence to confirm you're solving the right thing before writing any query.

### Step 3 — Query

Construct a `SELECT`-only BigQuery query to retrieve the relevant data. Run it. If the query errors or returns zero results:
- Read the error message and identify the likely cause (wrong table name, bad column reference, type mismatch)
- Adjust and retry up to 2 times before surfacing the issue to the user with a clear explanation

Never run a query that modifies data.

### Step 4 — Generate HTML report

Save a report to `~/Documents/product_hub/data-curiosity/answer-<timestamp>.html` that includes:

- **Question**: the user's original question, plainly stated
- **Query**: the SQL used, in a formatted code block
- **Results table**: clean, readable, with column headers
- **Visualization**: chart type chosen based on data shape:
  - Time series data: line chart
  - Comparing categories or groups: bar chart
  - Part-to-whole relationships: pie chart (only when 6 or fewer segments)
  - Dense or multi-dimensional results: table only, no chart

### Step 5 — Open and confirm

Open the HTML report in the user's default browser.

### Step 6 — Suggest follow-ups

After delivering results, suggest 2-3 specific follow-up questions based on what the data showed. Make these concrete — not "you could look at trends" but "want to see this broken down by plan tier?" or "want to compare this week vs. the same week last quarter?"

## Guidelines

- Always state what the data cannot tell you — never oversell confidence
- Correlations are not causation — flag this when relevant
- Always specify the time window in every answer — "conversion dropped" is meaningless without the period
- If results look anomalous, flag it rather than presenting the data as if it's expected
