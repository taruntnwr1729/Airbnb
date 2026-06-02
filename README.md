# 🏡 Airbnb Clone (SwiftUI)

**Created by Tarun Tanwar**

A native iOS Airbnb-inspired application built entirely with **SwiftUI**. This project is a central milestone in my journey to learn modern iOS development, focusing on translating sophisticated production layouts into modular, reusable component architectures while managing clean state and smooth data flow.

---

## ✨ Features Implemented

### 📱 Main Navigation & Layout Architecture
* **Tab-Based Navigation:** Fully functional `MainTabView` integrating core sections of the app: Explore, Wishlists, Maps, and Profile tabs.
* **Scalable Folder Structure:** Highly organized, feature-based project architecture partitioned into Components, Core features (Explore, Listings, TabBar, Profile), Models, and Utilities.
* **Performance-Optimized Lists:** An interactive property feed built using `ScrollView` and `LazyVStack` for lazy loading and resource management.

### 🔍 Interactive Search Experience
* **Dynamic Search Overlay:** Engineered an advanced, multi-state expandable search interface (`DestinationSearchView`) that toggles seamlessly between interactive focus states.
* **Fluid Micro-Interactions:** Leveraged native `.snappy` animations to create smooth transitions when expanding or collapsing data rows for Location, Dates, and Guests.
* **State Management:** Handled complex UI element transformations and component visibility changes natively using `@State` and `@Binding` data flows.

### 🎨 Custom Component-Driven UI
* **Modular Code Structure:** Refactored repetitive layouts into decoupled, isolated subviews (`CollapsedRowView`, `ExtractedView`) keeping the codebase clean, readable, and highly DRY (Don't Repeat Yourself).
* **Polished Asset Styling:** Finished layouts utilizing native SF Symbols, clean text typography hierarchies, corner radius clipping, and soft modern drop-shadows with tuned opacities.
* **Component Reusability:** Designed decoupled layout items like `ListingItemView` and `ListingImageCarouselView` built to dynamically render content.

---

## 🚧 What's Next (Planned Upgrades)

### 📊 Data & Networking Layer
* **Dynamic Data Binding:** Shifting from static mock instances to structured data models for handling precise listing information (Pricing, Availability windows, Star ratings).
* **MapKit Integration:** Integrating native iOS Maps to anchor property pins dynamically and bridge listings to geographical location views.

---

## 📚 Core Learnings & Growth

Through the completion of this user interface, I have gained deep, hands-on experience with:
* **SwiftUI View Composition:** Learning when to use view modifiers vs. embedded structural layouts.
* **State & Animation Orchestration:** Mastering how SwiftUI manages rendering ticks under the hood when combining layout transformations with animations.
* **Production-Style Design Patterns:** Writing code that isn't just functional, but modular and readable enough for a professional team or professor to evaluate.

---

## 👨‍💻 Author

**Tarun Tanwar** *Aspiring iOS Developer passionate about building real-world applications with SwiftUI and learning modern Apple platform development through hands-on project engineering.*
