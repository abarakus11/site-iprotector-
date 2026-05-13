# site-iprotector-

Landing page estática da **IPROTECTOR** — proteção privada sob demanda. Um único ficheiro HTML com CSS e JavaScript incorporados.

## Ver no browser (ficheiro local)

Abra **`index.html`** diretamente no navegador (duplo clique).

## Servidor local (vídeo do hero sem erro 153 do YouTube)

| Ficheiro | Descrição |
|----------|-----------|
| `servir-iprotector.ps1` | Inicia `python -m http.server` na porta **8844** e abre o site |
| `servir-iprotector.bat` | Chama o script PowerShell |
| `LEIA-ME-IPROTECTOR-SERVIDOR.txt` | Instruções detalhadas |

Depois de iniciar o servidor, use **http://127.0.0.1:8844/** (a raiz mostra `index.html`).

## GitHub Pages

1. No repositório: **Settings → Pages**  
2. **Source:** Deploy from a branch → **Branch:** `main` → pasta **`/ (root)`** → Save  
3. O site fica em: **https://abarakus11.github.io/site-iprotector-/**

O ficheiro **`index.html`** na raiz é servido automaticamente na URL acima. O ficheiro **`.nojekyll`** desativa o Jekyll do GitHub para evitar surpresas com ficheiros estáticos.

## Desenvolvimento

```bash
git clone https://github.com/abarakus11/site-iprotector-.git
cd site-iprotector-
# editar index.html, depois:
git add -A && git commit -m "mensagem" && git push
```
