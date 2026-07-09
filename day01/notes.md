# DAY 1- SELECT & WHERE
- SQL executes FROM -> WHERE -> SELECT, not in the order written
- WHERE filters rows, select picks columns (like pandas boolean mask + column selection)
<!-- AND/OR -->
- AND narrows results, OR widens them (& and | in pandas)
- BETWEEN and IN are the shortcuts for common AND/OR patterns

- BETWEEN always uses AND — it's part of the syntax (`BETWEEN 70 AND 90`), never OR
- BETWEEN selects INSIDE a range; for OUTSIDE use two conditions with OR, or NOT BETWEEN
- Each side of an OR must be a complete condition: `score < 70 OR score > 90` (not `score < 70 OR > 90`)
- My mistake today: wrote `BETWEEN 80 OR 90` — good reminder of the syntax rule
