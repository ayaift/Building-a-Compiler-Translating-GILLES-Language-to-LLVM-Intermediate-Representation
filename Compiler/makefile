default: build

# Générer l'analyseur lexical avec JFlex
jflex:
	jflex src/LexicalAnalyzer.flex

# Compiler le projet Java
build: jflex
	javac -d more -cp src/ src/*.java
	jar cfe dist/part3.jar Main -C more .
	javadoc -private src/*.java -d doc/javadoc

# Exécuter l'analyse LLVM pour tous les fichiers .gls
llvm: build
	mkdir -p output
	for file in test/*.gls; do \
		base_name=$$(basename $$file .gls); \
		echo "Traitement du fichier $$file..."; \
		java -cp dist/part3.jar Main $$file > output/$$base_name.ll; \
	done

# Nettoyer les fichiers générés
clean:
	rm -rf more dist doc/javadoc output

all: llvm

