CREATE TABLE Words(WordID INT AUTO_INCREMENT NOT NULL PRIMARY KEY, Word VARCHAR(255));

CREATE TABLE Category(CategoryID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,Category VARCHAR(255));

CREATE TABLE WordCategory(
    CategoryID INT, 
    WordID INT, 
    PRIMARY KEY (CategoryID, WordID),  
    FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID) ON DELETE CASCADE ON UPDATE CASCADE, 
    FOREIGN KEY (WordID) REFERENCES Words (WordID) ON DELETE CASCADE ON UPDATE CASCADE);
    
CREATE TABLE Game(
    GameID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryID INT,
    ChosenWord INT,
    Status VARCHAR(100),
    FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ChosenWord) REFERENCES Words (WordID) ON DELETE CASCADE ON UPDATE CASCADE

);

CREATE TABLE Players(
    PlayerID INT PRIMARY KEY AUTO_INCREMENT,
    GameID INT,
    IsChameleon BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (GameID) REFERENCES Game (GameID) ON DELETE CASCADE ON UPDATE CASCADE
);



INSERT INTO Words (Word) VALUES
    ('Matches'),
    ('Gunpowder'),
    ('Wheel'),
    ('Printing'),
    ('Computer'),
    ('Internet'),
    ('Compass'),
    ('Plane'),
    ('TV'),
    ('Electricity'),
    ('Writing'),
    ('Steam Engine'),
    ('Car'),
    ('Telephone'),
    ('Camera'),
    ('Radio'),
    ('Octopus'),
    ('Starfish'),
    ('Lobster'),
    ('Seal'),
    ('Crab'),
    ('Giant Squid'),
    ('Sea Turtle'),
    ('Clownfish'),
    ('Shark'),
    ('Dolphin'),
    ('Seahorse'),
    ('Swordfish'),
    ('JellyFish'),
    ('Killer Whale'),
    ('Stingray'),
    ('Mermaid'),
    ('Damien Hirst'),
    ('Claude Monet'),
    ('Banksy'),
    ('Rembrandt'),
    ('Salvador Dali'),
    ('Pablo Picasso'),
    ('Leonardo da Vinci'),
    ('Andy Warhol'),
    ('Michaelangelo'),
    ('Mark Rothko'),
    ('Keith Haring'),
    ('Jeff Koons'),
    ('Vincent Van Goph'),
    ('Jackson Pollock'),
    ('Edward Hopper'),
    ('Georgia O''Keeffe'),
    ('Electric Guitar'),
    ('Piano'),
    ('Violin'),
    ('Drums'),
    ('Bass Guitar'),
    ('Saxophone'),
    ('Cello'),
    ('Glute'),
    ('Clarinet'),
    ('Trumpet'),
    ('Hard'),
    ('Bagpipes'),
    ('Harmonica'),
    ('Banjo'),
    ('Voice'),
    ('Uklele'),
    ('Pizza'),
    ('Pasta'),
    ('Eggs'),
    ('Susage'),
    ('Potatoes'),
    ('Salad'),
    ('Cheese'),
    ('Ice Cream'),
    ('Fish'),
    ('Soup'),
    ('Fruit'),
    ('Chocolate'),
    ('Cake'),
    ('Bread'),
    ('Chicken'),
    ('Beef'),
    ('The Very Hungry Caterpillar'),
    ('Harry Potter'),
    ('101 Dalmtions'),
    ('The Hobbit'),
    ('Peter Pan'),
    ('The Lion The Witch and The Wardrobe'),
    ('Charlie and the Chocolate Factory'),
    ('Where the Wild Things Are'),
    ('Stuart Little'),
    ('The Cat in the Hat'),
    ('Winnie the Pooh'),
    ('The Adventuers of Tom Sawyer'),
    ('Charlotte''s Web'),
    ('The Jungle Book'),
    ('Alice In Wonderland'),
    ('Matilda'),
    ('Coffee'),
    ('Tea'),
    ('Lemonade'),
    ('Coca-Cola'),
    ('Wine'),
    ('Beer'),
    ('Punch'),
    ('Tequilla'),
    ('Hot Chocolate'),
    ('Milkshake'),
    ('Root Beer'),
    ('Water'),
    ('Smoothie'),
    ('Orange Juice'),
    ('Milk'),
    ('Champagne'),
    ('Megan Rapinoe'),
    ('Michael Jordan'),
    ('Lebron James'),
    ('Michael Phelps'),
    ('Serena Williams'),
    ('Muhammad Ali'),
    ('Tom Brady'),
    ('Hope Solo'),
    ('Alex Rodriguez'),
    ('Wayne Gretzky'),
    ('Barry Bonds'),
    ('Tony Hawk'),
    ('Cori Coco Guaff'),
    ('Usain Bolt'),
    ('Hulk Hogan'),
    ('Pyramids'),
    ('Eiffel Tower'),
    ('Statue of Liberty'),
    ('Big Ben'),
    ('Stonehenge'),
    ('Golden Gate Bridge'),
    ('Colosseum'),
    ('Sydney Opera House'),
    ('Christ the Redeemer'),
    ('Machu Piccu'),
    ('Taj Mahal'),
    ('Hoover Dam'),
    ('Great Wall of China'),
    ('Empire State Building'),
    ('Mount Rushmore'),
    ('Leaning Tower of Pizza'),
    ('Lego'),
    ('Rocking Horse'),
    ('Super Soaker'),
    ('Cabbage Path Dolls'),
    ('Rubrick''s Cube'),
    ('Etch a Sketch'),
    ('Teddy Bear'),
    ('Play Doh'),
    ('Yo-yo'),
    ('Frisbee'),
    ('Hot Wheels'),
    ('Barbie'),
    ('Slinky'),
    ('G.I. Joe'),
    ('Hula Hoop'),
    ('Furby'),
    ('West Side Story'),
    ('Cats'),
    ('Jersey Boys'),
    ('School of Rock'),
    ('Phantom of the Opera'),
    ('Les Miserables'),
    ('Oliver'),
    ('Hamilton'),
    ('Chicago'),
    ('42nd Street'),
    ('Annie'),
    ('Book of Mormon'),
    ('Wicked'),
    ('Hairspray'),
    ('Mamma Mia'),
    ('Garfield'),
    ('Scooby-Doo'),
    ('Yogi Bear'),
    ('Bugs Bunny'),
    ('Mickey Mouse'),
    ('Goofy'),
    ('Jiminy Cricket'),
    ('Kung Fu Panda'),
    ('Nemo'),
    ('Tony the Tiger'),
    ('Snoopy'),
    ('Bambi'),
    ('Dumbo'),
    ('Wile E. Coyote'),
    ('Simba'),
    ('Sonic the Hedgehog'),
    ('Jurassic Park'),
    ('Jaws'),
    ('Raider of the Lost Arc'),
    ('The Avengers'),
    ('Transformers'),
    ('Toy Story '),
    ('Home Alone'),
    ('Titanic'),
    ('E.T.'),
    ('The Wizard of Oz'),
    ('King Kong'),
    ('The Matrix'),
    ('Shrek'),
    ('The Godfather'),
    ('Finding Nemo'),
    ('Avatar'),
    ('Clinton '),
    ('Reagan '),
    ('Roosevelt (FDR)'),
    ('Eisenhower'),
    ('George W. Bush'),
    ('George Bush Sr.'),
    ('Obama'),
    ('Trump'),
    ('Kennedy'),
    ('Lincoln'),
    ('Washington'),
    ('Nixon'),
    ('Teddy Roosevelt'),
    ('Jefferson'),
    ('Adams'),
    ('Carter'),
    ('Friends'),
    ('Sex and the City'),
    ('Star Trek'),
    ('The Walking Dead'),
    ('Breaking Bad'),
    ('Days of Our Lives'),
    ('Cheers'),
    ('Lost'),
    ('Happy Days'),
    ('The X-Files'),
    ('General Hospital'),
    ('The Big Bang Theory'),
    ('Mad Men'),
    ('South Park'),
    ('Game of Thrones'),
    ('Golden Girls'),
    ('Plane'),
    ('Tank'),
    ('Helicopter'),
    ('Cruise Ship'),
    ('Hovercraft'),
    ('Motorbike'),
    ('Bus'),
    ('Segway'),
    ('Cable Car'),
    ('Jet Ski'),
    ('Hot Air Balloon'),
    ('Train'),
    ('Spaceship'),
    ('Magic Carpet'),
    ('Broomstick'),
    ('Romans'),
    ('Egyptians'),
    ('Mayans'),
    ('Mongols'),
    ('Aztecs'),
    ('Japanese'),
    ('Persians'),
    ('Greeks'),
    ('Turks'),
    ('Vikings'),
    ('Incas'),
    ('Spanish'),
    ('Zulu'),
    ('Chinese'),
    ('Spartans'),
    ('Aliens'),
    ('UK'),
    ('Spain'),
    ('Japan'),
    ('Brazil'),
    ('France'),
    ('USA'),
    ('Italy'),
    ('Australia'),
    ('Germany'),
    ('Mexico'),
    ('India'),
    ('Isreal'),
    ('Canada'),
    ('China'),
    ('Russia'),
    ('Egypt'),
    ('Wood'),
    ('Paper'),
    ('Cotton'),
    ('Bronze'),
    ('Gold'),
    ('Ruby'),
    ('Diamond'),
    ('Crystal'),
    ('Flowers'),
    ('Silk'),
    ('Leather'),
    ('Pearl'),
    ('Coral'),
    ('Tin'),
    ('Wool'),
    ('The Beatles'),
    ('The Rolling Stones'),
    ('AC/DC'),
    ('Nirvana'),
    ('Spice Girls'),
    ('One Direction'),
    ('Guns N'' Roses'),
    ('Queen'),
    ('The Beach Boys'),
    ('The White Stripes'),
    ('Destiny''s Child'),
    ('Jackson 5'),
    ('ABBA'),
    ('The Eagles'),
    ('Blondie'),
    ('Fleetwood Mac'),
    ('Horror'),
    ('Action'),
    ('Thriller'),
    ('Sci-Fi'),
    ('Rom-Com'),
    ('Western'),
    ('Comedy'),
    ('Gangster'),
    ('Foreign Language'),
    ('War'),
    ('Documentary'),
    ('Musical'),
    ('Animations'),
    ('Zombie'),
    ('Sport'),
    ('Painting'),
    ('Scuplture'),
    ('Architecture'),
    ('Dance'),
    ('Literature'),
    ('Opera'),
    ('Stand-Up'),
    ('Comic Books'),
    ('Illustration'),
    ('Music'),
    ('Theatre'),
    ('Cinema'),
    ('Video Games'),
    ('Graffiti'),
    ('Fashion'),
    ('Photography'),
    ('Football'),
    ('Soccer'),
    ('Golf'),
    ('Baseball'),
    ('Basketball'),
    ('Ice Hockey'),
    ('Sailing'),
    ('Squash'),
    ('Tannis'),
    ('Badminton'),
    ('Motor racing'),
    ('Wrestling'),
    ('Lacrosse'),
    ('Volleyball'),
    ('Triathlon'),
    ('Cycling'),
    ('Stamps'),
    ('Trains'),
    ('Model Making'),
    ('Knitting'),
    ('Fishing'),
    ('Reading'),
    ('Gardening'),
    ('Travel'),
    ('Walking'),
    ('Pottery'),
    ('Cooking'),
    ('Yoga'),
    ('Hiking'),
    ('Shakespeare'),
    ('Tolkien'),
    ('C.S. Lewis'),
    ('J.K. Rowling '),
    ('Stephen King'),
    ('Earnest Hemingway'),
    ('Edgar Allen Poe'),
    ('Charles Dickens'),
    ('T.S. Eliot'),
    ('Tolstoy'),
    ('Jane Austen'),
    ('Mark Twain'),
    ('Danielle Steel'),
    ('John Grisham'),
    ('Dan Brown'),
    ('Agatha Christie'),
    ('New York City'),
    ('Moscow'),
    ('Dehli'),
    ('London'),
    ('Paris'),
    ('Rome'),
    ('Rio De Janeiro'),
    ('Sydney'),
    ('Tokyo'),
    ('Athens'),
    ('Cairo'),
    ('Hong Kong'),
    ('L.A.'),
    ('San Francisco'),
    ('Jerusalem'),
    ('Kitchen'),
    ('Hallway'),
    ('Greenhouse'),
    ('Bedroom'),
    ('Bathroom'),
    ('Dining Room'),
    ('Office'),
    ('Living Room'),
    ('Attic'),
    ('Basement'),
    ('Porch'),
    ('Nursery'),
    ('Den'),
    ('Bunker'),
    ('Shed'),
    ('Garage'),
    ('Elephant'),
    ('Giraffe'),
    ('Koala'),
    ('Tiger Woods'),
    ('Lion King'),
    ('Leopard'),
    ('Meerkat'),
    ('Buffalo'),
    ('Ostrich'),
    ('Owl'),
    ('Eagle'),
    ('Parrot'),
    ('Scorpian'),
    ('Alligator'),
    ('Zebra'),
    ('Gorilla'),
    ('Cyclops'),
    ('Pagasus'),
    ('Medusa'),
    ('Sphinx'),
    ('Werewolf'),
    ('Unicorn'),
    ('Dragon'),
    ('Troll'),
    ('Loch Ness Monster'),
    ('Phoenix'),
    ('Vampire'),
    ('Minotaur'),
    ('Hydra'),
    ('Yeti'),
    ('Centaur'),
    ('Math'),
    ('Chemistry'),
    ('Physics'),
    ('Biology'),
    ('History'),
    ('Philosophy'),
    ('Geography'),
    ('English'),
    ('Economics'),
    ('Art'),
    ('Gym'),
    ('Latin'),
    ('Religion'),
    ('Technology'),
    ('Lake'),
    ('Sea'),
    ('Valley'),
    ('Mountain'),
    ('River'),
    ('Desert'),
    ('Ocean'),
    ('Forest'),
    ('Jungle'),
    ('Island'),
    ('Glacier'),
    ('Waterfall'),
    ('Valcano'),
    ('Cave'),
    ('Artic'),
    ('Swamp'),
    ('Jesus'),
    ('Napolean'),
    ('Stalin'),
    ('Amelia Earhart'),
    ('Darwin'),
    ('Martin Luther King Jr.'),
    ('Pocahontas'),
    ('Einstein'),
    ('Christopher Columbus'),
    ('Rosa Parks'),
    ('Anne Frank'),
    ('Caesar'),
    ('Mozart'),
    ('Cleopatra'),
    ('Buddha'),
    ('Churchill'),
    ('Monopoly'),
    ('Scrabble'),
    ('Mouse Trap'),
    ('Guess Who'),
    ('Risk'),
    ('Operation'),
    ('Twister'),
    ('Pictionary'),
    ('Battleship'),
    ('Backgammon'),
    ('Clue'),
    ('Chess'),
    ('Checkers'),
    ('Trivial Pursuit'),
    ('Jenga'),
    ('Hungry Hungry Hippos'),
    ('California'),
    ('Texas'),
    ('Alabama'),
    ('Hawaii'),
    ('Florida'),
    ('Montana'),
    ('Nevada'),
    ('Mississippi'),
    ('North Carolina'),
    ('New York'),
    ('Kentucky'),
    ('Tennessee'),
    ('Colorado'),
    ('Illinois'),
    ('Alaska'),
    ('Star Wars'),
    ('Lord of the Rings'),
    ('Star Trek'),
    ('Blade Runner'),
    ('The Addams Family '),
    ('2001: A Space Odyssey'),
    ('Terminator'),
    ('His Dark Materials'),
    ('Dune'),
    ('The Princess Bride'),
    ('Alice''s Adventures In Wonderland'),
    ('Gulliver''s Travels'),
    ('The War of the Worlds'),
    ('The Martian'),
    ('WALL-E'),
    ('Edward Scissorhands'),
    ('Indiana Jones'),
    ('Mary Poppins'),
    ('Spiderman'),
    ('Catwoman'),
    ('James Bond'),
    ('Wonder Woman'),
    ('Princess Leia'),
    ('The Little Mermaid'),
    ('Dracula'),
    ('Lara Croft'),
    ('Robin Hood'),
    ('Hermione Granger'),
    ('Super Mario'),
    ('Homer Simpson'),
    ('Hercules'),
    ('Katniss Everdeen'),
    ('Fisherman'),
    ('Lumberjack'),
    ('Waiter'),
    ('Janitor'),
    ('Secretary'),
    ('Accountant'),
    ('Teacher'),
    ('Truck Driver'),
    ('Security Guard'),
    ('Chef'),
    ('Architect'),
    ('Police Officer'),
    ('Lawyer'),
    ('Carpenter'),
    ('Butcher'),
    ('Rock'),
    ('Heavy Metal'),
    ('Classical'),
    ('Funk'),
    ('Hip Hop'),
    ('Pop'),
    ('Techno'),
    ('Blues '),
    ('Rap'),
    ('Punk'),
    ('Indie'),
    ('Christmas'),
    ('Country'),
    ('House'),
    ('Disco'),
    ('Reggae'),
    ('Cinderella'),
    ('Goldilocks'),
    ('Jack and the Beanstalk'),
    ('Hare and the Tortoise'),
    ('Snow White'),
    ('Rapunzel'),
    ('Aladdin'),
    ('Princess and the Pea'),
    ('Little Red Riding Hood'),
    ('Pinocchio'),
    ('Beauty and the Beast'),
    ('Sleeping Beauty'),
    ('Hansel and Gretel'),
    ('Gingerbread Man'),
    ('Three Little Pigs'),
    ('Ghosts'),
    ('Spiders'),
    ('Monsters'),
    ('Rats'),
    ('Toilets'),
    ('Snakes'),
    ('Germs'),
    ('Clowns'),
    ('Needles'),
    ('Dogs'),
    ('Birds'),
    ('Insects'),
    ('Children'),
    ('Shadows'),
    ('Roller Coasters'),
    ('Planes');

INSERT INTO Category (Category) VALUES
    ('Inventions'),
    ('Under The Sea'),
    ('Artists'),
    ('Musical Instruments'),
    ('Food'),
    ('Children''s Books'),
    ('Drinks'),
    ('Sports Stars'),
    ('World Wonders'),
    ('Toys'),
    ('Musicals'),
    ('Cartoon Animals'),
    ('Movies'),
    ('Presidents'),
    ('TV Shows'),
    ('Transport'),
    ('Civilizations'),
    ('Countries'),
    ('Wedding Aniversaries'),
    ('Bands'),
    ('Film Genres'),
    ('The Arts'),
    ('Sports'),
    ('Hobbies'),
    ('Authors'),
    ('Cities'),
    ('Rooms'),
    ('Zoo'),
    ('Mythical Creatures'),
    ('School'),
    ('Geography'),
    ('Historical Figures'),
    ('Games'),
    ('States'),
    ('Sci-Fi Fantasy'),
    ('Fictional Characters'),
    ('Jobs'),
    ('Music'),
    ('Fairy Tales'),
    ('Phobias');
    
