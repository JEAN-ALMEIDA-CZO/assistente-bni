#!/usr/bin/env bash
# =============================================================================
#  Assistente BNI — Instalação automática
#  Desenvolvido por Jean Almeida
#  GitHub: https://github.com/JEAN-ALMEIDA-CZO/assistente-bni
# =============================================================================
set -euo pipefail

REPO_URL="${REPO_URL:-https://github.com/JEAN-ALMEIDA-CZO/assistente-bni.git}"
REPO_RAW="${REPO_RAW:-https://raw.githubusercontent.com/JEAN-ALMEIDA-CZO/assistente-bni/main}"
INSTALL_DIR="${1:-./assistente-bni}"
RED='\033[0;31m'
GREEN='\033[0;32m'
DIM='\033[2m'
NC='\033[0m'

echo ""
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "  Assistente BNI · instalação"
echo -e "  ${DIM}Desenvolvido por Jean Almeida${NC}"
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

download() {
  local file="$1"
  local dest="$2"
  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$REPO_RAW/$file" -o "$dest"
  elif command -v wget >/dev/null 2>&1; then
    wget -qO "$dest" "$REPO_RAW/$file"
  else
    echo "Erro: instale curl ou wget." >&2
    exit 1
  fi
}

if command -v git >/dev/null 2>&1; then
  echo "→ Clonando repositório..."
  if [ -d .git ]; then
    git pull --ff-only 2>/dev/null || true
  else
    # Se a pasta já tem arquivos sem git, só baixa os essenciais
    if [ ! -f SKILL.md ]; then
      TMP=$(mktemp -d)
      git clone --depth 1 "$REPO_URL" "$TMP/repo"
      cp "$TMP/repo/SKILL.md" .
      cp "$TMP/repo/base-de-dados.md" .
      cp -f "$TMP/repo/README.md" . 2>/dev/null || true
      rm -rf "$TMP"
    fi
  fi
else
  echo "→ Git não encontrado. Baixando arquivos essenciais..."
  download "SKILL.md" "SKILL.md"
  download "base-de-dados.md" "base-de-dados.md"
fi

# Garante presença dos arquivos principais
if [ ! -f SKILL.md ]; then
  download "SKILL.md" "SKILL.md"
fi
if [ ! -f base-de-dados.md ]; then
  download "base-de-dados.md" "base-de-dados.md"
fi

echo ""
echo -e "${GREEN}✓ Arquivos prontos em:${NC} $(pwd)"
echo ""
echo "Próximos passos:"
echo "  1. Preencha sua base: abra o gerador online"
echo "     https://jean-almeida-czo.github.io/assistente-bni/gerador.html"
echo "  2. Substitua base-de-dados.md pelo arquivo baixado do gerador"
echo "  3. Na sua IA, aponte a skill para esta pasta (SKILL.md + base-de-dados.md)"
echo "  4. Digite: bni"
echo ""
echo -e "${DIM}GitHub  https://github.com/JEAN-ALMEIDA-CZO${NC}"
echo -e "${DIM}Instagram  @jean.almeida.czo${NC}"
echo -e "${DIM}Portfólio  https://portifolio.athos.app.br${NC}"
echo ""
