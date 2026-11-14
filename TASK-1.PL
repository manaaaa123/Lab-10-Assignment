% Square
square_area(Side, Area) :-
    Area is Side * Side.

square_perimeter(Side, Perimeter) :-
    Perimeter is Side * 4.

% Rectangle
rectangle_area(Length, Width, Area) :-
    Area is Length * Width.

rectangle_perimeter(Length, Width, Perimeter) :-
    Perimeter is 2 * (Length + Width).

% Triangle
triangle_area(Base, Height, Area) :-
    Area is (Base * Height) / 2.

triangle_perimeter(Side1, Side2, Side3, Perimeter) :-
    Perimeter is Side1 + Side2 + Side3.