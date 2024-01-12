
# Prompt on Rails
## Video Intro

https://github.com/carrfane/cgtrader-prompt-search/assets/7390516/a8453db8-9ecd-4993-984b-4965e89b0479


## Description
Prompt on Rails is a dynamic application designed to help users search for prompts based on their input. Leveraging a user-friendly interface and efficient search algorithms, the app provides a seamless experience in finding relevant prompts for various needs.

## Features
- **Prompt Search**: Enter your keywords to receive a curated list of prompts.
- **User-friendly Interface**: Easy navigation and a clear layout to enhance user experience.

## Technology Stack
- **Backend**: Ruby on Rails
- **Database**: PostgreSQL
- **Search Engine**: Elasticsearch

## Installation
1. **Clone the Repository**
   ```bash
   git clonegit@github.com:carrfane/cgtrader-prompt-search.git
   ```

2. **Navigate to directory**
   ```bash
   cd cgtrader-prompt-search
   ```

3. **Grant permissions to start.sh script**
   ```bash
   chmod +x start.sh
   ```

4. **Build Docker**
   ```bash
   docker compose build
   ```
5. **Launch Docker**
   ```bash
   docker compose up
   ```

6. **Populate Database**
   ```bash
   docker compose run web rails import_prompts
   ```
## License
MIT
