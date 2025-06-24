# Introduction

Freight is a railway network controller for Minecraft for transporting resources on [Create mod][create-mod] trains between factories.

Freight listens for the current state of factories in a world, learning about the resources they hold and the amounts they need.
When it detects that a factory, _A,_ has a shortage of some resource and that a factory, _B,_ has a surplus of that resource, it arranges a train to deliver from _B_ to _A._
All that’s required is to make sure there’s a computer running `freight` at each factory single freight marshal can handle the rest.

As Freight will take control of train-scheduling, there is no longer a need to create a brand new train dedicated to transporting small amounts of a single resource between two factories.
Instead, Freight will consider all trains as part of a central pool and route them to where they’re needed, when they’re needed.
As such, the number of trains required to run a factory network is _significantly_ reduced.

<!-- To get started, [install freight on a floppy disk](./how-to/install.md) and then follow the [let’s write get freighting](./tutorials/lets-get-freighting.md). -->

The rest of these docs is organised as follows:

<div class="quote-grid">
    <blockquote>
            <p>
                <div class="diataxis-card-header"><a href="./tutorials/index.html">Tutorials</a></div>
                Hands-on lessons in operating freight
            </p>
        </a>
    </blockquote>
    <blockquote>
        <p>
            <div class="diataxis-card-header">
                <a href="./how-to/index.html">How-to guides</a>
            </div>
            Step-by-step instructions for common tasks
        </p>
    </blockquote>
    <blockquote>
        <p>
            <div class="diataxis-card-header">
                <a href="./reference-materials/index.html">Reference materials</a>
            </div>
            Technical information about freight
        </p>
    </blockquote>
    <blockquote>
        <p>
            <div class="diataxis-card-header">
                <a href="./explanations/index.html">Explanations</a>
            </div>
            Long-form discussion of key topics
        </p>
    </blockquote>
</div>

[create-mod]: https://github.com/Creators-of-Create/Create
