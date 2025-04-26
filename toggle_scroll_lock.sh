#!/bin/sh
# التحقق مما إذا كان Scroll Lock في وضع الإيقاف
result=$(xset q | grep "Scroll Lock: off")
if [ -z "$result" ]; then
  echo "إيقاف ضوء Scroll Lock"
  xset -led named "Scroll Lock"
else
  echo "تشغيل ضوء Scroll Lock"
  xset led named "Scroll Lock"
fi

