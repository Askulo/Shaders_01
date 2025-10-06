# 27-shaders

A minimal WebGL / GLSL shader demo scaffolded for local development using Vite.

This workspace contains a small demo that loads shaders from `shaders/` and textures from `static/textures/` and serves a single page (`index.html`) with a WebGL canvas.

## What you'll find

- `index.html` - Entry HTML with the canvas and script include.
- `script.js` - Main JS that loads shaders, initializes WebGL (or uses a lightweight helper), and starts the render loop.
- `style.css` - Minimal styles for the demo page.
- `shaders/` - GLSL shader files (vertex and fragment). Example: `shaders/test/vertex.glsl`, `shaders/test/fragment.glsl`.
- `static/textures/` - Image assets used by shaders (e.g. `flag-french.jpg`).
- `vite.config.js` - Vite configuration for development server.
- `package.json` - Project manifest with dev scripts and dependencies.

## Running locally

Prerequisites: Node.js (16+) and npm or a compatible package manager.

1. Install dependencies:

   npm install

2. Start the Vite dev server:

   npm run dev

3. Open the URL printed by Vite (typically http://localhost:5173) in your browser to view the demo.

## Notes about shaders

- Shader files live under `shaders/`. This project keeps them as separate `.glsl` files and loads them at runtime via fetch or Vite's static serving. If you move or rename shaders, update the paths in `script.js`.
- If you get a CORS or MIME-type error when fetching shader files, double-check the dev server is serving them as text. Vite normally serves files in the workspace root correctly.

## Tips for editing

- Use the browser DevTools to inspect WebGL warnings and shader compilation errors — they provide line numbers and compilation logs.
- When adding textures, put them in `static/textures/` and reference them with relative paths from the served site (for example `/static/textures/flag-french.jpg`).

## Troubleshooting

- If `npm run dev` fails, run `npm install` again or delete `node_modules` and reinstall.
- If shaders don't compile, the browser console will show compilation errors. Check for GLSL version directives (`#version`) and remove or adjust them if your environment doesn't support them (WebGL 1.0 uses GLSL ES 1.00).

## License

This repository doesn't include an explicit license. Add one if you plan to publish or share the code.
