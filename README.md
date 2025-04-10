# 🎛️ Mixer Digital - Proyecto Final IE-0424

**Universidad de Costa Rica**  
**Facultad de Ingeniería – Escuela de Ingeniería Eléctrica**  
**Curso:** IE-0424 Laboratorio de Circuitos Digitales – II Ciclo 2024  
**Docente:** Ing. Eleonora Chacón Taylor  
**Estudiantes:**  
- José David Díaz Pérez (C02638)  
- David Rodríguez Gutiérrez (B59281)  

---

## 📌 Descripción General

Este proyecto consiste en la implementación de un **Mixer Digital** en la **FPGA Nexys A7**, que permite generar notas musicales audibles mediante la activación de switches en la placa. Cada uno de los 8 switches representa una nota musical en una escala que va desde Do (C4) hasta Do (C5), generando un sistema funcional de prueba de tonos o creación de melodías simples.

Este sistema puede utilizarse como herramienta de afinación o para experimentar con escalas musicales básicas.

---

## 🎯 Objetivos

- Implementar un sistema de generación de tonos en la FPGA Nexys A7.
- Asignar una frecuencia específica a cada uno de los 8 switches de la placa.
- Generar las señales audibles a través del PWM utilizando la salida de audio integrada.

---

## 🛠️ Tecnologías y Herramientas

- **Lenguaje:** SystemVerilog / Verilog
- **Placa de desarrollo:** Nexys A7-100T
- **Entorno:** Vivado Design Suite
- **Interfaz de comunicación:** Wishbone Bus
- **Repositorio Base:**  
  - [Basic Audio Synthesizer](https://github.com/)  
  - [Simple Major Arpeggiator](https://github.com/)  
  *(repositorios utilizados como base/inspiración)*
