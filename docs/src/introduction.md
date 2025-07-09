# Introduction

Shunt is a railway network controller for Minecraft for transporting resources on [Create mod][create-mod] trains between factories.

Shunt listens for the current state of factories in a world, learning about the resources they hold and the amounts they need.
When it detects that a factory, _A,_ has a shortage of some resource and that a factory, _B,_ has a surplus of that resource, it arranges a train to deliver from _B_ to _A._
All that’s required is to make sure there’s a computer running `shunt` at each factory single Shunt marshal can handle the rest.

As Shunt will take control of train-scheduling, there is no longer a need to create a brand new train dedicated to transporting small amounts of a single resource between two factories.
Instead, Shunt will consider all trains as part of a central pool and route them to where they’re needed, when they’re needed.
As such, the number of trains required to run a factory network is _significantly_ reduced.

<!-- To get started, [install shunt on a floppy disk](./how-to/install.md) and then follow the [let’s go shunt](./tutorials/lets-go-shunt.md). -->

The rest of these docs is organised as follows:

{{#diataxis compass}}

[create-mod]: https://github.com/Creators-of-Create/Create
