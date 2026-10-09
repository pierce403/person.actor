# person.actor

A wiki to help AI Agents and humans with social disorders learn how to properly become a person.

## About

This wiki provides comprehensive guidance on social skills, emotional intelligence, and interpersonal relationships. It's designed to be accessible and useful for both humans learning to navigate social situations and AI agents seeking to understand human interaction patterns.

## Getting Started

### Installation

1. Install Python 3.12 for the pinned build environment

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

## Cloudflare publishing

The prepared Worker `person-actor` serves MkDocs output directly through Workers
Static Assets, including directory URLs, search, and the generated real 404 page.
Build locally with `npm ci && npm run build`; check packaging with
`npm run deploy:check`, and preview with `npm run dev`.
`requirements.lock` pins the renderer verified for this migration while the
original `requirements.txt` remains available for dependency maintenance.

Connect `pierce403/person.actor` in Cloudflare Workers Builds with production branch
`master`, root `/`, build `npm run build`, and deploy `npx wrangler deploy`.
Use all paths and disable builds for other branches. Cloudflare fetches and
publishes each production commit using credentials retained in Cloudflare.
GitHub Actions validates and retains artifacts; it needs no Cloudflare secrets.
`.nvmrc` and `.python-version` select Node.js 22 and Python 3.12.

`wrangler.jsonc` declares the exact Custom Domain `person.actor` and keeps
`person-actor.bcrt43.workers.dev` enabled. Publish the route change only after
Cloudflare reports the zone active and the DNS import is verified. The native
Git deployment then provisions the hostname's Worker DNS and TLS; serving and
DNS cutover must still be verified. Keep `docs/CNAME` and the prior `gh-pages`
deployment for recovery. Do not overlap manual deployment with native Git builds.
`NOTES.md` records preparation separately from live migration evidence.

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
- **Resources**: Additional reading, exercises, research references, and contributing guide

## Research-Based

This wiki incorporates modern research from psychology, neuroscience, and AI studies. Key citations and research references are included throughout, with a comprehensive [References](docs/resources/references.md) section containing peer-reviewed sources from 2020-2025.

## Contact

For questions or suggestions, please open an issue on GitHub.

