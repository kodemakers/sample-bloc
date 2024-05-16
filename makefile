
.PHONY: all build l10n apk ios clean web_html web appbundle

all: build l10n apk ios clean web_html web appbundle



# Variables
FLUTTER := fvm flutter




help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done



clean: ## Cleans the environment
	@echo "🗑️  Cleaning the project..."
	@rm -rf pubspec.lock
	$(FLUTTER) clean
	$(FLUTTER) pub get
	@echo "✅ Cleaned the project"

watch: ## Watches the files for changes
	@echo "🧑‍💻 Watching the project..."
	$(FLUTTER) pub run build_runner watch --delete-conflicting-outputs

build: ## Build the files for changes
	@echo "👷 Building the project..."
	$(FLUTTER) pub run build_runner build --delete-conflicting-outputs

apk: ## Build the mobile application ANDROID
	@echo "📱  Building ANDROID Apk"
	@echo " "
	$(MAKE) clean
	@echo " "
	$(FLUTTER) build apk
	@echo "🚀 Android Application build Sucessfully"
	
appbundle: ## Build the mobile APPBUNDLE ANDROID 
	@echo "📱  Building ANDROID APPBUNDLE"
	@echo " "
	$(MAKE) clean
	@echo " "
	$(FLUTTER) build appbundle
	@echo "🚀 Android Application build Sucessfully"

web_html: ## Build the Web (HTML Render)
	@echo "🌐  Building Web in Html Render"
	@echo " "
	$(MAKE) clean
	@echo " "
	$(FLUTTER) build web --web-renderer html
	@echo "🚀 Web Html Render build Sucessfully"

web: ## Build the Web
	@echo "🌐  Building Web"
	@echo " "
	$(MAKE) clean
	@echo " "
	$(FLUTTER) build web 
	@echo "🚀 Web build Sucessfully"

ios: ## Build the mobile application IOS
	@echo "🍎  Building IOS"
	@echo " "
	$(MAKE) clean
	@echo " "
	cd ios; pod install; cd ..
	$(FLUTTER) build ios
	@echo "🚀 Ios Application build Sucessfully"

l10n: ## Generate Localization
	@echo "🔨  Generating Localization"
	$(FLUTTER) gen-l10n
	@echo "🚀 Localization Generated"








