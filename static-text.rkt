#lang at-exp racket

(require scribble/base)

(provide top-matter review-format review-protocol threats-to-validity)

(define top-matter
  (list
  @para{Welcome to repo-repe-repro: the repository to repeat an
        experiment in ``reproducibility''!}

   @para{A group led by Christian Collberg attempted to
         @(hyperlink "http://reproducibility.cs.arizona.edu/"
                     "evaluate the buildability of artifacts")
         from research papers.
	 Our goal is to allow the community
         to review and
         reconstruct their findings.
       	 @bold{Note}: @emph{We are not the original
                                              authors! If you have
                                              questions about the
                                              original study, please
                                              contact them, not us!}}
   
   @para{We are grateful to Collberg, et al. for initiating this
         discussion and making all their data available. This is a
         valuable service based on an enormous amount of manual labor.
         Even if we end up disagreeing with their findings,
         we remain deeply appreciative of their service to the
         community by highlighting these important issues.}
   
   @para{We do disagree with Collberg, et al.'s use of the
         term ``reproducibility''.
         Many people, including ourselves, associate it with an
         independent reconstruction of a work.
         @(hyperlink "https://www.cs.purdue.edu/homes/jv/pubs/r3.pdf"
                     "This paper"), for instance,
         spells out the difference between repeatability and
         reproducibility and provides interesting examples.}

   ))

(define review-protocol
  (list

   @para{To participate, fork this repository on GitHub:}
   @centered{@(hyperlink"https://github.com/shriram/repro-in-cs" "https://github.com/shriram/repro-in-cs")}
   @para{You
         will need to do this so that you can edit or add files to your copy of the
         repository and then share them with us.  (Although you can clone the
         repository elsewhere, pull requests are easiest from GitHub;
         please help us keep our workload reasonable.)}

  @itemlist[

    @item{To @emph{dispute} a Collberg, et al. review---open to anyone---find
            the directory corresponding to the paper and create
            a file named @tt{dispute.txt}. In it, explain why
            you are disputing the review.}

    @item{To @emph{review} an artifact---open to anyone without a COI with
          the paper---make sure you understand what Collberg, et al. did
          (see section 3 of
                @(hyperlink "measuring-tr.pdf"
                            "their paper")).
          In addition, feel free to also run the system, but remember that that is
          not their primary metric. Using the format given below,
	  write your review in files as follows (if there's already one, append,
          don't replace):

      @itemlist[

        @item{If you believe the artifact @emph{passes}, write
          your findings in @tt{cleared.txt}.}

        @item{If it @emph{fails},
          write your findings in @tt{problem.txt}.}

        @item{If the artifact has been @emph{misclassified} by Collberg, et al. and
	  should not even be part of the study,
          write your findings in @tt{misclass.txt}. For instance: the paper is
          actually theoretical; the paper offers no code download at all; etc.}

      ]}

   ]
   
   @para{We need a standard for judgment. We believe a useful standard is
         @(hyperlink "http://en.wikipedia.org/wiki/Person_having_ordinary_skill_in_the_art"
                     "PHOSITA"). 
         That is, when an artifact doesn't build or run out of the box, you 
         should make only reasonable (and minimal) changes. If with these it can 
         pass muster, consider clearing it (but indicate precisely what you had to 
         do). If with these it does not, reject it. In particular, even if you were 
         successful, if you had to use ingenuity, then the artifact should be regarded 
         as failing. If in doubt, feel free to discuss on social media. }
   
   @para{When you are done, commit and send a pull request.}
   ))

(define review-format
  (list
     @para{Please enter your review using the following format:}
     
     @verbatim{
       Time [in minutes]:
       Platform [OS, libraries, etc.]: 
       Skill level (at least the following; tell us if you have a paper-specific skill):
       - make, but that's about it
       - I can work around issues like failed dependencies and unset environment variables
       - I can build complex software like GCC and the Linux kernel
       Sequence of steps to build:
       SHA-1 of the downloaded files, dates of download, and URLs:
       Detailed evaluation (including comments about running it):}))

(define threats-to-validity
  (list
   @para{Some threats to the validity of our 
         attempt to validate their results include:}
   
   @itemlist[
     @item{We are using a slightly different standard of evaluation.}

     @item{Some artifacts may have changed since the time they were tested by
           Collberg's team.}

      @item{Some authors may have fixed their artifacts after reading the build
            logs on the original site.}

      @item{Different platforms may yield different build issues.}]))
