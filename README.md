# MySQL Slugify Function

A comprehensive MySQL function that converts strings into URL-friendly slugs by transliterating international characters and cleaning up formatting.

## Features

- **International Character Support**: Handles Cyrillic, Latin with diacritics, and Greek characters
- **URL-Safe Output**: Converts to lowercase and removes special characters
- **Clean Formatting**: Replaces spaces and dots with hyphens, removes multiple consecutive hyphens
- **Deterministic**: Same input always produces the same output

## Installation

Execute the function definition in your MySQL database:

## Usage

```sql
SELECT slugify('Hello World!'); 
-- Returns: 'hello-world'

SELECT slugify('Привет мир'); 
-- Returns: 'privet-mir'

SELECT slugify('Café & Restaurant'); 
-- Returns: 'cafe-restaurant'

SELECT slugify('múltiple---hyphens   spaces'); 
-- Returns: 'multiple-hyphens-spaces'
```

## Character Transliteration

- **Cyrillic**: а→a, б→b, в→v, г→g, etc.
- **Latin Diacritics**: á→a, ñ→n, ç→c, etc.
- **Greek**: α→a, β→b, γ→g, etc.
- **Special**: ß→ss, æ→ae, œ→oe

## Output Format

- Lowercase alphanumeric characters and hyphens only
- No leading or trailing hyphens
- Single hyphens between words
- Maximum length: 255 characters

## License

MIT License