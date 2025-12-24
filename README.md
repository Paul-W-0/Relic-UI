# Relic UI

A modern, lightweight CSS framework for building beautiful web applications. Relic UI provides a comprehensive set of components and utilities for rapid web development.

## 🚀 Quick Start

### CDN Installation

Add the following link to your HTML file's `<head>` section:

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/Paul-W-0/Relic-UI@main/style.css">
```

### Local Installation

Download the `style.css` file and include it in your project:

```html
<link rel="stylesheet" href="path/to/style.css">
```

## 📦 What's Included

Relic UI includes the following components and features:

- **Base Styles**: Modern CSS reset and CSS variables for theming
- **Grid System**: Flexible flexbox and CSS grid layouts with responsive breakpoints
- **Buttons**: Multiple variants, sizes, and states
- **Cards**: Flexible card components with headers, bodies, and footers
- **Forms**: Complete form controls (inputs, textareas, selects, checkboxes, radios, switches)
- **Navbar**: Responsive navigation bars with mobile support
- **Dropdowns**: Contextual menus and overlays
- **Alerts/Banners**: Feedback messages with multiple variants
- **Modals**: Popup dialogs and tooltips

## 🎨 Components

### Buttons

```html
<!-- Primary Button -->
<button class="relic-btn relic-btn-primary">Primary</button>

<!-- Outline Button -->
<button class="relic-btn relic-btn-outline-primary">Outline</button>

<!-- Button Sizes -->
<button class="relic-btn relic-btn-primary relic-btn-sm">Small</button>
<button class="relic-btn relic-btn-primary">Default</button>
<button class="relic-btn relic-btn-primary relic-btn-lg">Large</button>

<!-- Button States -->
<button class="relic-btn relic-btn-primary" disabled>Disabled</button>
<button class="relic-btn relic-btn-primary relic-btn-loading">Loading</button>
```

### Cards

```html
<div class="relic-card">
  <div class="relic-card-header">
    <h3 class="relic-card-title">Card Title</h3>
    <p class="relic-card-subtitle">Card subtitle</p>
  </div>
  <div class="relic-card-body">
    Card content goes here
  </div>
  <div class="relic-card-footer">
    <button class="relic-btn relic-btn-primary">Action</button>
  </div>
</div>
```

### Grid System

```html
<!-- CSS Grid -->
<div class="relic-grid relic-grid-cols-3 relic-gap-md">
  <div>Column 1</div>
  <div>Column 2</div>
  <div>Column 3</div>
</div>

<!-- Flexbox Grid -->
<div class="relic-row">
  <div class="relic-col-6">Half width</div>
  <div class="relic-col-6">Half width</div>
</div>
```

### Forms

```html
<div class="relic-form-group">
  <label class="relic-label">Email</label>
  <input type="email" class="relic-input" placeholder="Enter email">
  <span class="relic-form-text">Helper text</span>
</div>

<!-- Checkbox -->
<div class="relic-form-check">
  <input type="checkbox" class="relic-checkbox relic-form-check-input" id="check1">
  <label class="relic-form-check-label" for="check1">Check me</label>
</div>

<!-- Switch -->
<label class="relic-switch">
  <input type="checkbox">
  <span class="relic-switch-slider"></span>
</label>
```

### Navbar

```html
<nav class="relic-navbar relic-navbar-primary">
  <a href="#" class="relic-navbar-brand">Brand</a>
  <ul class="relic-navbar-nav">
    <li class="relic-navbar-item">
      <a href="#" class="relic-navbar-link">Link</a>
    </li>
  </ul>
</nav>
```

### Alerts/Banners

```html
<div class="relic-banner relic-banner-success">
  <strong>Success!</strong> Your action was completed.
  <button class="relic-banner-close">&times;</button>
</div>
```

### Dropdowns

```html
<div class="relic-dropdown">
  <button class="relic-btn relic-btn-primary relic-dropdown-toggle">
    Dropdown
  </button>
  <ul class="relic-dropdown-menu">
    <li><a href="#" class="relic-dropdown-item">Action</a></li>
    <li><a href="#" class="relic-dropdown-item">Another action</a></li>
  </ul>
</div>
```

### Modals

```html
<div class="relic-modal show">
  <div class="relic-modal-dialog">
    <div class="relic-modal-content">
      <div class="relic-modal-header">
        <h5 class="relic-modal-title">Modal Title</h5>
        <button class="relic-modal-close">&times;</button>
      </div>
      <div class="relic-modal-body">
        Modal content goes here
      </div>
      <div class="relic-modal-footer">
        <button class="relic-btn relic-btn-secondary">Close</button>
        <button class="relic-btn relic-btn-primary">Save</button>
      </div>
    </div>
  </div>
</div>
```

## 🎨 Customization

Relic UI uses CSS variables for easy theming. You can override these variables in your own CSS:

```css
:root {
  --relic-primary: #3b82f6;
  --relic-secondary: #8b5cf6;
  --relic-success: #10b981;
  --relic-danger: #ef4444;
  --relic-warning: #f59e0b;
  --relic-info: #06b6d4;
  
  /* Spacing */
  --relic-space-sm: 0.5rem;
  --relic-space-md: 1rem;
  --relic-space-lg: 1.5rem;
  
  /* Typography */
  --relic-font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  --relic-font-size-base: 1rem;
  
  /* Border Radius */
  --relic-radius-sm: 0.25rem;
  --relic-radius-md: 0.375rem;
  --relic-radius-lg: 0.5rem;
}
```

## 🎯 Color Variants

All components support multiple color variants:

- `primary` - Primary brand color (blue)
- `secondary` - Secondary brand color (purple)
- `success` - Success state (green)
- `danger` - Error/danger state (red)
- `warning` - Warning state (orange)
- `info` - Informational state (cyan)
- `light` - Light variant
- `dark` - Dark variant

## 📱 Responsive Design

Relic UI is mobile-first and includes responsive breakpoints:

- `sm`: 640px
- `md`: 768px
- `lg`: 1024px
- `xl`: 1280px

Example responsive grid:

```html
<div class="relic-grid relic-grid-cols-1 relic-md-grid-cols-2 relic-lg-grid-cols-4">
  <!-- Columns -->
</div>
```

## 🛠️ Utility Classes

### Flexbox Utilities

```html
<div class="relic-flex relic-justify-center relic-items-center">
  Centered content
</div>
```

### Spacing Utilities

```html
<div class="relic-gap-md">Gap medium</div>
<div class="relic-gap-lg">Gap large</div>
```

## 📄 License

This project is open source and available under the MIT License.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## 📧 Contact

For questions or support, please open an issue on GitHub.

---

Made with ❤️ by the Relic UI team
