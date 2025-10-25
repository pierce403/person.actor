# person.actor

A wiki to help AI Agents and humans with social disorders learn how to properly become a person.

## About

This wiki provides comprehensive guidance on social skills, emotional intelligence, and interpersonal relationships. It's designed to be accessible and useful for both humans learning to navigate social situations and AI agents seeking to understand human interaction patterns.

## Getting Started

### Installation

1. Install Python 3.7 or higher

2. Create a virtual environment (recommended):
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

### Local Development

To run the site locally with live reload:

```bash
./serve.sh
# or: mkdocs serve
```

Then visit `http://127.0.0.1:8000/` in your browser.

### Building the Site

To build the static site:

```bash
./build.sh
# or: mkdocs build
```

This creates a `site/` directory with the static HTML files.

**Always test the build before committing changes!**

### Deployment

#### Automatic Deployment (Recommended)

The site automatically deploys to GitHub Pages when you push to the `master` branch via GitHub Actions.

**To configure GitHub Pages:**
1. Go to your repository settings: https://github.com/pierce403/person.actor/settings/pages
2. Under "Build and deployment" → "Source", select **"Deploy from a branch"**
3. Under "Branch", select **"gh-pages"** and **"/ (root)"**
4. Click "Save"

The workflow will run automatically on every push to `master`. You can also trigger it manually from the Actions tab.

#### Manual Deployment

To deploy manually from your local machine:

```bash
./deploy.sh
# or: mkdocs gh-deploy
```

## Contributing

Contributions are welcome! Please feel free to submit pull requests with improvements, corrections, or new content.

## License

This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.

## Structure

The wiki is organized into the following main sections:

- **Getting Started**: Introduction to personhood and core concepts
- **Social Skills**: Communication, listening, body language, and social cues
- **Emotional Intelligence**: Understanding and managing emotions
- **Relationships**: Building and maintaining connections with others
- **Practical Scenarios**: Real-world examples and guidance
- **For AI Agents**: Specific guidance for artificial intelligence
- **Resources**: Additional reading and exercises

## Contact

For questions or suggestions, please open an issue on GitHub.

