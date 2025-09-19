# نستخدم صورة Dart الرسمية
FROM dart:stable

# نحدد مجلد العمل داخل الحاوية
WORKDIR /app

# ننسخ كل ملفات المشروع إلى داخل الحاوية
COPY . .

# نشغل التطبيق (تأكدي من اسم الملف)
CMD ["dart", "run", "cafe_shop.dart"]
