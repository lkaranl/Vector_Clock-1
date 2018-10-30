
People use physical time to order events. For example, we say that an event at 8:15 AM occurs before an event at 8:16 AM. In distributed systems, physical clocks are not always precise, so we can't rely on physical time to order events. Instead, we can use logical clocks to create a partial or total ordering of events. This article explores the concept of and an implementation of the logical clocks invented by Leslie Lamport in his seminal paper Time, Clocks, and the Ordering of Events in a Distributed System.

-------------------------------
# SEE IN SECTION ISSUES
