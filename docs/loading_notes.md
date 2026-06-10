# Loading Notes

The Sample Superstore CSV did not import correctly using UTF8 encoding.

The successful pgAdmin import settings were:

- Format: csv
- Header: Yes
- Delimiter: ,
- Quote: "
- Escape: "
- Encoding: LATIN1

The original error was:

```text
ERROR: invalid byte sequence for encoding "UTF8": 0xa0
CONTEXT: COPY raw_superstore, line 13