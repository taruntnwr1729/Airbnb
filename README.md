#  Airbnb iOS Clone (SwiftUI)

**Created by Tarun Tanwar**

A native iOS Airbnb clone built using **SwiftUI**. This project focuses on translating complex production layouts into modular, reusable UI components, managing conditional view states, and handling data propagation across decoupled views.

---

##  Features Implemented

###  UI Architecture & Navigation
* **Tab-Based View Routing:** Implemented a full `MainTabView` structure to manage navigation across the core app modules: Explore, Wishlists, Maps, and Profile.
* **Optimized Scrolling Feeds:** Built the main property stream using a `ScrollView` paired with a `LazyVStack` to ensure efficient view recycling and smooth scrolling performance.
* **Component Reusability:** Refactored repetitive layouts into distinct subviews (such as `SearchAndFilterBar` and `ListingImageCarouselView`) to enforce DRY principles.

###  Search Experience & State Toggling
* **Expandable Layout States:** Engineered an interactive, multi-state search panel (`DestinationSearchView`) that toggles dynamically based on user focus.
* **Micro-Interactions & Animations:** Integrated native `.snappy` spring animations to handle the expansion and collapse transitions of filtering menus.
* **Dynamic Dataset Filtering:** Hooked search bars into the view-model layer to execute case-insensitive localized data matching (City/State lookups) in real time.

---

##  Core Learnings & Engineering Takeaways

Building this application from scratch provided practical experience with core iOS architecture patterns:

* **State Management & Unidirectional Data Flow:** Gained a solid understanding of SwiftUI's property wrappers (`@State`, `@Binding`, and `@StateObject`). Learned how to lift state up and inject data dependencies to keep deep view hierarchies perfectly synchronized.
* **MVVM Design Pattern:** Applied clear separation of concerns by keeping layout presentation strictly separated from business logic, managing data mutations entirely within the ViewModel layer.
* **Interface Precision:** Mastered layout positioning constraints—specifically handling the order of background shapes, overlay lines, and drop-shadow rendering frames to prevent visual artifact clipping.
* **Production Debugging Workflows:** Developed proficiency using Xcode's diagnostic tools, including navigating active breakpoints, parsing structural syntax errors, and interpreting live console logs.

---

