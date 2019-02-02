# Dual-N-Back Utilites

This repo contains various tinkerings related to dual-n-back.
The ultimate aim is to include components in various languages and platforms
that can be used to create variations of the memory game.

## Initial Action Plan

- simple perl code to permute game data, process user input and maintain scoring.
- perl code to access Google Voice Synthesis to generate audio files
- perl code to generate the images for a simple 8 cell matrix as png and HTML+SVG
- perl based terminal version of the game that exploits iterm2 utility for displaying images in the console.
- simple results storage backend
- extend to create UI html websocket implementation using Mojo
- look to create a unity3d interface for the game using internal logic
- refine logic to include variations to the game including variations on game data depth and mode etc. Consider introduction of parameter to control duplication and ways to control this based on user performance.
- extend unity3d to optionally integrate with websocket backend initially for results then extend to include remote logic for game data creation etc.
- create user registration and stats recording
- polish unity implementation and publish as IOS App on app store
- create alternate component implementations in other languages and platforms

