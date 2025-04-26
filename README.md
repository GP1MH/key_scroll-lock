

---

# key_scroll-lock

# 🔄 Toggle Scroll Lock LED

سكربت بسيط للتحكم في ضوء **Scroll Lock** على لوحة المفاتيح عبر `xbindkeys`.

![Shell Script](https://img.shields.io/badge/Shell_Script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

## 📜 الوصف
يسمح هذا السكربت بتبديل حالة ضوء **Scroll Lock** عبر الأوامر الطرفية، مع دعم ربطه بمفتاح اختصار باستخدام أداة `xbindkeys`.

## ✨ الميزات
- 🔘 تبديل ضوء Scroll Lock بنقرة واحدة.
- 🐧 دعم لينكس EndeavourOS.
- 🔗 تكامل سهل مع `xbindkeys`.
- ⚙️ سهل التخصيص (تغيير المفتاح المُعين).

## ⚙️ المتطلبات
- 🛠️ `xset` (مثبت افتراضيًا في EndeavourOS).
- 🔑 `xbindkeys` (لتخصيص المفاتيح).
- ⚠️ **ملاحظة:** السكربت مصمم فقط لـ لينكس EndeavourOS.

## 📥 التثبيت

- 📂 نزل `toggle_scroll_lock.sh` وانسخه إلى مسار **Home**.

🛡️ لازم تعطي صلاحيات تنفيذ للسكربت:

```bash
chmod +x ~/toggle_scroll_lock.sh
```

- 🔗 ربط السكربت مع `xbindkeys`

### 1. تأكد من تثبيت `xbindkeys`:
```bash
sudo pacman -S xbindkeys
```

### 2. إنشاء ملف إعدادات `xbindkeys` (لو مش موجود):
```bash
xbindkeys --defaults > ~/.xbindkeysrc
```

### 3. تعديل ملف الإعدادات:
```bash
nano ~/.xbindkeysrc
```

### 4. أضف في آخر الملف السطرين التاليين لتعريف المفتاح:

🔘 لربطه مع زر `Scroll_Lock` نفسه:

```bash
# تبديل ضوء Scroll Lock
"~/toggle_scroll_lock.sh"
  Scroll_Lock
```
💾 للحفظ اضغط `Ctrl + o` ➡️ ثم `Ctrl + x` للخروج.

---

- 🚀 تشغيل `xbindkeys`

1. ابدأ `xbindkeys` الآن:

```bash
xbindkeys
```

2. لجعله يعمل تلقائيًا مع بداية النظام:

```bash
echo "xbindkeys &" >> ~/.xprofile
```

## ⚡ ملاحظة مهمة
- تأكد أن الأمر `xset` يعمل بشكل صحيح عندك.
- لو تستخدم `Wayland` بدل `X11`، هذا السكربت لن يعمل لأن `xset` لا يدعمه. 🖥️

---

### 📞 للدعم أو الاستفسار:

- يوزر ديسكورد: `gp1mh`
- أو عبر الرابط:  
```bash
<https://discord.com/users/1092903941626404955>
```

---
