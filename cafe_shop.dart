 import 'dart:io';

void main() {
  print('☕ مرحباً بك في كافيه');
  print('📋 قائمة المشروبات:');
  print('1️⃣ قهوة - \$4.5');
  print('2️⃣ شاي - \$3.0');
  print('3️⃣ عصير - \$5.0');

  stdout.write('\n📥 اختر رقم المشروب: ');
  String? choice = stdin.readLineSync();

  Map<String, double> menu = {
    '1': 4.5,
    '2': 3.0,
    '3': 5.0,
  };

  Map<String, String> names = {
    '1': 'قهوة',
    '2': 'شاي',
    '3': 'عصير',
  };

  if (!menu.containsKey(choice)) {
    print('❌ اختيار غير صالح');
    return;
  }

  stdout.write('📦 أدخل الكمية المطلوبة: ');
  int quantity = int.parse(stdin.readLineSync()!);

  double price = menu[choice]!;
  String name = names[choice]!;

  double total = price * quantity;

  print('\n🧾 الفاتورة:');
  print('🍹 المشروب: $name');
  print('🔢 الكمية: $quantity');
  print('💰 السعر الإجمالي: \$${total.toStringAsFixed(2)}');
  print('\n🎉 شكراً لزيارتك كافيه !');
}