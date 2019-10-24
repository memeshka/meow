
lgi = require 'lgi' -- подключение модуля lgi 

gtk = lgi.Gtk 
gtk.init() -- инициализация библиотеки gtk 

bld = gtk.Builder() -- создание нового экземпляра
bld:add_from_file('lab-01.glade') -- Загрузка описания интерфейса  

ui = bld.objects 

ui.wnd.title = 'lab-01' -- задание названия главного окна 
ui.wnd.on_destroy = gtk.main_quit -- выход изи цикла обработки событий при закрытиии окна
ui.wnd:show_all() -- отображение главного окна и его элементов 

gtk.main() --запуск цикла обработки событий интерфейса

