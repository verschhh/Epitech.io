#include <SFML/Graphics.hpp>

int main() {
    sf::RenderWindow window(sf::VideoMode(1920, 1080), "SFML Window");
    sf::Texture t;
    t.loadFromFile("assets/menu_background.png");
    sf::Sprite s(t);
    while (window.isOpen()) {
        sf::Event event;
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed) {
                window.close();
            }
        }
        window.clear();
        window.draw(s);
        window.display();
    }

    return 0;
}