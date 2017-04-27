## Overview

The goal of the PureCSS library is to provide an implmentation of CSS in pure
Elm that leverages the elm type system to get compile-time warnings of CSS
errors.

While there are some very good and very robust implementations of CSS in elm to
date, including Richard Feldman's excellent elm-css, and Sean Hess' elm-style,
I found that neither of these let me write CSS in quite the way that I wanted to,
so I felt that it was time to add a new CSS library to the Elm ecosystem.


## Why is this useful?

One of the reasons that a type-oriented approach to a CSS implementation is
useful is that stylesheets gain the benefit of Elm's compile-time type-
checking to ensure that all CSS written follows the CSS Level 3 Specification,
meaning that like with its Javascript counterparts, it should not be possible
to write invalid CSS with PureCSS if the Stylesheets have been compiled
without error.

Compared to the approach taken by libraries such as elm-style, this should mean
faster CSS processing and better guarantees that all of the CSS you're able to
write with this library adheres strictly to the CSS3 specification.

For reference, elm-css uses a comparable type-oriented approach, and like
PureCSS should come with compile-time guarantees about the semantic accuracy
of the CSS and its compliance with the W3 consortium CSS specification.

That said, I've taken a different, perhaps more lightweight approach to
implementing type-safe CSS here, so it seems easier to reason about the
processing of CSS elements under the hood. This may well be because I'm
writing PureCSS and know the lib well compared to elm-css, but in either case
I'm doing my best to keep this library lightweight enough to be easily
readable, but also full-featured enough to implement the full CSS spec.


## Is this library well-tested?

Yes. Every exposed utility in this library is matched by test coverage that
can be found in /tests/Tests. I've tried to find a good balance between
brevity and completeness with these as well.


## Who maintains this library?

This library was written and is currently being maintained by Mike Zazaian, a
professional Elixir, Erlang, Elm, Javascript and Ruby programmer based in
Detroit, Michigan, USA.


## CSS Specification

The CSS specification used for this library was taken from the following
sources:

Properties:
https://www.w3.org/Style/CSS/all-properties.en.html

Values:
https://www.w3.org/TR/css3-values
