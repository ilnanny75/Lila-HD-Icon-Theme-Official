import os
import subprocess

def optimize_svgs(root_dir):
    for root, dirs, files in os.walk(root_dir):
        for file in files:
            if file.endswith(".svg"):
                file_path = os.path.join(root, file)
                print(f"Ottimizzazione di: {file_path}")
                try:
                    subprocess.run([
                        "scour", 
                        "-i", file_path, 
                        "-o", file_path + ".tmp", 
                        "--enable-viewboxing", 
                        "--enable-id-stripping", 
                        "--indent=none"
                    ], check=True)
                    os.replace(file_path + ".tmp", file_path)
                except Exception as e:
                    print(f"Errore su {file}: {e}")

if __name__ == "__main__":
    # Avvia l'ottimizzazione partendo dalla cartella corrente
    optimize_svgs(".")
