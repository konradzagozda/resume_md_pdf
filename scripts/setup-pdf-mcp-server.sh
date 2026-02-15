# for ubuntu

mkdir -p .codex/mcp
git clone https://github.com/Sohaib-2/pdf-mcp-server.git .codex/mcp/pdf-mcp-server
cd .codex/mcp/pdf-mcp-server

source .venv/bin/activate

pip install -r requirements.txt
sudo apt-get install pdftk qpdf
