# Review, test, scan, verify

Use manual review, add as many tests as you can, run tools on the source code
and use tools that verify things at runtime (including fuzzing). Do all the
things that can be done to make sure your project has no obvious flaws.

## Review

Having another person look at your proposed change and perhaps ask questions
about specific choices and solutions is an excellent way to enhance quality.

Getting good and timely reviews by other people can be tough, as you then have
to rely on someone else, someone who might be preoccupied by something else
this week. Doing *good* reviews takes time and effort.

In many projects, we sometimes review our own submissions in the name of
progress. Sometimes we believe that getting a code change merged is more
important and worth the risk, than waiting for a review. A review we do not
know when or *if* it might happen.

Reviews are humans looking at changes. Humans miss a lot of things.

## Test

You need tests, many tests, to verify that your code actually does exactly
what it is intended and documented to do. Having a good test suite will also
help cover for mistakes done in the review process, as blatant omissions
should lead to test failures and an amended patch.

A good test suite also makes participation easier for outsiders. Newcomers can
test their changes better and with more confidence before proposing a
patch. It helps them avoid embarrassment.

I also find that it helps to add as many tests of the documentation as
possible. Like for example if you have lists or indexes of topics, write a
script that checks that the list is complete. Check that cross-references
work. Ensures better documentation going forward.

## Scan

Scan your code with code analyzers and run your test suite with extra
sanitizer tools to avoid memory leaks, undefined behaviors or other subtle
problems that may have sneaked in even if all (other) tests run fine.

Fix all warnings, silence all false positives.

## Verify

Even when all of the steps above are successful, you can do more.

- Run recurring tests even if your code did not change at all to catch issues
  when dependencies change behavior as they are updated over time.

- Implement fuzzing, which is a way to send garbage data to your APIs, to make
  sure that they endure such treatment properly.
