### SwiftUI preview issue


I created this sample project to describe an issue with the Xcode 11 SwiftUI preview canvas pane `(⌥ + ⌘ + return)`  in combination with the Swift package.

It seems that SwiftUI preview is working only for source files in `Sources/[target]` directory
(`FeaturePackage -> Sources -> FeaturePackage`) ,
but not in subfolders (`FeaturePackage -> Sources -> FeaturePackage -> Subfolder` ) .


File `\FeaturePackage\Sources\FeaturePackage\SampleButton.swift`
    -   preview is working


File `\FeaturePackage\Sources\FeaturePackage\Subfolder\SampleButton.swift`
-   Error: 
```
NoBuildableEntriesError: active scheme does not build this file

Select a scheme that builds a target which contains the current file, or add this file to a target that is built by the current scheme.
```
