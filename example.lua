local SOURCE_URL = "https://raw.githubusercontent.com/Xyraniz/VVind-UI/refs/heads/main/src.lua"

local loaded, library = pcall(function()
	local source = game:HttpGet(SOURCE_URL)
	local chunk, compileError = loadstring(source)
	if not chunk then
		error(compileError)
	end
	return chunk()
end)

if not loaded then
	warn(("[VVind-UI] Could not load src.lua: %s"):format(tostring(library)))
	return
end

if type(library) ~= "table" then
	warn("[VVind-UI] src.lua did not return the library table")
	return
end

local VVindUI = library
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

VVindUI:RegisterLocale("es", {
	["VVind-UI"] = "VVind-UI",
	["Interface and component showcase"] = "Interfaz y catálogo de componentes",
	["Overview"] = "Resumen",
	["Controls"] = "Controles",
	["Components"] = "Componentes",
	["Activity"] = "Actividad",
	["Configuration"] = "Configuración",
	["Languages"] = "Idiomas",
	["Window"] = "Ventana",
	["A complete interface with local settings, translations, widgets and actions."] = "Una interfaz completa con ajustes locales, traducciones, componentes y acciones.",
	["Ready"] = "Lista",
	["Open or close the interface"] = "Abrir o cerrar la interfaz",
	["Drag, resize, or use Right Shift to show and hide the window."] = "Arrastra, cambia el tamaño o pulsa Right Shift para mostrar y ocultar la ventana.",
	["Runtime snapshot"] = "Estado de ejecución",
	["Current library and configuration details."] = "Datos de la librería y la configuración actuales.",
	["Language"] = "Idioma",
	["Folder"] = "Carpeta",
	["Config directory"] = "Directorio de configuración",
	["Library source"] = "Fuente de la librería",
	["Inputs"] = "Entradas",
	["Actions"] = "Acciones",
	["Appearance and behavior"] = "Apariencia y comportamiento",
	["Change these values and watch the callbacks update the local log."] = "Cambia estos valores y mira cómo los callbacks actualizan el registro local.",
	["Enable notifications"] = "Activar notificaciones",
	["Notification preference stored in the config."] = "Preferencia de notificaciones guardada en la configuración.",
	["Interface scale"] = "Escala de interfaz",
	["Selected quality"] = "Calidad seleccionada",
	["Low"] = "Baja",
	["Balanced"] = "Equilibrada",
	["High"] = "Alta",
	["Ultra"] = "Ultra",
	["Display name"] = "Nombre visible",
	["Write a name for this session"] = "Escribe un nombre para esta sesión",
	["Accent color"] = "Color de acento",
	["Change the shortcut"] = "Cambiar el atajo",
	["Visible sections"] = "Secciones visibles",
	["Select multiple sections"] = "Selecciona varias secciones",
	["Apply a preset or print all current values."] = "Aplica un perfil o imprime todos los valores actuales.",
	["Apply balanced preset"] = "Aplicar perfil equilibrado",
	["Print current values"] = "Imprimir valores actuales",
	["Layout and visual components"] = "Diseño y componentes visuales",
	["A player card using your local Roblox profile."] = "Una tarjeta de jugador con tu perfil local de Roblox.",
	["Open profile card"] = "Abrir tarjeta del perfil",
	["Highlighted local action"] = "Acción local destacada",
	["A gradient card with a callback and no remote service."] = "Una tarjeta con degradado y callback local, sin servicios remotos.",
	["Run highlighted action"] = "Ejecutar acción destacada",
	["Local preset"] = "Perfil local",
	["Equip"] = "Equipar",
	["Rate the interface"] = "Califica la interfaz",
	["Leave a note"] = "Deja un comentario",
	["Send rating"] = "Enviar calificación",
	["Inputs, cards, data widgets and local panels"] = "Entradas, tarjetas, componentes de datos y paneles locales",
	["Configuration and locale controls are grouped by purpose"] = "Los controles de configuración e idioma están agrupados por función",
	["Activity widgets use a local in-memory provider"] = "Los componentes de actividad usan un proveedor local en memoria",
	["Local component catalog"] = "Catálogo local de componentes",
	["Search components..."] = "Buscar componentes...",
	["Loading components..."] = "Cargando componentes...",
	["No components found"] = "No se encontraron componentes",
	["Could not load components"] = "No se pudieron cargar los componentes",
	["Window basics"] = "Elementos de ventana",
	["Controls and input types"] = "Controles y tipos de entrada",
	["Local configurations"] = "Configuraciones locales",
	["Language catalog"] = "Catálogo de idiomas",
	["Interface activity"] = "Actividad de interfaz",
	["Activity log"] = "Registro de actividad",
	["Clear log"] = "Limpiar registro",
	["Refresh local catalog"] = "Actualizar catálogo local",
	["Search for local items"] = "Buscar elementos locales",
	["Sort catalog newest"] = "Ordenar catálogo por novedades",
	["Restore inventory rows"] = "Restaurar filas del inventario",
	["Updated component rows"] = "Filas de componentes actualizadas",
	["Component inventory"] = "Inventario de componentes",
	["Click a header to sort the rows."] = "Pulsa un encabezado para ordenar las filas.",
	["Component"] = "Componente",
	["Toggle, slider, dropdown"] = "Interruptor, deslizador, lista",
	["Textbox, color, keybind"] = "Texto, color, atajo",
	["Cards, rating, loadout"] = "Tarjetas, valoración, perfil",
	["Info grids"] = "Grillas de datos",
	["Console, table, card grid"] = "Consola, tabla, catálogo",
	["English, español, русский"] = "Inglés, español, ruso",
	["Group"] = "Grupo",
	["State"] = "Estado",
	["Available"] = "Disponible",
	["Control"] = "Control",
	["Data"] = "Datos",
	["Locale"] = "Idioma",
	["Session information"] = "Información de sesión",
	["Local runtime information. No presence is sent to Cloud."] = "Información local de la sesión. No se envía presencia a Cloud.",
	["Tabs, panels, layout and navigation."] = "Pestañas, paneles, diseño y navegación.",
	["Toggle, slider, lists, text, color and keys."] = "Interruptor, deslizador, listas, texto, color y teclas.",
	["Named files, JSON and temporary snapshots."] = "Archivos con nombre, JSON y estados temporales.",
	["English, Spanish and Russian interface strings."] = "Textos de interfaz en inglés, español y ruso.",
	["Named configuration"] = "Configuración con nombre",
	["A numeric value saved with the local configuration."] = "Un valor numérico que se guarda en la configuración local.",
	["Multi-select dropdown with saved values."] = "Lista de selección múltiple con valores guardados.",
	["Text input that is included in the current configuration."] = "Campo de texto incluido en la configuración actual.",
	["Updates the controls through their public Set methods."] = "Actualiza los controles mediante sus métodos Set.",
	["Reads every flagged control through the config API."] = "Lee cada control con flag mediante la API de configuración.",
	["The folder value is used for automatic and named settings."] = "El valor de carpeta se usa para los ajustes automáticos y las configuraciones con nombre.",
	["Save the current flags as a named local file."] = "Guarda los flags actuales en un archivo local con nombre.",
	["Load the named file and apply values without firing callbacks."] = "Carga el archivo con nombre y aplica los valores sin ejecutar callbacks.",
	["Save local configuration"] = "Guardar configuración local",
	["Load local configuration"] = "Cargar configuración local",
	["List saved configurations"] = "Listar configuraciones guardadas",
	["Preview current configuration"] = "Previsualizar configuración actual",
	["Round-trip current values through JSON"] = "Recargar los valores actuales desde JSON",
	["Capture in-memory snapshot"] = "Capturar estado en memoria",
	["Restore in-memory snapshot"] = "Restaurar estado en memoria",
	["Saved configuration."] = "Configuración guardada.",
	["Loaded configuration."] = "Configuración cargada.",
	["Configuration action failed: {error}"] = "La acción de configuración falló: {error}",
	["No saved configurations were found."] = "No se encontraron configuraciones guardadas.",
	["Found {count} saved configurations."] = "Se encontraron {count} configuraciones guardadas.",
	["Configuration is valid with {count} pending changes."] = "La configuración es válida y tiene {count} cambios pendientes.",
	["Configuration is invalid: {error}"] = "La configuración no es válida: {error}",
	["Values were applied from the current JSON snapshot."] = "Se aplicaron los valores desde el estado JSON actual.",
	["Snapshot captured."] = "Estado capturado.",
	["Snapshot restored."] = "Estado restaurado.",
	["Capture a snapshot first."] = "Primero captura un estado.",
	["Choose a language to update tracked interface text."] = "Elige un idioma para actualizar los textos registrados de la interfaz.",
	["English"] = "Inglés",
	["Spanish"] = "Español",
	["Russian"] = "Ruso",
	["Validate Russian locale"] = "Validar locale ruso",
	["Active language: {language}"] = "Idioma activo: {language}",
	["Russian locale is complete."] = "El locale ruso está completo.",
	["Russian locale has {count} missing or invalid entries."] = "Al locale ruso le faltan {count} entradas o tiene entradas no válidas.",
	["Disconnect language listener"] = "Desconectar listener de idioma",
	["Language listener disconnected."] = "Listener de idioma desconectado.",
	["Locale changed to {language}."] = "El idioma cambió a {language}.",
	["External label localized by the library"] = "Etiqueta externa localizada por la librería",
	["Local messages"] = "Mensajes locales",
	["Type a message..."] = "Escribe un mensaje...",
	["Message received: {message}"] = "Mensaje recibido: {message}",
	["Chat history cleared."] = "Historial del chat limpiado.",
	["Generation stopped."] = "Generación detenida.",
	["Recreated reply for: {message}"] = "Respuesta recreada para: {message}",
	["Chat"] = "Chat",
	["Open panel"] = "Abrir panel",
	["Local panel"] = "Panel local",
	["Open overview"] = "Abrir resumen",
	["Interface loaded."] = "Interfaz cargada.",
	["Search"] = "Buscar",
	["Find"] = "Buscar",
	["Search controls..."] = "Buscar controles...",
	["Type to search controls"] = "Escribe para buscar controles",
	["No controls found"] = "No se encontraron controles",
	["Search options..."] = "Buscar opciones...",
	["No options found"] = "No hay opciones",
	["Notice"] = "Aviso",
	["Confirm"] = "Confirmar",
	["Cancel"] = "Cancelar",
	["OK"] = "Aceptar",
	["Enter a value..."] = "Escribe un valor...",
	["Save"] = "Guardar",
	["Load"] = "Cargar",
	["Delete"] = "Eliminar",
	["Configs"] = "Configuraciones",
	["Settings"] = "Ajustes",
	["Rename"] = "Renombrar",
	["Create"] = "Crear",
	["Close"] = "Cerrar",
	["Name"] = "Nombre",
	["Description"] = "Descripción",
	["Search local configs..."] = "Buscar configuraciones locales...",
	["No local configs saved yet."] = "Todavía no hay configuraciones locales.",
	["Save Current Settings Locally"] = "Guardar ajustes actuales localmente",
	["FPS"] = "FPS",
	["Ping"] = "Ping",
	["Executor"] = "Executor",
	["Server Region"] = "Región del servidor",
	["Time of Day"] = "Hora",
})

VVindUI:RegisterLocale("ru", {
	["VVind-UI"] = "VVind-UI",
	["Interface and component showcase"] = "Интерфейс и каталог компонентов",
	["Overview"] = "Обзор",
	["Controls"] = "Элементы управления",
	["Components"] = "Компоненты",
	["Activity"] = "Активность",
	["Configuration"] = "Конфигурация",
	["Languages"] = "Языки",
	["Window"] = "Окно",
	["A complete interface with local settings, translations, widgets and actions."] = "Интерфейс с локальными настройками, переводами, компонентами и действиями.",
	["Ready"] = "Готово",
	["Open or close the interface"] = "Открыть или закрыть интерфейс",
	["Drag, resize, or use Right Shift to show and hide the window."] = "Перемещайте окно, меняйте его размер или нажмите Right Shift, чтобы показать или скрыть его.",
	["Runtime snapshot"] = "Состояние выполнения",
	["Current library and configuration details."] = "Данные библиотеки и текущей конфигурации.",
	["Language"] = "Язык",
	["Folder"] = "Папка",
	["Config directory"] = "Папка конфигураций",
	["Library source"] = "Источник библиотеки",
	["Inputs"] = "Ввод",
	["Actions"] = "Действия",
	["Appearance and behavior"] = "Внешний вид и поведение",
	["Change these values and watch the callbacks update the local log."] = "Изменяйте значения и следите за обновлением локального журнала.",
	["Enable notifications"] = "Включить уведомления",
	["Notification preference stored in the config."] = "Настройка уведомлений сохраняется в конфигурации.",
	["Interface scale"] = "Масштаб интерфейса",
	["Selected quality"] = "Выбранное качество",
	["Low"] = "Низкое",
	["Balanced"] = "Сбалансированное",
	["High"] = "Высокое",
	["Ultra"] = "Ультра",
	["Display name"] = "Отображаемое имя",
	["Write a name for this session"] = "Введите имя для этой сессии",
	["Accent color"] = "Цвет акцента",
	["Change the shortcut"] = "Изменить сочетание клавиш",
	["Visible sections"] = "Видимые разделы",
	["Select multiple sections"] = "Выберите несколько разделов",
	["Apply a preset or print all current values."] = "Примените профиль или выведите текущие значения.",
	["Apply balanced preset"] = "Применить сбалансированный профиль",
	["Print current values"] = "Вывести текущие значения",
	["Layout and visual components"] = "Макет и визуальные компоненты",
	["A player card using your local Roblox profile."] = "Карточка игрока с вашим профилем Roblox.",
	["Open profile card"] = "Открыть карточку профиля",
	["Highlighted local action"] = "Выделенное локальное действие",
	["A gradient card with a callback and no remote service."] = "Карточка с градиентом и локальным callback без удалённого сервиса.",
	["Run highlighted action"] = "Выполнить выделенное действие",
	["Local preset"] = "Локальный профиль",
	["Equip"] = "Выбрать",
	["Rate the interface"] = "Оценить интерфейс",
	["Leave a note"] = "Оставить комментарий",
	["Send rating"] = "Отправить оценку",
	["Inputs, cards, data widgets and local panels"] = "Поля ввода, карточки, виджеты данных и локальные панели",
	["Configuration and locale controls are grouped by purpose"] = "Настройки конфигурации и языка сгруппированы по назначению",
	["Activity widgets use a local in-memory provider"] = "Виджеты активности используют локальные данные в памяти",
	["Local component catalog"] = "Локальный каталог компонентов",
	["Search components..."] = "Поиск компонентов...",
	["Loading components..."] = "Загрузка компонентов...",
	["No components found"] = "Компоненты не найдены",
	["Could not load components"] = "Не удалось загрузить компоненты",
	["Window basics"] = "Основы окна",
	["Controls and input types"] = "Элементы управления и ввод",
	["Local configurations"] = "Локальные конфигурации",
	["Language catalog"] = "Каталог языков",
	["Interface activity"] = "Активность интерфейса",
	["Activity log"] = "Журнал активности",
	["Clear log"] = "Очистить журнал",
	["Refresh local catalog"] = "Обновить локальный каталог",
	["Search for local items"] = "Найти локальные элементы",
	["Sort catalog newest"] = "Сначала новые",
	["Restore inventory rows"] = "Восстановить строки списка",
	["Updated component rows"] = "Строки компонентов обновлены",
	["Component inventory"] = "Список компонентов",
	["Click a header to sort the rows."] = "Нажмите заголовок, чтобы отсортировать строки.",
	["Component"] = "Компонент",
	["Toggle, slider, dropdown"] = "Переключатель, ползунок, список",
	["Textbox, color, keybind"] = "Текст, цвет, клавиша",
	["Cards, rating, loadout"] = "Карточки, оценка, набор",
	["Info grids"] = "Сетки данных",
	["Console, table, card grid"] = "Консоль, таблица, карточки",
	["English, español, русский"] = "Английский, испанский, русский",
	["Group"] = "Группа",
	["State"] = "Состояние",
	["Available"] = "Доступно",
	["Control"] = "Управление",
	["Data"] = "Данные",
	["Locale"] = "Локаль",
	["Session information"] = "Информация о сеансе",
	["Local runtime information. No presence is sent to Cloud."] = "Локальная информация о сеансе. Данные о присутствии в Cloud не отправляются.",
	["Tabs, panels, layout and navigation."] = "Вкладки, панели, макет и навигация.",
	["Toggle, slider, lists, text, color and keys."] = "Переключатель, ползунок, списки, текст, цвет и клавиши.",
	["Named files, JSON and temporary snapshots."] = "Именованные файлы, JSON и временные снимки.",
	["English, Spanish and Russian interface strings."] = "Тексты интерфейса на английском, испанском и русском.",
	["Named configuration"] = "Именованная конфигурация",
	["A numeric value saved with the local configuration."] = "Число, сохранённое в локальной конфигурации.",
	["Multi-select dropdown with saved values."] = "Список с множественным выбором и сохранёнными значениями.",
	["Text input that is included in the current configuration."] = "Текстовое поле включено в текущую конфигурацию.",
	["Updates the controls through their public Set methods."] = "Обновляет элементы через их методы Set.",
	["Reads every flagged control through the config API."] = "Читает все элементы с флагами через API конфигурации.",
	["The folder value is used for automatic and named settings."] = "Эта папка используется для автоматических и именованных настроек.",
	["Save the current flags as a named local file."] = "Сохраняет текущие флаги в локальный файл с именем.",
	["Load the named file and apply values without firing callbacks."] = "Загружает файл и применяет значения без вызова callback-функций.",
	["Save local configuration"] = "Сохранить локальную конфигурацию",
	["Load local configuration"] = "Загрузить локальную конфигурацию",
	["List saved configurations"] = "Показать сохранённые конфигурации",
	["Preview current configuration"] = "Просмотреть текущую конфигурацию",
	["Round-trip current values through JSON"] = "Повторно загрузить текущие значения из JSON",
	["Capture in-memory snapshot"] = "Сохранить состояние в памяти",
	["Restore in-memory snapshot"] = "Восстановить состояние из памяти",
	["Saved configuration."] = "Конфигурация сохранена.",
	["Loaded configuration."] = "Конфигурация загружена.",
	["Configuration action failed: {error}"] = "Ошибка конфигурации: {error}",
	["No saved configurations were found."] = "Сохранённые конфигурации не найдены.",
	["Found {count} saved configurations."] = "Найдено конфигураций: {count}.",
	["Configuration is valid with {count} pending changes."] = "Конфигурация корректна, изменений: {count}.",
	["Configuration is invalid: {error}"] = "Некорректная конфигурация: {error}",
	["Values were applied from the current JSON snapshot."] = "Значения применены из текущего состояния JSON.",
	["Snapshot captured."] = "Состояние сохранено.",
	["Snapshot restored."] = "Состояние восстановлено.",
	["Capture a snapshot first."] = "Сначала сохраните состояние.",
	["Choose a language to update tracked interface text."] = "Выберите язык интерфейса.",
	["English"] = "Английский",
	["Spanish"] = "Испанский",
	["Russian"] = "Русский",
	["Validate Russian locale"] = "Проверить русскую локаль",
	["Active language: {language}"] = "Активный язык: {language}",
	["Russian locale is complete."] = "Русская локаль заполнена.",
	["Russian locale has {count} missing or invalid entries."] = "В русской локали отсутствуют или неверны записи: {count}.",
	["Disconnect language listener"] = "Отключить обработчик языка",
	["Language listener disconnected."] = "Обработчик языка отключён.",
	["Locale changed to {language}."] = "Язык изменён: {language}.",
	["External label localized by the library"] = "Внешняя подпись локализована библиотекой",
	["Local messages"] = "Локальные сообщения",
	["Type a message..."] = "Введите сообщение...",
	["Message received: {message}"] = "Сообщение получено: {message}",
	["Chat history cleared."] = "История чата очищена.",
	["Generation stopped."] = "Генерация остановлена.",
	["Recreated reply for: {message}"] = "Ответ создан заново: {message}",
	["Chat"] = "Чат",
	["Open panel"] = "Открыть панель",
	["Local panel"] = "Локальная панель",
	["Open overview"] = "Открыть обзор",
	["Interface loaded."] = "Интерфейс загружен.",
	["Search"] = "Поиск",
	["Find"] = "Найти",
	["Search controls..."] = "Поиск элементов управления...",
	["Type to search controls"] = "Введите запрос для поиска",
	["No controls found"] = "Элементы управления не найдены",
	["Search options..."] = "Поиск параметров...",
	["No options found"] = "Параметры не найдены",
	["Notice"] = "Уведомление",
	["Confirm"] = "Подтвердить",
	["Cancel"] = "Отмена",
	["OK"] = "ОК",
	["Enter a value..."] = "Введите значение...",
	["Save"] = "Сохранить",
	["Load"] = "Загрузить",
	["Delete"] = "Удалить",
	["Configs"] = "Конфигурации",
	["Settings"] = "Настройки",
	["Rename"] = "Переименовать",
	["Create"] = "Создать",
	["Close"] = "Закрыть",
	["Name"] = "Название",
	["Description"] = "Описание",
	["Search local configs..."] = "Поиск локальных конфигураций...",
	["No local configs saved yet."] = "Локальные конфигурации ещё не сохранены.",
	["Save Current Settings Locally"] = "Сохранить текущие настройки локально",
	["FPS"] = "FPS",
	["Ping"] = "Пинг",
	["Executor"] = "Исполнитель",
	["Server Region"] = "Регион сервера",
	["Time of Day"] = "Время",
})

VVindUI:SetLanguage("es")

local function translate(key, variables)
	return VVindUI:Translate(key, variables)
end

local function notify(message, kind, variables)
	VVindUI:Notify({
		Title = translate("VVind-UI"),
		Text = translate(message, variables),
		Type = kind or "info",
		Duration = 4,
	})
end

local Window = VVindUI:CreateWindow({
	Title = "VVind-UI",
	Subtitle = "Interface and component showcase",
	Icon = "Lucide:panels-top-left",
	Size = UDim2.fromOffset(760, 570),
	MinSize = Vector2.new(560, 420),
	Draggable = true,
	Resizable = true,
	UseBlur = true,
	DefaultTab = "Overview",
	ToggleKeybind = Enum.KeyCode.RightShift,
	Folder = "VVind-UI",
})

local Overview = Window:AddTab({
	Name = "Overview",
	Icon = "Lucide:house",
})

Overview:AddSection({ Text = "Window", Icon = "Lucide:panels-top-left" })
Overview:AddLabel("Ready")
Overview:AddParagraph({
	Title = "VVind-UI",
	Icon = "Lucide:info",
	Text = "A complete interface with local settings, translations, widgets and actions.",
})
Overview:AddDivider()
Overview:AddLineText("Layout and visual components")
Overview:AddButton({
	Text = "Open or close the interface",
	Description = "Drag, resize, or use Right Shift to show and hide the window.",
	Icon = "Lucide:panel-top",
	Callback = function()
		Window:Toggle()
	end,
})
Overview:AddCard({
	Title = LocalPlayer.DisplayName,
	Description = "A player card using your local Roblox profile.",
	UserId = LocalPlayer.UserId,
	Callback = function()
		notify("Open profile card", "info")
	end,
})
local RuntimeGrid = Overview:AddInfoGrid({
	Title = "Runtime snapshot",
	Description = "Current library and configuration details.",
	Columns = 2,
	Items = {
		{ Label = "Language", Value = VVindUI:GetLanguage() },
		{ Label = "Folder", Value = "VVind-UI" },
		{ Label = "Config directory", Value = "Vvind-UI/Settings/VVind-UI" },
		{ Label = "Library source", Value = "src.lua" },
	},
})

Window:AddTabLine()

local Components = Window:AddTab({
	Name = "Components",
	Icon = "Lucide:blocks",
})

Components:AddSection({ Text = "Layout and visual components", Icon = "Lucide:layout-dashboard" })
Components:AddGradientCard({
	Title = "Highlighted local action",
	Description = "A gradient card with a callback and no remote service.",
	ColorA = Color3.fromRGB(124, 92, 255),
	ColorB = Color3.fromRGB(35, 180, 150),
	Callback = function()
		notify("Run highlighted action", "success")
	end,
})
Components:AddLoadoutGroup({
	Title = "Local preset",
	Color = Color3.fromRGB(124, 92, 255),
	Icons = { "Lucide:mouse-pointer-2", "Lucide:palette", "Lucide:keyboard" },
	ButtonText = "Equip",
	Callback = function()
		notify("Apply balanced preset", "success")
	end,
})
Components:AddChangelogEntry({
	Version = tostring(VVindUI.Version),
	Date = "October 20, 2026",
	Changes = {
		{ Type = "Added", Text = "Inputs, cards, data widgets and local panels" },
		{ Type = "Changed", Text = "Configuration and locale controls are grouped by purpose" },
		{ Type = "Fixed", Text = "Activity widgets use a local in-memory provider" },
	},
})
Components:AddRating({
	Title = "Rate the interface",
	Default = 4,
	MaxStars = 5,
	StarColor = Color3.fromRGB(255, 200, 60),
	Placeholder = "Leave a note",
	ButtonIcon = "Lucide:send",
	ClearOnSubmit = true,
	WebhookUrl = "",
	Callback = function(stars, message)
		print(("[VVind-UI] Rating: %s stars, note: %s"):format(tostring(stars), tostring(message)))
	end,
})

local Inventory = Components:AddTable({
	Title = "Component inventory",
	Description = "Click a header to sort the rows.",
	Height = 190,
	RowHeight = 34,
	Sortable = true,
	Striped = true,
	Columns = {
		{ Key = "component", Label = "Component", Weight = 1.5, Emphasized = true },
		{ Key = "group", Label = "Group", Weight = 1 },
		{ Key = "state", Label = "State", Weight = 0.8, Align = "Right" },
	},
	Rows = {
		{ component = "Toggle, slider, dropdown", group = "Control", state = "Available" },
		{ component = "Textbox, color, keybind", group = "Control", state = "Available" },
		{ component = "Cards, rating, loadout", group = "Window", state = "Available" },
		{ component = "Info grids", group = "Data", state = "Available" },
		{ component = "Console, table, card grid", group = "Data", state = "Available" },
		{ component = "English, español, русский", group = "Locale", state = "Available" },
	},
})

local Console = Components:AddConsole({
	Title = "Activity log",
	Height = 180,
	MaxLogs = 100,
	AutoCapture = false,
})
Console:Log("VVind-UI interface ready")
Components:AddButton({
	Text = "Clear log",
	Icon = "Lucide:trash-2",
	Callback = function()
		Console:Clear()
	end,
})

local CardGrid = Components:AddCardGrid({
	Title = "Local component catalog",
	Height = 250,
	Search = true,
	SearchPlaceholder = "Search components...",
	Sorts = { "Popular", "Newest" },
	DefaultSort = "Popular",
	PageSize = 6,
	Columns = 2,
	CardMinWidth = 150,
	CardHeight = 96,
	AutoCardHeight = false,
	Fetch = function()
		return {
			{
				Title = "Window basics",
				Description = "Tabs, panels, layout and navigation.",
				Icon = "Lucide:panels-top-left",
				Byline = "VVind-UI",
				Stats = { { Icon = "layers", Text = "4" } },
				Callback = function()
					Window:SelectTab("Overview")
				end,
			},
			{
				Title = "Controls and input types",
				Description = "Toggle, slider, lists, text, color and keys.",
				Icon = "Lucide:sliders-horizontal",
				Byline = "VVind-UI",
				Stats = { { Icon = "pointer", Text = "7" } },
				Callback = function()
					Window:SelectTab("Controls")
				end,
			},
			{
				Title = "Local configurations",
				Description = "Named files, JSON and temporary snapshots.",
				Icon = "Lucide:folder-cog",
				Byline = "VVind-UI",
				Stats = { { Icon = "file-cog", Text = "4" } },
				Callback = function()
					Window:SelectTab("Configuration")
				end,
			},
			{
				Title = "Language catalog",
				Description = "English, Spanish and Russian interface strings.",
				Icon = "Lucide:languages",
				Byline = "VVind-UI",
				Stats = { { Icon = "languages", Text = "3" } },
				Callback = function()
					Window:SelectTab("Languages")
				end,
			},
		}
	end,
})

Components:AddButton({
	Text = "Refresh local catalog",
	Icon = "Lucide:refresh-cw",
	Callback = function()
		CardGrid:Refresh()
		Console:Log("Local catalog refreshed")
	end,
})
Components:AddButton({
	Text = "Search for local items",
	Icon = "Lucide:search",
	Callback = function()
		CardGrid:SetQuery("local")
	end,
})
Components:AddButton({
	Text = "Sort catalog newest",
	Icon = "Lucide:arrow-down-wide-narrow",
	Callback = function()
		CardGrid:SetSort("Newest")
	end,
})
Components:AddButton({
	Text = "Restore inventory rows",
	Icon = "Lucide:table",
	Callback = function()
		Inventory:SetRows({
			{ component = "Toggle, slider, dropdown", group = "Control", state = "Available" },
			{ component = "Textbox, color, keybind", group = "Control", state = "Available" },
			{ component = "Cards, rating, loadout", group = "Window", state = "Available" },
			{ component = "Info grids", group = "Data", state = "Available" },
			{ component = "Console, table, card grid", group = "Data", state = "Available" },
			{ component = "English, español, русский", group = "Locale", state = "Available" },
			{ component = "Updated component rows", group = "Table", state = "Available" },
		})
		Console:Log("Inventory rows updated")
	end,
})

local Controls = Window:AddTab({
	Name = "Controls",
	Icon = "Lucide:sliders-horizontal",
})

local Inputs = Controls:AddSubTab({ Name = "Inputs", Icon = "Lucide:form-input" })
local Actions = Controls:AddSubTab({ Name = "Actions", Icon = "Lucide:play" })
Inputs:AddSection({ Text = "Appearance and behavior", Icon = "Lucide:settings-2" })
Inputs:AddParagraph({
	Title = "Controls",
	Text = "Change these values and watch the callbacks update the local log.",
})

local enabledControl = Inputs:AddToggle({
	Text = "Enable notifications",
	Description = "Notification preference stored in the config.",
	Icon = "Lucide:bell",
	Default = true,
	Flag = "vvind_notifications",
	Callback = function(value)
		Console:Log(("Notifications: %s"):format(tostring(value)))
	end,
})

local scaleControl = Inputs:AddSlider({
	Text = "Interface scale",
	Description = "A numeric value saved with the local configuration.",
	Icon = "Lucide:scan",
	Min = 70,
	Max = 130,
	Default = 100,
	Increment = 5,
	Suffix = "%",
	Flag = "vvind_scale",
	Callback = function(value)
		Console:Log(("Interface scale: %s%%"):format(tostring(value)))
	end,
})

local qualityControl = Inputs:AddDropdown({
	Text = "Selected quality",
	Icon = "Lucide:gauge",
	Options = { "Low", "Balanced", "High", "Ultra" },
	Default = "Balanced",
	MultiSelect = false,
	Flag = "vvind_quality",
	Callback = function(value)
		Console:Log(("Quality: %s"):format(tostring(value)))
	end,
})

local sectionsControl = Inputs:AddDropdown({
	Text = "Visible sections",
	Description = "Multi-select dropdown with saved values.",
	Icon = "Lucide:list-checks",
	Options = { "Overview", "Components", "Activity", "Configuration", "Languages" },
	Default = { "Overview", "Components" },
	MultiSelect = true,
	Flag = "vvind_sections",
	Callback = function(values)
		Console:Log(("Visible sections: %s"):format(table.concat(values, ", ")))
	end,
})

local displayNameControl = Inputs:AddTextbox({
	Text = "Display name",
	Description = "Text input that is included in the current configuration.",
	Icon = "Lucide:type",
	Placeholder = "Write a name for this session",
	Default = LocalPlayer.DisplayName,
	Flag = "vvind_display_name",
	Callback = function(value)
		Console:Log(("Display name: %s"):format(value))
	end,
})

local colorControl = Inputs:AddColorPicker({
	Text = "Accent color",
	Icon = "Lucide:palette",
	Default = Color3.fromRGB(124, 92, 255),
	Flag = "vvind_accent",
	Callback = function(color)
		Console:Log(("Accent color: %s"):format(tostring(color)))
	end,
})

local keybindControl = Inputs:AddKeybind({
	Text = "Change the shortcut",
	Icon = "Lucide:keyboard",
	Default = Enum.KeyCode.G,
	Flag = "vvind_action_key",
	Callback = function(key, event)
		if event == "bind" then
			Console:Log(("Shortcut changed: %s"):format(tostring(key)))
		elseif event == "press" then
			notify("Run highlighted action", "info")
		end
	end,
})

Actions:AddSection({ Text = "Actions", Icon = "Lucide:play" })
Actions:AddParagraph({
	Title = "Actions",
	Text = "Apply a preset or print all current values.",
})
Actions:AddButton({
	Text = "Apply balanced preset",
	Description = "Updates the controls through their public Set methods.",
	Icon = "Lucide:rotate-ccw",
	Callback = function()
		enabledControl:Set(true)
		scaleControl:Set(100)
		qualityControl:Set("Balanced")
		sectionsControl:Set({ "Overview", "Components" })
		displayNameControl:Set(LocalPlayer.DisplayName)
		colorControl:Set(Color3.fromRGB(124, 92, 255))
		keybindControl:Set(Enum.KeyCode.G)
		notify("Apply balanced preset", "success")
	end,
})
Actions:AddButton({
	Text = "Print current values",
	Description = "Reads every flagged control through the config API.",
	Icon = "Lucide:terminal",
	Callback = function()
		local values, err = VVindUI:GetConfig()
		if not values then
			notify("Configuration action failed: {error}", "warning", { error = tostring(err) })
			return
		end
		for flag, value in pairs(values) do
			print(("[VVind-UI] %s = %s"):format(flag, tostring(value)))
		end
	end,
})

local Activity = Window:AddTab({
	Name = "Activity",
	Icon = "Lucide:activity",
})

Activity:AddSection({ Text = "Interface activity", Icon = "Lucide:activity" })
Activity:AddSystemInfoGrid({
	Title = "Session information",
	Description = "Local runtime information. No presence is sent to Cloud.",
	Columns = 2,
})

local Configuration = Window:AddTab({
	Name = "Configuration",
	Icon = "Lucide:folder-cog",
})

Configuration:AddSection({ Text = "Named configuration", Icon = "Lucide:save" })
Configuration:AddParagraph({
	Title = "Configuration",
	Text = "The folder value is used for automatic and named settings.",
})

local configName = "vvind-ui-showcase"
local snapshot

Configuration:AddButton({
	Text = "Save local configuration",
	Description = "Save the current flags as a named local file.",
	Icon = "Lucide:save",
	Callback = function()
		local ok, err = VVindUI:SaveConfig(configName, {
			Description = "VVind-UI interface settings",
			Tags = { "vvind-ui", "interface" },
		})
		if ok then
			notify("Saved configuration.", "success")
		else
			notify("Configuration action failed: {error}", "warning", { error = tostring(err) })
		end
	end,
})

Configuration:AddButton({
	Text = "Load local configuration",
	Description = "Load the named file and apply values without firing callbacks.",
	Icon = "Lucide:folder-open",
	Callback = function()
		local ok, err = VVindUI:LoadConfig(configName, true)
		if ok then
			notify("Loaded configuration.", "success")
		else
			notify("Configuration action failed: {error}", "warning", { error = tostring(err) })
		end
	end,
})

Configuration:AddButton({
	Text = "List saved configurations",
	Icon = "Lucide:files",
	Callback = function()
		local configs, err = VVindUI:ListConfigs()
		if err then
			notify("Configuration action failed: {error}", "warning", { error = tostring(err) })
			return
		end
		if #configs == 0 then
			notify("No saved configurations were found.", "info")
			return
		end
		for _, config in ipairs(configs) do
			print(("[VVind-UI] Saved config: %s"):format(tostring(config.Name)))
		end
		notify("Found {count} saved configurations.", "success", { count = #configs })
	end,
})

Configuration:AddButton({
	Text = "Preview current configuration",
	Icon = "Lucide:scan-eye",
	Callback = function()
		local values, getErr = VVindUI:GetConfig()
		if not values then
			notify("Configuration action failed: {error}", "warning", { error = tostring(getErr) })
			return
		end
		local valid, report = VVindUI:PreviewConfig(values)
		if valid then
			notify("Configuration is valid with {count} pending changes.", "success", {
				count = #report.Changes,
			})
		else
			notify("Configuration is invalid: {error}", "warning", { error = tostring(report) })
		end
	end,
})

Configuration:AddButton({
	Text = "Round-trip current values through JSON",
	Icon = "Lucide:braces",
	Callback = function()
		local json, getErr = VVindUI:GetConfigJSON()
		if not json then
			notify("Configuration action failed: {error}", "warning", { error = tostring(getErr) })
			return
		end
		local ok, err = VVindUI:SetConfigJSON(json, true)
		if ok then
			notify("Values were applied from the current JSON snapshot.", "success")
		else
			notify("Configuration action failed: {error}", "warning", { error = tostring(err) })
		end
	end,
})

Configuration:AddButton({
	Text = "Capture in-memory snapshot",
	Icon = "Lucide:camera",
	Callback = function()
		snapshot = VVindUI:CreateSnapshot()
		notify("Snapshot captured.", "success")
	end,
})

Configuration:AddButton({
	Text = "Restore in-memory snapshot",
	Icon = "Lucide:history",
	Callback = function()
		if not snapshot then
			notify("Capture a snapshot first.", "warning")
			return
		end
		local ok, err = VVindUI:RestoreSnapshot(snapshot, true)
		if ok then
			notify("Snapshot restored.", "success")
		else
			notify("Configuration action failed: {error}", "warning", { error = tostring(err) })
		end
	end,
})

local Languages = Window:AddTab({
	Name = "Languages",
	Icon = "Lucide:languages",
})

Languages:AddSection({ Text = "Language catalog", Icon = "Lucide:languages" })
Languages:AddParagraph({
	Title = "Languages",
	Text = "Choose a language to update tracked interface text.",
})

local languageLabel = Languages:AddLabel("Active language: es")
local languageListener

languageListener = VVindUI:RegisterLocaleCallback(function(language)
	languageLabel:Set(translate("Active language: {language}", { language = language }))
	RuntimeGrid:SetValue("Language", language)
	notify("Locale changed to {language}.", "info", { language = language })
end)

Languages:AddButton({
	Text = "English",
	Callback = function()
		VVindUI:SetLanguage("en")
	end,
})

Languages:AddButton({
	Text = "Spanish",
	Callback = function()
		VVindUI:SetLanguage("es")
	end,
})

Languages:AddButton({
	Text = "Russian",
	Callback = function()
		VVindUI:SetLanguage("ru")
	end,
})

Languages:AddButton({
	Text = "Validate Russian locale",
	Icon = "Lucide:badge-check",
	Callback = function()
		local complete, report = VVindUI:ValidateLocale("ru")
		local missing = #report.Missing + #report.Invalid
		if complete then
			notify("Russian locale is complete.", "success")
		else
			notify("Russian locale has {count} missing or invalid entries.", "warning", { count = missing })
		end
	end,
})

Languages:AddButton({
	Text = "Disconnect language listener",
	Icon = "Lucide:unlink",
	Callback = function()
		if languageListener then
			languageListener:Disconnect()
			languageListener = nil
		end
		notify("Language listener disconnected.", "info")
	end,
})

local LocalPanel = Window:AddPanelTab({
	Name = "Local panel",
	Icon = "Lucide:panel-right",
	Hidden = true,
})

LocalPanel.Tab:AddSection({ Text = "Local panel", Icon = "Lucide:panel-right" })
local externalLabel = LocalPanel.Tab:AddLabel("External label localized by the library")
VVindUI:Localize(externalLabel.Instance, "External label localized by the library", "Text")
LocalPanel.Tab:AddButton({
	Text = "Open overview",
	Icon = "Lucide:house",
	Callback = function()
		Window:SelectTab("Overview")
	end,
})

Window:AddDockButton({
	Name = "Open panel",
	Icon = "Lucide:panel-right",
	Callback = function()
		LocalPanel:Toggle()
	end,
})

local Chat = Window:AddChatPanel({
	Name = "LocalChat",
	Title = "Local messages",
	Icon = "Lucide:messages-square",
	Hidden = true,
	Placeholder = "Type a message...",
	OnSend = function(panel, message)
		panel:AddMessage("assistant", translate("Message received: {message}", { message = message }))
	end,
	OnClear = function()
		Console:Log("Chat history cleared.")
	end,
	OnStop = function()
		Console:Log("Generation stopped.")
	end,
	OnRegenerate = function(_, message)
		Console:Log(translate("Recreated reply for: {message}", { message = message }))
	end,
})

Chat:AddMessage("assistant", "Interface loaded.")
Window:AddDockButton({
	Name = "Chat",
	Icon = "Lucide:messages-square",
	Callback = function()
		Chat:Toggle()
	end,
})

local finalValues = VVindUI:GetConfig() or {}
local savedValueCount = 0
for _ in pairs(finalValues) do
	savedValueCount += 1
end
notify("Interface loaded.", "success")
Console:Log(("Loaded %s with %d flagged controls"):format(tostring(VVindUI.Version), savedValueCount))

