# key_scroll-lock


# Toggle Scroll Lock LED

سكربت بسيط للتحكم في ضوء **Scroll Lock** على لوحة المفاتيح عبر `xbindkeys`.

![Shell Script](https://img.shields.io/badge/Shell_Script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

## 📜 الوصف
يسمح هذا السكربت بتبديل حالة ضوء **Scroll Lock** عبر الأوامر الطرفية، مع دعم ربطه بمفتاح اختصار باستخدام أداة `xbindkeys`.

## ✨ الميزات
- تبديل ضوء Scroll Lock بنقرة واحدة.
- دعم  لينكس EndeavourOS.
- تكامل سهل مع `xbindkeys`.
- سهل التخصيص (تغيير المفتاح المُعين).

## ⚙️ المتطلبات
- `xset` ( EndeavourOS مثبت افتراضيًا في توزيعه لينكس).
- `xbindkeys` (لتخصيص المفاتيح).
- **ملاحظة:** السكربت مصمم لي لينكس EndeavourOS فقط.


## 📥 التثبيت

- نزل `toggle_scroll_lock.sh` وانسخ الى مسار **Home** 

`لازم من امر هادا لي اعطاء صلاحيات لي السكربت `

```bash
chmod +x ~/toggle_scroll_lock.sh
```

- ربط السكربت مع `xbindkeys`

1. تأكد أن عندك `xbindkeys` مثبت:
```bash
sudo pacman -S xbindkeys
```


2. إنشاء ملف إعدادات `xbindkeys` (إذا لم يكن موجودًا):
```bash
xbindkeys --defaults > ~/.xbindkeysrc
```
3. تعديل ملف الإعدادات:
```bash
nano ~/.xbindkeysrc
```

4.أضف في آخر الملف السطرين التاليين لتعريف مفتاح معين لتشغيل السكربت.

مثلا لربطه مع زر `Scroll_Lock` نفسه:

```bash
# تبديل ضوء Scroll Lock
"~/toggle_scroll_lock.sh"
  Scroll_Lock

```










































