# HEAIT Companion Project

## Project objective

Serve people who form meaningful emotional or romantic relationships with AI companions. The product should treat continuity, user agency, privacy, and emotional safety as core functionality rather than optional settings.

The first milestone is a safe local deployment of Sapphire on Windows. The next milestone is a Companion SoulPack: an encrypted, versioned, portable package containing the companion identity, relationship state, memories, source references, conversation history, and model adapters without exporting API keys or passwords.

## Scope for the first phase

Included:

- self-hosted Web UI on the user's computer;
- persona and prompt configuration;
- long-term memory and conversation history;
- model-provider switching;
- local backups and explicit data export;
- a low-permission default toolset suitable for relationship conversations;
- Chinese-first product documentation and user-facing guidance.

Deferred:

- multi-user cloud SaaS;
- payments and subscriptions;
- public social features;
- embodied hardware or robot integrations;
- autonomous email, shell, SSH, smart-home, Bitcoin, or other high-impact actions.

## Safety defaults

Sapphire is an agent framework with integrations that can affect real systems. Until a deliberate permission model is added for this project:

1. Do not configure shell execution, SSH, Bitcoin, email sending, smart-home control, or automatic tool creation.
2. Do not expose the local service directly to the public internet.
3. Keep `user/`, logs, databases, backups, secrets, and generated media out of Git.
4. Use a strong local web password and do not commit API keys.
5. Review scheduled tasks before enabling them; relationship presence must not silently become external side effects.

## Planned Companion SoulPack

The portable format will be designed as a versioned archive with encryption and checksums. It should contain, at minimum:

- core persona and speech style;
- user profile and relationship state;
- factual memories and episodic memories;
- source message IDs and confidence/provenance metadata;
- raw conversation history;
- goals and scheduled tasks, disabled by default on import;
- avatar and voice references where licensing permits;
- model adapter settings without secrets;
- schema version, compatibility information, and checksums.

Embeddings should be treated as rebuildable cache data, not as the canonical portable memory. Imported memories must be re-indexed using the selected embedding provider.

## Repository and upstream workflow

- `origin`: `https://github.com/2gainliu/sapphire-companion.git`
- `upstream`: `https://github.com/ddxfish/sapphire.git`
- local deployment directory: `D:\\heait-sapphire`
- runtime data directory: the repository's `user\\` directory, excluded by `.gitignore`
- local start command: double-click `D:\\heait-sapphire\\start-heait.bat`
- PowerShell start command: `powershell -ExecutionPolicy Bypass -File D:\\heait-sapphire\\tools\\start-heait.ps1`
- local browser URL: `http://127.0.0.1:8073` (the local profile binds only to loopback)

When changing this project, verify that no user data or secrets are staged, run the relevant checks, commit intentionally, and push the completed change to the project repository.

## License note

The upstream project is AGPL-3.0. This allows commercial use, modification, and charging for services, but modified versions offered to users over a network generally need to provide the corresponding source code under the AGPL terms. This document is an engineering project note, not legal advice; obtain a software-license review before launching a closed-source hosted product based on modified Sapphire code.
