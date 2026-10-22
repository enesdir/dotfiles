#!/usr/bin/env bash
npm install -g npm@latest
npm config set allow-scripts=yarn --location=user
npm config set allow-scripts=pnpm --location=user
npm install -g pnpm@latest
npm install -g yarn