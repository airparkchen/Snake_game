# 使用官方的Python映像
FROM python:3.9

# 設置工作目錄
WORKDIR /app

# 複製當前目錄的內容到工作目錄
COPY . .

# 安裝所需的包
RUN pip install -r requirements.txt

# 暴露Django開發伺服器端口
EXPOSE 8000

# 運行Django伺服器
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
