# 🧮 NexusNerve - Smart Calculator

## 🌟 Overview

NexusNerve is a smart calculator built with [Jaclang](https://jaclang.org/), designed to handle arithmetic operations through natural language input. This project showcases a progression from simple logic-based calculations to advanced processing using the Gemini API, making math both fun and intuitive! 🎉

## ✨ Features

- 🗣️ **Natural Language Processing**: Understands queries like:
  - "What is 5 plus 5?"
  - "Tell me 10 minus 2?"
  - "What is 6 times 4?"
  - "Tell me 15 divided by 0?"
- ➕ **Basic Arithmetic Operations**: Supports addition, subtraction, multiplication, and division.
- 📈 **Development Stages**:
  - **Step 5**: Core arithmetic logic programmed manually for reliable calculations.
  - **Step 6**: Integration with the Gemini API for enhanced query processing.
- 🚨 **Error Handling**: Gracefully manages edge cases, like division by zero.

## 📂 Project Structure

- **Jac_Example/**: Main codebase for the smart calculator.
- Core files include natural language parsing and calculation logic.
- Configuration for Gemini API integration (API key required).

## 🧰 Setup & Run Guide (VS Code)

### ✅ Requirements

- 🐍 Python 3.12+
- 🛠️ Jaclang: `pip install jaclang`
- 🌐 Gemini API Key: [Get it here](https://ai.google.dev/)
- (Optional) Additional dependencies for enhanced functionality:
  - MTLLM plugin: `pip install mtllm[google]`
  - Jac Cloud: `pip install jac-cloud`

### 🔐 Set Up Gemini API Key

Before running the project, export your Gemini API key as an environment variable:

**Linux/Mac**:
```bash
export GEMINI_API_KEY="your_api_key_here"
```

**Windows (VS Code Terminal)**:
```powershell
$env:GEMINI_API_KEY="your_api_key_here"
```

### 🚀 Run the Project Locally

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yosh-s/NexusNerve.git
   cd NexusNerve
   ```

2. **Install Jaclang**:
   Follow the [Jaclang installation guide](https://jaclang.org/install) or run:
   ```bash
   pip install jaclang
   ```

3. **Install Additional Dependencies** (if using advanced features):
   ```bash
   pip install mtllm[google]
   pip install jac-cloud
   ```

4. **Open in VS Code**:
   - Launch VS Code and open the `NexusNerve` folder.
   - Ensure the Python extension is installed in VS Code for Jaclang support.

5. **Run the Calculator**:
   Use the Jaclang CLI or VS Code terminal to execute example queries:
   ```jac
   root spawn Calculator("What is 5 plus 5?");
   root spawn Calculator("Tell me 10 minus 2?");
   root spawn Calculator("What is 6 times 4?");
   root spawn Calculator("Tell me 15 divided by 0?");
   ```

### 📊 Example Output
```
Input: What is 5 plus 5? ➡️ Output: 10
Input: Tell me 15 divided by 0? ➡️ Output: Error: Division by zero is undefined.
```

## 🛠️ Development Stages

- **Step 5: Simple Logic-Based Calculator** 🧠
  - Implements basic arithmetic using manually programmed logic.
  - Parses natural language to extract numbers and operators.
  - Handles errors for invalid inputs.

- **Step 6: Gemini API Integration** 🌌
  - Enhances functionality with the Gemini API for complex query processing.
  - Requires a valid API key (see setup instructions above).

## 🤝 Contributing

We love contributions! 🚀 To get started:

1. Fork the repository 🍴
2. Create a new branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'Add your feature'`
4. Push to the branch: `git push origin feature/your-feature`
5. Open a pull request 📬

Please follow the project's coding style and include tests where applicable.

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## 🙌 Acknowledgments

- [Jaclang](https://jaclang.org/) for a powerful development platform.
- [Gemini API](https://ai.google.dev/) for advanced natural language processing.

## 📬 Contact

Have questions or feedback? Reach out via [GitHub Issues](https://github.com/yosh-s/NexusNerve/issues) or contact [yosh-s](https://github.com/yosh-s). 😊
