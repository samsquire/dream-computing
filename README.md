# Notes on Dream Computing

I want my web service to stay up and running, scale to zero and scale up linearly.

Everything that can be parallelised can run in paralllel, if it would produce a speed up.

If I want compute on the edge then I also want a reliable fast distributed global data storage.

I want building my distributed system to be easy and scale endlessly.

I want to change a file, refresh and there is a zero downtime deploy, similar to PHP applications.

I don't want to think about running servers and updating and patching them and hardening them.

I don't want to construct templates of CloudFormation.

I dont want to write imperative YAML.

I dont want to write another backup script, CI pipeline. Backups should hook themselves automatically centrally.

I don't want to maintain or upgrade a Kubernetes cluster.

I dont want to upgrade a library used by 30 microservices.

I dont want to write a TypeScript API.

I dont want to write a REST API.

I want to see the proportion of time the app waits for IO and see how the multiplexing of CPU and IO is working. Async runtimes dont offer this information as easily as the "ps" command.

I want to set the current task in a pipeline and press a shortcut to rerun the current task. This is like a web browser you can ctrl+r to refresh the Target page.
I can type a number and run a different stage.

I want to see the AST of each compiler pipeline stage/pass



I don't want to think about cloud provisioning such as CloudFormation.

Bash scripts feel brittle but are sometimes fun to write but not to maintain or debug.

I want to define what should happen and for it to be robust and never break.

I don't to need to worry or think about database upgrades.

I don't want to worry or think about release management.

I dont want to think about IAM policies.

I want to upload my business logic and have it deployed and scaled automatically.

I want my website to be secure against spam submissions and against bots submitting things.

I want someone else to handle password resets and authentication.

I want my system to use to use the minimum privilege required.

I want rate limiting, load balancing, circuit breaking, debouncing.

I want control flow to be extremely flexible so that I can change the architecture of the software easily.

I want to use arrays to communicate data between threads.

I want these objects to be contiguous for performance.

I want batching for throughput but also low latency.

I want architecture to be easy to transform from one architecture to another.



# Extending Windows, Icons, Menus and Pointers with New Paradigms: Perhaps Algebra

Windows, Icons, Menus and Pointers have defined the desktop for many years. Hyperlinks kind of extended menus. I want to extend these ideas with new primitives.

Creating autonomous systems with computers is actually really difficult.

If you want to create a definition of something on a computer you have to write a turing machine to map the input to what you want.

I want to chain together actions into sequences and talk about things in terms of other things.

Rust sum types handling is similar to this.

This is not a general purpose programming language.

I want to tell the computer when something is true then have this behaviour. Or when this is like this, then it means this.

This is like a rule engine.

Macro recording systems are similar.

This talking about one thing in terms of another thing is algebra.

This is like an event or dispatch.



Parallel database queries

How to turn it into a table
function call is a relational insert

There is lines for threads and causality.

Relational algebra lets us talk about collections of things and rewrite things so they are efficiently traversed. Cardinality 

When I think of information systems I think of web based information retrieval systems such as content management systems and workflow systems.

These systems are often synchronous or "direct manipulation".

In these systems are we trying to get to a target state.

Menu output: term rewriting

point binding algebra

application (of functions) to context, state: inheritance, what do you transform


turing completeness of the transformation

# Tabular communication

Array transformation with optional noop


# Coroutine structure

Coroutines are stored in a table that stores state plus a data region for internal state.

 * the RIP code position
 * the stack position
 * buffer read cursor

interleave instructions

coroutines split into pieces, wired up

the schedule compiler can optionally create the grid at run time. at any point you can define what should happen when.

buckets

add another sql statement

select * from x inner join x.n = y.n order asc;

insert async rule
fact1 fact2 | fact3

waiting for these two events in any order
fact arrival counts, just an integer
        thread
fact1 3  2 0 1
fact2 6  8 9 0
fact3  7  2 2 3

coroutine-id << 24 | global-writecursor << 8

coroutines own their own read timestamp, so no data is missed

factgroup
  fact1
   coroutine1
  fact2
   coroutine2
  fact3
   coroutine3
factgroup
  fact1
  fact2
  fact3

coroutine, events/facts

coroutine needs to write data to other coroutines

thread safety
atomic bcast has a buffer in a sequence number
the coroutine can use the current sequence number

coroutine needs to read previous sequence number

essentially a graph


thread1
  factgroup1
    fact2  arival count 0
    fact3  arival count 0
  factgroup2
    fact1
    fact4
thread2
  factgroup1
    fact2   arrival count 0
    fact3   arrival count 0

fact2 fires on thread 1
fact3 fires on thread 2
arrival counts == thread count / max count, then increment factgroup count
factgroup++

if factgroup == factgroup size, then next factgroup
atomic bcast



parallel fact execution

attach a coroutine to events

spread a sql query across coroutines


grids of objects columns or rows
thats a tree and a timeline
timeline is another dimension
control flow timeline.

monad sequence bind to a column or row

join sides - any order in the future, like a staircase
graph traversal, left right, top down

paginated
  

The join is the traversal, can go left to right and top down
data and code as data
aggregate functions, trees, windows

join defines a grid, can take any items of that grid in any order, pattern

swap algebra

struct is a row
a join between structs
btrees
compile the btree API code

how to tell the computer this comes before this

a join is like a loop that goes in a different direction or a nested loop


# Scale to zero with capped costs

I dont want the resources to scale cost wise without limit.





No file not found errors
 * ultra high througput low latency protocols
 * the naive approach, counted btrees for performance
 * independent buckets of events

behaviour multiplexor - repeated sections of similar code not expressly duplicated, invisible method

# No more installation

Installation is a major effort.

deferred out of the hot loop

webidl

reassign all - algebraic moves

# No race conditions

When an event is fired and there is nobody to receive it.

# add information to the language for optimisation

Async decouples completion and a coroutine has multiple return points. Could name those return points.

Events say what happen and its compiled down.

fibonacci n - 1
+ fibonacci n

function
work
work
work
return x

work | work | work

if everything is asynchronous

set move

relational algebra movement between queries
async
a function can run in every set result
a row can be emitted between or around

promises in tables

arbitrary waits resyncs
efficient gear change

100 items of this is a batch, then resync on this
grids of data

join is a synchronization point
join on batch

combined with commutative events

# transpiling to C

two histories converge to one control flow

# monads

parsing

# pagination as events

control flow as a program

```
items
items[1:10]
items[10:20]
items[20:30]
```

method calls and trees get in the way of what we want to do

# Get all the rules generating right

observable behaviour can be turned into an efficient program
because is the problem ordering?


composition problem

paginate × debounce × rate-limit

observed behaviour

names define behaviours and theyre linked together somehow

terms resolve

you output algebraic names repeatedly until no more terms are matched

terms subsume other terms from anywhere
how to compile this to straight line code ? an order

template programming and traits and HM haskell type systems - do everything these do

# Joins are interactions

Relational algebra can be joins are interactions

A join is an interaction!

The order of a join is an efficient traversal.

A file is a tuple certain width wide.

A join has an order and the records are traversed.

It handles batching and async for us.

Relational algebra

Relational algebra represents work.

Centralised timestamp for ordering.

# High level features are API calls

Write in C most of the time. They can change control flow to take it out of a method.

alt tech

a web page which helps you build technical systems...
parallelism representation, compiler internals
virtual operating system
database tech

***array inboxes swap terms around no duplicate places for any value. simple rule decided where things go next

gui text gui, pagefulls, fast render any dimension slice through the data generating renderer

useful web page

words integrate

layered asts equivalence between layers. multidimensionality adjustable points in that layer

parallel layout
n body algorithm

code motion

global transformation mapped to local transformation 

relative to

Can I specify IO events as array items?

ordering and joins
separate stacks, separate orderings, stateful orderings
with what

do this again but with this

is a loop an array ?
joins on a loop

code motion and loops and ordering of behaviour

token UI everything is token mapping of state

tokens to generate everything
parallel token regions

for loops nested
map / reduce
ordering

ordering can infer the algorithm of the code to get there

outcome, end state, equivalent hits,
fusion of visits, autotransducer

start state, end state

inefficient to efficient

where is everything now
if two things move something to somewhere. is they independent. its in two places at once... identity

merging behaviours together
thats an interaction
x y

tabular where everything is now

how do you pass something through things...is that a function?

or a relation?

x y z position in function

relational map

function mapping to space

1 0 0
0 1 0
0 0 1

for i in range(0, 1):

equals
0 0 0

collections
colors
red
yellow
green

map global state to next state




mapping functions tells you the movement

write to file


I want observability of parallelism and concurrency: of IO and compute.

OpenLever
Composition problem

Two grid protocol timeline

a1     a2
  a1-b2b3