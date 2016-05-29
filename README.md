# Masonry-FlattenLayout
Masonry is a pretty good framework of autolayout and this extension makes it better!

More ergonomic thinkable and readable code by adding some new methods: .gap() .equalTill()

# Hassle

Previously, a relative layout is a point to point assignment.

An example for the `[view1 mas_makeConstraints: ...]`
> make.right.equalTo(view2.mas_left).offset(-10)

* The right layout constraint of view1 aligns to the particular edge, not the view.
* And the .offset(-10) is similar so we need thinking whether positive value nor negative should be passed in.

# How it should be?
Methods list:

* New: equalTill()

    Provides a view based assignment method in flatten layout
    
    `make.right.equalTill(view2)` and `make.right.equalTo(view2.mas_left)` are equivalent.
    
    The magic of this mechanism work is .equalTill() will lookup the firstLayoutAttribute of contraint and deciding which secondLayoutAttribute should be.
    
    Also, `make.top.equalTill(view2)` and `make.top.equalTo(view2.mas_bottom)` are equivalent.

* New: gap()

    Not any more negative offset value. Transforming the gap value between two views to the layout offset is on-the-fly.
    
    `make.right.equalTo(view2.mas_left).gap(10)` and `make.right.equalTo(view2.mas_left).offset(-10)` are equivalent.

# Conclusion
Seen that? View based flatten layout gives you an easier life!

You won't confusing which edge is need in relative layout and it autocompleted with equalTill()

One more, combination the above (of course you can)
> make.right.equalTo(view2.mas_left).offset(-10)

Now can be written to:

> make.right.equalTill(view2).gap(10)

# Installation
Use the [orsome](http://www.youtube.com/watch?v=YaIZF8uUTtk) [CocoaPods](http://github.com/CocoaPods/CocoaPods).

In your Podfile
>`pod 'Masonry-FlattenLayout'`

If you want to use masonry without all those pesky 'mas_' prefixes. Add #define MAS_SHORTHAND to your prefix.pch before importing Masonry
>`#define MAS_SHORTHAND`

Get busy Masoning
>`#import "Masonry-FlattenLayout.h"`

# TODO
1. Send pull request to Masonry
1. Support swift (SnapKit)
1. .greaterOrEqualTill() and similar functions
