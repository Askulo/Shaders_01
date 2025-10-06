# Shaders — Introduction

A concise introduction to shaders (GLSL / HLSL / WGSL) and the two primary shader stages commonly used in real-time rendering: vertex and fragment shaders.

---

## Table of Contents
- [Introduction](#introduction)
- [What Is a Shader?](#what-is-a-shader)
- [Vertex Shader](#vertex-shader)
- [Fragment Shader](#fragment-shader)
- [Summary](#summary)
- [Why Write Your Own Shaders?](#why-write-your-own-shaders)

---

## Introduction
Shaders are small programs that run on the GPU (Graphics Processing Unit). They control how geometry and pixels are processed to produce the final image. Shaders enable advanced visual effects, custom lighting, and efficient rendering pipelines.

## What Is a Shader?
A **shader** is code written in a shading language (GLSL, HLSL, WGSL, etc.) executed by the GPU. Different shader stages handle different parts of the rendering pipeline. The two most common shader types are:
- **Vertex shaders** — transform vertex attributes and positions.
- **Fragment shaders** — compute the final color for pixels (fragments).

## Vertex Shader
A vertex shader runs once per vertex and is responsible for:
- Transforming vertex positions from model space → world space → clip/screen space.
- Passing per-vertex data (normals, UVs, colors) to later stages.
- Performing vertex-level calculations (skinning, morph targets, basic culling data).

**In short:** the vertex shader decides *where* geometry appears on screen.

## Fragment Shader
A fragment (pixel) shader runs for each rasterized fragment and is responsible for:
- Determining the final color of pixels.
- Applying textures, lighting models, and blending.
- Handling transparency, dithering, and post-processing inputs.

**In short:** the fragment shader decides *what* the surface looks like.

## Summary
- Shaders are GPU programs that control rendering behavior.
- Vertex shaders compute positions and pass data downstream.
- Fragment shaders compute final pixel colors and surface appearance.
- Combined, they let you build custom and performant rendering effects.

## Why Write Your Own Shaders?
Writing custom shaders lets you:
- Gain full control of the rendering pipeline.
- Create unique visual effects not available in built-in materials.
- Optimize performance for your specific needs.
- Deepen your understanding of real-time graphics and GPU programming.

---


