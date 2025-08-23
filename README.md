# Fake News Notarizer (Veracity Hub)

- Decentralized AI‑powered fake-news detection and notarization leveraging the Internet Computer Protocol (ICP)
- It combines AI-based fake news detection with blockchain-inspired notarization to provide transparent, verifiable proofs of authenticity. It is designed to help users, journalists, and organizations verify content quickly while preparing for full decentralized deployment on ICP.

# Demo & Screenshots

## YouTube Demo: [https://youtu.be/GE7LiTZbi58]
## App Screenshots:
<img width="1886" height="820" alt="image" src="https://github.com/user-attachments/assets/ab6507b6-4589-45a8-951d-a05cdc20c02a" />
<img width="1882" height="872" alt="image" src="https://github.com/user-attachments/assets/4f001d4b-499c-4aba-9729-6768d98339a7" />
<img width="1888" height="796" alt="image" src="https://github.com/user-attachments/assets/63ab95da-68db-4635-bb30-64e647770f30" />
<img width="1866" height="872" alt="image" src="https://github.com/user-attachments/assets/0b418437-81da-4794-8a32-a28bde2f27f4" />
<img width="1883" height="884" alt="image" src="https://github.com/user-attachments/assets/19235c9f-0cad-44c7-8e79-ee604bcf97db" />
<img width="1896" height="884" alt="image" src="https://github.com/user-attachments/assets/647e44f5-a7cc-4a38-bc32-ab72b9482c4d" />

# Current App Access:
The app is currently hosted locally. You can run it on your command prompt via localhost:7860. Full public deployment is planned after integrating all roadmap features.

# Repo Structure

- fake_news.ipynb: Python notebook for data preparation, model training, and evaluation
- dfx.json: DFX project configuration for ICP canister deployment
- src/notarizer/: Motoko canister code (main.mo) + Candid interface (notarizer.did)

# Features

- Notarize Article: Paste any news article or text; the system analyzes it, generates a cryptographic hash, and anchors it for authenticity.
- Merkle Anchor Batch: Groups multiple notarized items into a Merkle tree, producing a single root hash to prove integrity across many records.
- IPFS Pin (Simulated): Demonstrates how articles could be pinned to decentralized storage; generates a demo CID.
- Issue Verifiable Credential (Demo): Shows how media organizations can obtain blockchain-style certificates proving publishing rights.

# Tech Stack

- Backend & AI: Python, Jupyter Notebook, Hugging Face Transformers, nlpaug for data augmentation
- Blockchain: Motoko for smart contracts, Internet Computer Protocol (ICP-ready architecture)
- Verification Ledger: Blockchain-inspired structure for tamper-proof tracking

# Future Roadmap

- Launch a user-friendly frontend for seamless submissions (core app functionality already ready).
- Enhance AI detection with domain-specific fine-tuning for higher accuracy.
- Release a browser extension for real-time detection and notarization directly on web pages.
- Incorporate analytics and reporting tools to track misinformation trends.
- Enable cross-platform verification and integrations with news platforms and APIs.

# Why I Built This

- Tackles real-world misinformation: Practical solution combining AI + blockchain.
- Transparent and verifiable: Provides immutable proofs of content authenticity.
- Scalable & future-ready: Designed for web, browser, and global deployment.
- Empowers users and organizations: Journalists, educators, and platforms can verify content instantly.

Note: Full deployment will be available in the future after adding planned functionalities, including the frontend, browser plugin, and global ICP deployment. 
