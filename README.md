# Computational Methods for Earth Sciences

This repository hosts course materials for a graduate-level course on computational methods for earth sciences, deployed as a JupyterBook to GitHub Pages.

## 📚 Course Website

Visit the course website: [https://BennettHydroLab.github.io/computational_methods_course/](https://BennettHydroLab.github.io/computational_methods_course/)

## 📖 Course Structure

The course materials are organized into the following sections:

- **Notebooks**: Interactive Jupyter notebooks with code examples and exercises
- **Slides**: Lecture slides and presentations
- **Resources**: Additional reading materials and reference guides
- **Data**: Datasets used throughout the course
- **Extras**: Supplementary materials and advanced topics

## 🚀 Getting Started

### Viewing the Course Materials

The easiest way to access the course materials is through the published JupyterBook website linked above.

### Local Development

To build the JupyterBook locally:

1. Clone this repository:
   ```bash
   git clone https://github.com/BennettHydroLab/computational_methods_course.git
   cd computational_methods_course
   ```

2. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Build the book:
   ```bash
   jupyter-book build .
   ```

4. View the built book:
   ```bash
   open _build/html/index.html
   ```
   (On Linux, use `xdg-open` instead of `open`)

## 📝 Contributing

Contributions to improve the course materials are welcome! Please follow these steps:

1. Fork the repository
2. Create a new branch for your changes
3. Make your changes and test the build
4. Submit a pull request

## 🔄 Deployment

The JupyterBook is automatically built and deployed to GitHub Pages when changes are pushed to the `main` branch via GitHub Actions.

## 📄 License

This course material is provided for educational purposes.

## 👥 Maintainers

This course is maintained by the Bennett Hydro Lab.