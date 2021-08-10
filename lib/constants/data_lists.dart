// import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/book.dart';
import '../constants/theme_data.dart';

const Category AWAKEN = Category(id: 1, title: 'Awaken', color: kAwakenColor);
const Category ABILITY =
    Category(id: 2, title: 'Ability', color: kAbilityColor);
const Category APTITUDE =
    Category(id: 3, title: 'Aptitude', color: kAptitudeColor);
const Category ADVENTURE =
    Category(id: 4, title: 'Adventure', color: kAdventureColor);
const Category ACADEMY =
    Category(id: 5, title: 'Academy', color: kAcademyColor);
const Category AWARENESS =
    Category(id: 6, title: 'Awareness', color: kAwarenessColor);
const Category ACUMEN = Category(id: 7, title: 'Acumen', color: kAcumenColor);
const Category READ = Category(id: 8, title: 'Read', color: kReadColor);

const List<Category> CATEGORIES = const [
  AWAKEN,
  ABILITY,
  APTITUDE,
  ADVENTURE,
  ACADEMY,
  AWARENESS,
  ACUMEN,
  READ,
];

const List<Book> books = const [
  Book(
    bookId: 0,
    bookCategories: [1],
    title: 'Love Yourself Like Your Life Depends on it',
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/61TFrYiXmnL.jpg',
    metadata: ['Kamal Ravikant', '2020', '228 pages'],
    summary: LYLYLDOI,
    rating: 5,
    interest: Interest.Okay,
  ),
  Book(
    bookId: 1,
    bookCategories: [6],
    title: 'Guilt by Accusation',
    imageUrl: 'https://m.media-amazon.com/images/I/41aI7EyBF0L._SY346_.jpg',
    metadata: ['Alan M. Dershowitz', '2019', '194 pages'],
    summary: GBA,
    rating: 5,
    interest: Interest.Okay,
    isControversial: true,
  ),
  Book(
    bookId: 2,
    bookCategories: [1, 8],
    title: 'Rediscovering the Wisdom of Human Nature',
    imageUrl: 'https://m.media-amazon.com/images/I/51CKdH+wwUL.jpg',
    metadata: ['Chet Shupe', '2020', '225 pages'],
    summary: RTWOHN,
    rating: 4,
    interest: Interest.Interesting,
    isControversial: true,
  ),
  Book(
    bookId: 3,
    bookCategories: [5],
    title: 'Norse, Celtic Mythology & Runes',
    imageUrl: 'https://m.media-amazon.com/images/I/51AAEfct7zL._SY346_.jpg',
    metadata: ['Sofia Visconti', '2021', '315 pages'],
    summary: NCMR,
    rating: 5,
    interest: Interest.Okay,
    isAuthorWoman: true,
    isAuthorEthnic: true,
    isControversial: true,
  ),
  Book(
    bookId: 4,
    bookCategories: [3],
    title: 'Walt Disney\'s Way',
    imageUrl: 'https://m.media-amazon.com/images/I/41RsNPFssOL.jpg',
    metadata: ['Andrew Lock', '2020', '145 pages'],
    summary: WDW,
    rating: 4,
    interest: Interest.Boring,
  ),
  Book(
    bookId: 5,
    bookCategories: [2],
    title: 'Outlining Your Novel',
    imageUrl: 'https://m.media-amazon.com/images/I/41rtJ4W2ZZL.jpg',
    metadata: ['K. M. Weiland', '2013', '145 pages'],
    summary: OYN,
    rating: 5,
    interest: Interest.Okay,
    isAuthorWoman: true,
  ),
  Book(
    bookId: 6,
    bookCategories: [7],
    title: 'The Art of War',
    imageUrl: 'https://m.media-amazon.com/images/I/41ut5G5M5yL.SX150.jpg',
    metadata: ['Sun Tzu', '5th Century BC', '55 pages'],
    summary: TAOW,
    rating: 5,
    interest: Interest.Okay,
    isAuthorEthnic: true,
  ),
  Book(
    bookId: 7,
    bookCategories: [4],
    title: '1984',
    imageUrl: 'https://m.media-amazon.com/images/I/51HroeiyZCL.jpg',
    metadata: ['George Orwell', '1949', '328 pages'],
    summary: NTEF,
    rating: 5,
    interest: Interest.Interesting,
    isControversial: true,
  ),
];

//SUMMARIES
const NTEF =
    '''Nineteen Eighty-Four, Often Published as 1984, is a Dystopian novel by English writer George Orwell published in June 1949, whose themes centre on the risks of government overreach, totalitarianism and repressive regimentation of all persons and behaviours within society. The novel is set in an Imagined future, the year 1984, when much of the world has fallen victim to perpetual war, Omnipresent government surveillance, historical negationism and Propaganda.Animal Farm is an Allegorical novella by George Orwell, first Published in England on 17 August 1945. According to Orwell, the Fable reflects events leading up to the Russian Revolution of 1917 and Then on into the Statilinst era of the Soviet Union.''';

const TAOW =
    '''The Art of War is a Chinese military treatise that was written during the 6th century BC by Sun Tzu. Composed of 13 chapters, each of which is devoted to one aspect of warfare, it has long been praised as the definitive work on military strategies and tactics of its time.
The Art of War is one of the oldest books on military strategy in the world. It is the first and one of the most successful works on strategy and has had a huge influence on Eastern and Western military thinking, business tactics, and beyond. Sun Tzu was the first to recognize the importance of positioning in strategy and that position is affected both by objective conditions in the physical environment and the subjective opinions of competitive actors in that environment. He taught that strategy was not planning in the sense of working through a to-do list, but rather that it requires quick and appropriate responses to changing conditions.''';

const OYN =
    '''Writers often look upon outlines with fear and trembling. But when properly understood and correctly wielded, the outline is one of the most powerful weapons in a writer’s arsenal.
Outlining Your Novel: Map Your Way to Success will:
•Help you choose the right type of outline for you
•GubookIde you in brainstorming plot bookIdeas
•AbookId you in discovering your characters
•Show you how to structure your scenes
•Explain how to format your finished outline
•Instruct you in how to use your outline
•Reveal the benefits
•Dispel the misconceptions
Includes exclusive interviews with ten respected authors, answering important questions about outlining.''';

const WDW =
    '''Most people think of Walt Disney as a visionary, and he was, but he was also a highly skilled marketer.
In this unique book, maverick marketer Andrew Lock gubookIdes you through 17 success secrets from Walt, and explains how your business can apply them to follow Walt Disney’s way.
You’ll discover valuable lessons in sales, marketing, and customer service, as well as how to create memorableexperiences that will cause customers to return to your business, over and over again.
You’ll find this book easy to read, eye opening, exciting,and fun to implement...and that’s just the first page.''';

const NCMR =
    '''Norse & Celtic Mythology present a rich collection of stories. Through the ages they have inspired poets, authors, and songwriters alike with their ancient heritage of sagas, myths, legends, and battles.
Movies and television series about their way of life have surged in popularity. What makes it so fascinating is not the stories in themselves, although some are truly a feast to the eyes, but how they came to be and what they mean for the people that live by them. 
Let’s drink from the well of knowledge and jump into a realm of wonder, where nothing is as it seems! 
By the end of this book, you will be familiar with both Norse & Celtic Mythology. InsbookIde you will find heroic stories, myths, legends and epic tales of love and betrayal. You’ll discover who they were, how they lived and how they influenced the modern world. And, of course, you’ll know more about your favorite Gods & Godesses, such as how Thor got his famous hammer, Dagda Supreme God of The Celts and many more
Also in this book you will find, 
Runes: A GubookIde To The Magic, Meanings, Spells, Divination & Rituals Of Runes
Runes are, in fact, real artifacts - stones with runic inscriptions. They have both factual and mythological roots. From German tribes, to Vikings and to New Agers, Runes have played a powerful part in history.
InsbookIde we will unravel the mystery of Runes to examine significant facts and history that provbookIde us with a better understanding of them and how they can enhance your life.''';

const RTWOHN =
    '''This book was written to get us in touch with our own human nature—the inborn recipe of requirements for human wellbeing.
In case you haven't noticed, civilization wants us to follow a totally different recipe—one that keeps telling us to ignore what we feel, and act otherwise. This book tells the truth about what humans need to be happy, and how our civilized way of life insists that we spend the vast majority of our time doing the opposite of what we feel.
Evolution made us what we are—feeling beings. And that is how humanity lived, developed, and thrived, in intimate small groups of people who trusted, supported, and protected each other completely. Today, we all live largely in a state of emotional isolation from others. We feel the absence of intimacy—our most powerful need.
Most modern humans are aware of the anxieties and irritations of our modern lives, but we accept them as part of life-itself. So, most readers of this book will be shocked to find out how many of those things we call problems are not our own fault, at all, but are brought on by the unnatural weight of what civilization requires of us, emotionally. It wasn't just to shock you that I wrote this book. I wrote it to bring a change in perspective that will free us from the grip that modern institutions now have on the psyche of every human alive.''';

const GBA =
    '''Alan Dershowitz has been called “one of the most prominent and consistent defenders of civil liberties in America” by Politico and “the nation’s most peripatetic civil liberties lawyer and one of its most distinguished defenders of indivbookIdual rights” by Newsweek. Yet he has come under intense criticism for applying those same principles, and his famed “shoe‑on‑the‑other‑foot test,” to those accused of sexual misconduct.
In Guilt by Accusation, Dershowitz provbookIdes an in‑depth analysis of the false accusations against him, alongsbookIde a full presentation of the exculpatory evbookIdence that proves his account, including emails from his accuser and an admission of his innocence from her lawyer, DavbookId Boies. Additionally, he examines current attitudes toward accusations of sexual misconduct, which are today, in the age of #MeToo, accepted as implicit truth without giving the accused a fair chance to defend themselves and their innocence, and suggests possible pathways back to a society and legal system in which due process is respected above public opinion and the whims of social media mobs.
This book is Alan Dershowitz’s plea for fairness for both accuser and accused, his principled stand for due process no matter the allegation, and his compelling assertion of his own innocence. It is essential reading for anyone who wants to know the insbookIde story behind the accusations against him or who cares about the current societal debate over how we should handle accusations of sexual misconduct.
The #MeToo movement has generally been a force for good, but as with many good movements, it is being exploited by some bad people for personal profit. Supporters of the #MeToo movement must not allow false accusers to hurt real victims by hbookIding behind its virtuous shield, turning it into an exploitive sword against innocent people.''';

const LYLYLDOI =
    '''I almost dbookIdn't publish Love Yourself Like Your Life Depends On It.  I was terrified.  Here I was, a CEO who'd fallen apart after his company failed, writing a book about how loving himself saved him.  I thought I'd be a laughing stock and my career would be finished.
But I stepped through the fears and shared my truth with the world.  What happened next changed my life.
The book went viral.  Amazing people all over shared it online and on social media.  They bought copies for friends and family.  They wrote heartfelt reviews.  For some, this book literally saved their lives.  For others, it was the first time they ever loved themselves.
To think how close I was to giving into my fears.  An important life lesson.
Many readers reached out and showed me how they'd applied it.  They asked questions.  This taught me that, despite its success, what I'd shared wasn't enough.  To create lasting impact, I had to go deeper and share a lot more.  I owed it to this book.  I owed it to everyone who would read it. 
So, seven years after I first put it out, here it is.  All the questions I received, resolved.  My intention is that by the time you finish, not only will you be committed to loving yourself, you'll know exactly how to do it.  And most importantly, how to make it last.''';
