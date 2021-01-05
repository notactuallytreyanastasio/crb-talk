# Bobby's Initial Thoughts

## High Level: Why is this even intheresting?

### Why does Ruby have so many models to threads anyways?
  - Also what is a thread and what are its limitation and how do I not ramble about it for an hour but show history
  - That history ties heavily into the GC, and global locks
  - But we have a new, safer interface!

#### So anways, Threads, Fibers, and Ractors (those three models to threads)
  - dont hit too hard on threads or fibers
  - double check fibers are truly the interface underneath to ractors

#### Basics of ractors
  - follow the README but make it more beginner approachable

## Ractors

### Ruby Actor

#### What is an Actor (the Actor Model)
  - they have a couple things
  - state
  - ability to send a message
  - ability to receive a message

Who do they send messages to? other ractors
Who do they receive messages from? other ractors?

How do they run? parallel

Did that used to be a lot scarier of a thing to do in the Ruby stdlib?
Yes.

This is such a great thing.

## Where to go from here

### Message sending and receiving in an abstract manner maybe?

###  Tie into ETL processes for example that is to come

### Start off with practical usage

#### Maybe an ETL interface?
#### Could do something like typecast (though might be confusing with other ruby 3 semantics) -> default -> transform
#### Get some sort of atleast 3 series of actors passing messages to do these things
#### Start with trivial operations for sure

### Now, to the nitty gritty
#### I still need to research this more, I know the basics but not enough to write w/o just copying docs rn
#### We'll get this show on the road after the prior section, learning is doing


### There are several blocking operations (waiting send, waiting yield and waiting take) so you can make a program which has dead-lock and live-lock issues.
#### this will be a thing to hardcore dive into as a caveat, maybe last

## if we have more time after this maybe talk about more fiber improvements
