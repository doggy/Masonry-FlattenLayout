# Masonry-FlattenLayout
Masonry is good and this extension makes it better!

More ergonomic thinkable and readable code with the new methods: .gap() .equalTill()

# Hassle

Previously, a relative layout is a point to point assignment.

An example for the `[view1 mas_makeConstraints: ...]`
> make.right.equalTo(view2.mas_left).offset(-10)

* The right layout constraint of view1 are considered with particular edge, not with particular view.
* And the .offset(-10) is similar so we need thinking its value should be whether positive nor negative.

# How it should be?
* equalTill(), provides a view based assignment method in flatten layout

    `make.right.equalTill(view2)` is same as `make.right.equalTo(view2.mas_left)`
    
    The magic of this mechanism work is .equalTill() will lookup the firstLayoutAttribute of contraint and deciding which secondLayoutAttribute should be.
    
    Also, `make.top.equalTill(view2)` is same as `make.top.equalTo(view2.mas_bottom)`

* gap(), provide a view based offset value

    `make.right.equalTo(view2.mas_left).gap(10)` is same as `make.right.equalTo(view2.mas_left).offset(-10)`

# Conclusion
Seen that? View based flatten layout gives you an easier life!

You won't confusing which edge is need in relative layout and it autocompleted with equalTill()

One more, combination the above (of course you can):
> make.right.equalTill(view2).gap(10)

# TODO
1. send pull request to Masonry
1. swift support (SnapKit)
1. .greaterOrEqualTill() and similar functions
