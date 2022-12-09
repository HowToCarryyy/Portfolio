from js import document
import klausur as k
def aufgabe1(event):
    input1 = document.getElementById("aufgabe_1_input_1")
    input2 = document.getElementById("aufgabe_1_input_2")
    
    output = document.getElementById("aufgabe_1_output_code")
    output.style.display = "block"
    output_py = k.aufgabe1(input1, input2)
    Element("aufgabe_1_output_code").write(output_py)
