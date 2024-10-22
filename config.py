from dotenv import load_dotenv
import os


load_dotenv()



telegram_bot_token = os.getenv("token", "")  # Ganti dengan token bot Anda
chat_id = os.getenv("chatid", "")  # Ganti dengan chat ID Anda
