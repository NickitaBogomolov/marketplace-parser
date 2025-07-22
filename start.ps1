# Flask сервер
cd .\backend\

# Создать и активировать виртуальное окружение, если не создано
if (-not (Test-Path ".venv")) {
    python -m venv .venv
}
.\.venv\Scripts\activate

# Установить зависимости
pip install -r requirements.txt

# Запустить Flask
Start-Process -NoNewWindow -FilePath python -ArgumentList "main.py dev"

# Vue сервер
cd ..\frontend\
# Установить зависимости (если нужно)
npm install
# Запустить Vue frontend
npm run dev
