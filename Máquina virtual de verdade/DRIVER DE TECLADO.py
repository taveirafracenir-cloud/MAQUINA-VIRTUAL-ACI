from pynput import keyboard

# Define o que acontece quando uma tecla é pressionada
def on_press(key):
    try:
        # AQUI VOCÊ PODE ADICIONAR A LOGICA PARA A SUA MAQUINA VIRTUAL
        print(f'Tecla alfanumérica pressionada: {key.char}')
        # Por exemplo, você pode enviar o 'key.char' para a sua interface de terminal
    except AttributeError:
        # Lida com teclas especiais como 'Alt', 'Ctrl', 'Enter', etc.
        print(f'Tecla especial pressionada: {key}')
    except Exception as e:
        print(f"Ocorreu um erro: {e}")

# Define o que acontece quando uma tecla é solta
def on_release(key):
    # AQUI VOCÊ PODE ADICIONAR LÓGICA DE SOLTAR A TECLA
    if key == keyboard.Key.esc:
        # Para o ouvinte, permitindo que o programa termine.
        return False

# Cria o ouvinte em segundo plano
def iniciar_driver_teclado():
    print("Iniciando driver de teclado...")
    with keyboard.Listener(on_press=on_press, on_release=on_release) as listener:
        listener.join()

# Exemplo de como usar a função principal
if __name__ == "__main__":
    iniciar_driver_teclado()
