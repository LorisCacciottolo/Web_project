# DropWatch - Fashion & Sneakers Drops

A Vue.js web application to track the latest fashion and sneaker releases.

## 🚀 Live Demo

**[View Live Demo](https://loriscacciottolo.github.io/Web_project/)**

## 📋 Project Description

DropWatch is an interactive single-page application built with Vue.js that showcases fashion and sneaker drops. 

### Features:
- ✅ **Toggle Display**: Click the card to switch between title and description
- ✅ **Image Display**: Product images are always visible
- ✅ **Navigation**: Previous/Next buttons to browse through drops
- ✅ **Item Counter**: Shows current position (e.g., "3 / 6")
- ✅ **Responsive Design**: Works on desktop, tablet, and mobile

## 🛠️ Technologies Used

- **HTML5**: Semantic structure
- **CSS3**: Responsive design with Grid and Flexbox
- **JavaScript (ES6)**: Modern syntax
- **Vue.js 3**: Progressive framework (CDN)

## 📁 Project Structure

```
Web_project/
├── index.html              # Main Vue.js application
├── css/
│   └── styles.css         # Responsive CSS with RWD
├── data/
│   └── script.js          # Array of fashion drops objects
└── assets/
    └── images/            # Project assets
```

## 🎯 Assignment Requirements Met

✅ Single page `index.html` with Vue.js  
✅ Full CSS with RWD in `css/` folder  
✅ JS data file in `data/` sub-folder  
✅ Array of objects with 3+ properties (title, desc, img)  
✅ Vue CDN integration  
✅ Vue app with data and methods  
✅ Toggle between title and description on click  
✅ Image always displayed  
✅ Previous and Next navigation buttons  
✅ GitHub repository with live demo  

## 🚀 How to Run Locally

1. Clone the repository:
```bash
git clone https://github.com/LorisCacciottolo/Web_project.git
cd Web_project
```

2. Open `index.html` in your browser (no build required - uses CDN)

## 👥 Group Members

- [Student Name 1]
- [Student Name 2]
- [Student Name 3]

*(Update with actual names before submission)*

## 📝 Data Structure

Each fashion drop object contains:
- **title**: Product name
- **desc**: Detailed description
- **img**: Online image URL (Unsplash)

Example:
```javascript
{
    title: "Nike Air Max 1 'Photon Dust'",
    desc: "The Nike Air Max 1 'Photon Dust' features...",
    img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff"
}
```

## 🎨 Vue.js Implementation

### Features Used:
- `v-text` directive for text binding
- `@click` event handling for toggle and navigation
- `:src` and `:alt` attribute binding
- Mustache syntax `{{ }}` for displaying data
- Conditional rendering with ternary operators
- Methods for navigation logic

## 📱 Responsive Breakpoints

- **Desktop**: 768px and above
- **Tablet**: 480px - 767px
- **Mobile**: Below 480px

## 🌐 Deployment

This project is deployed on GitHub Pages. Any push to the `main` branch will automatically update the live demo.

## 📄 License

This project is for educational purposes as part of a web development course.

## 🙏 Acknowledgments

- Based on example: [Vue.js Intro P1-Content-Behaviour](https://github.com/anmarjarjees/vue.js-intro/blob/main/P1-Content-Behaviour/p1file4.html)
- Vue.js framework and documentation
- Unsplash for free images
