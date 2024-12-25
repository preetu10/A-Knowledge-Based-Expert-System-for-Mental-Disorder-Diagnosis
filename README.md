# A Rule-Based Expert System for Mental Disorder Diagnosis

---
This project was developed as part of my Artificial Intelligence Lab course and implements a rule-based expert system in Prolog to diagnose mental health disorders. 
It utilizes logical reasoning to map symptoms to potential disorders and interactively engages the user with questions about their symptoms. Based on the responses, the system deduces the most probable disorder, 
showcasing the application of Prolog in building AI-driven expert systems.

---

## Features
- Diagnoses six mental health disorders:
  - Depression
  - Anxiety
  - Bipolar Disorder
  - Schizophrenia
  - Obsessive-Compulsive Disorder (OCD)
  - Post-Traumatic Stress Disorder (PTSD)
- Interactive question-and-answer system.
- Rule-based logic for transparent and structured diagnosis.

---

## Installation & Running Guide

### Requirements
- Turbo Prolog
- Windows (recommended for Turbo Prolog compatibility).

### Steps to Install and Run in Turbo Prolog

1. **Download and Install Turbo Prolog**
   - Download Turbo Prolog from a trusted source.
   - Install the software by following the on-screen instructions.

2. **Setup the Code**
   - Clone this repository or download the `.pro` file:
     ```bash
     git clone  https://github.com/preetu10/A-Rule-Based-Expert-System-for-Mental-Disorder-Diagnosis.git
     ```
   - Open Turbo Prolog and load the file `PROJECT.PRO`.

3. **Run the Program**
   - Run the program from the menubar.
   - Follow the prompts on the screen to answer questions about the patient's symptoms.

4. **Example Output**
   - The program will ask the name of the patient and then questions such as:
     ```
     Does the patient have persistent sadness (y/n)?
     ```
   - Respond with `y` (yes) or `n` (no).
   - After evaluating the symptoms, it will display a diagnosis like:
     ```
     [Patient Name] probably has depression.
     ```

