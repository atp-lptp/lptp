[lemma(app31,
  all [x1,x2,x3]: 
   (succeeds app(?x1,?x2,?x3) => gr(?x3) & gr(?x2) & gr(?x1) \/
     ~ gr(?x3) & gr(?x2) & ~ gr(?x1) \/ ~ gr(?x3) & ~ gr(?x2) & gr(?x1) \/
     ~ gr(?x3) & ~ gr(?x2) & ~ gr(?x1)),
  induction(
   [all [x1,x2,x3]: 
     (succeeds app(?x1,?x2,?x3) => gr(?x3) & gr(?x2) & gr(?x1) \/
       ~ gr(?x3) & gr(?x2) & ~ gr(?x1) \/ ~ gr(?x3) & ~ gr(?x2) & gr(?x1) \/
       ~ gr(?x3) & ~ gr(?x2) & ~ gr(?x1))],
   [step([x4],[],
     [cases(gr(?x4),
       [gr(?x4) & gr(?x4),
        gr(?x4) & gr(?x4) & gr([]),
        gr(?x4) & gr(?x4) & gr([]) \/ ~ gr(?x4) & gr(?x4) & ~ gr([]),
        gr(?x4) & gr(?x4) & gr([]) \/ ~ gr(?x4) & gr(?x4) & ~ gr([]) \/
        ~ gr(?x4) & ~ gr(?x4) & gr([]),
        gr(?x4) & gr(?x4) & gr([]) \/ ~ gr(?x4) & gr(?x4) & ~ gr([]) \/
        ~ gr(?x4) & ~ gr(?x4) & gr([]) \/ ~ gr(?x4) & ~ gr(?x4) & ~ gr([])],
       ~ gr(?x4),
       [~ gr(?x4) & ~ gr(?x4),
        ~ gr(?x4) & ~ gr(?x4) & gr([]),
        gr(?x4) & gr(?x4) & gr([]) \/ ~ gr(?x4) & gr(?x4) & ~ gr([]) \/
        ~ gr(?x4) & ~ gr(?x4) & gr([]),
        gr(?x4) & gr(?x4) & gr([]) \/ ~ gr(?x4) & gr(?x4) & ~ gr([]) \/
        ~ gr(?x4) & ~ gr(?x4) & gr([]) \/ ~ gr(?x4) & ~ gr(?x4) & ~ gr([])],
       gr(?x4) & gr(?x4) & gr([]) \/ ~ gr(?x4) & gr(?x4) & ~ gr([]) \/
       ~ gr(?x4) & ~ gr(?x4) & gr([]) \/ ~ gr(?x4) & ~ gr(?x4) & ~ gr([]))],
     gr(?x4) & gr(?x4) & gr([]) \/ ~ gr(?x4) & gr(?x4) & ~ gr([]) \/
     ~ gr(?x4) & ~ gr(?x4) & gr([]) \/ ~ gr(?x4) & ~ gr(?x4) & ~ gr([])),
    step([x5,x6,x7,x8],
     [gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
      ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/ ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
      succeeds app(?x6,?x7,?x8)],
     [cases(gr(?x5),
       cases(gr(?x6),
        cases(gr(?x7),
         cases(gr(?x8),
          [gr(?x8) & gr(?x7),
           gr(?x8) & gr(?x7) & gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
           gr(?x5) & gr(?x8),
           gr([?x5|?x8]) => gr(?x5) & gr(?x8),
           assume(~ (gr(?x5) & gr(?x8)),
            contra(gr([?x5|?x8]),
             [gr(?x5) & gr(?x8),
              ff]),
            ~ gr([?x5|?x8])),
           gr([?x5|?x8]) <=> gr(?x5) & gr(?x8) by lemma(axiom_2_5),
           gr([?x5|?x8]) & gr(?x7),
           gr(?x5) & gr(?x6),
           gr([?x5|?x6]) => gr(?x5) & gr(?x6),
           assume(~ (gr(?x5) & gr(?x6)),
            contra(gr([?x5|?x6]),
             [gr(?x5) & gr(?x6),
              ff]),
            ~ gr([?x5|?x6])),
           gr([?x5|?x6]) <=> gr(?x5) & gr(?x6) by lemma(axiom_2_5),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          ~ gr(?x8),
          [contra(gr(?x8) & gr(?x7),[gr(?x8),~ gr(?x8),ff]),
           ~ (gr(?x8) & gr(?x7)),
           contra(gr(?x8) & gr(?x7) & gr(?x6),
            [gr(?x8) & gr(?x7),
             ~ (gr(?x8) & gr(?x7)),
             ff]),
           ~ (gr(?x8) & gr(?x7) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x8) & gr(?x7) & ~ gr(?x6),[]),
           ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(~ gr(?x7),[]),
           ~ ~ gr(?x7),
           contra(~ gr(?x8) & ~ gr(?x7),[]),
           ~ (~ gr(?x8) & ~ gr(?x7)),
           contra(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            [~ gr(?x8) & ~ gr(?x7),
             ~ (~ gr(?x8) & ~ gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[]),
           ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
           gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
         ~ gr(?x7),
         cases(gr(?x8),
          [contra(gr(?x8) & gr(?x7),[]),
           ~ (gr(?x8) & gr(?x7)),
           contra(gr(?x8) & gr(?x7) & gr(?x6),
            [gr(?x8) & gr(?x7),
             ~ (gr(?x8) & gr(?x7)),
             ff]),
           ~ (gr(?x8) & gr(?x7) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x8) & gr(?x7) & ~ gr(?x6),[]),
           ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(~ gr(?x8),[]),
           ~ ~ gr(?x8),
           contra(~ gr(?x8) & ~ gr(?x7),
            [gr(?x8),
             ~ gr(?x8),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7)),
           contra(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            [~ gr(?x8) & ~ gr(?x7),
             ~ (~ gr(?x8) & ~ gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[]),
           ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          ~ gr(?x8),
          [~ gr(?x8) & ~ gr(?x7),
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
           ~ gr(?x5) \/ ~ gr(?x8),
           ~ gr([?x5|?x8]) <=> ~ gr(?x5) \/ ~ gr(?x8) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & ~ gr(?x7),
           gr(?x5) & gr(?x6),
           gr([?x5|?x6]) => gr(?x5) & gr(?x6),
           assume(~ (gr(?x5) & gr(?x6)),
            contra(gr([?x5|?x6]),
             [gr(?x5) & gr(?x6),
              ff]),
            ~ gr([?x5|?x6])),
           gr([?x5|?x6]) <=> gr(?x5) & gr(?x6) by lemma(axiom_2_5),
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
           gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
         gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
         ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
         ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
          gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
          ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
          ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
        ~ gr(?x6),
        cases(gr(?x7),
         cases(gr(?x8),
          [contra(gr(?x8) & gr(?x7) & gr(?x6),[]),
           ~ (gr(?x8) & gr(?x7) & gr(?x6)),
           contra(~ gr(?x8),[]),
           ~ ~ gr(?x8),
           contra(~ gr(?x8) & gr(?x7),
            [gr(?x8),
             ~ gr(?x8),
             ff]),
           ~ (~ gr(?x8) & gr(?x7)),
           contra(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            [~ gr(?x8) & gr(?x7),
             ~ (~ gr(?x8) & gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(~ gr(?x8) & ~ gr(?x7) & gr(?x6),[]),
           ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(~ gr(?x7),[]),
           ~ ~ gr(?x7),
           contra(~ gr(?x8) & ~ gr(?x7),[]),
           ~ (~ gr(?x8) & ~ gr(?x7)),
           contra(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            [~ gr(?x8) & ~ gr(?x7),
             ~ (~ gr(?x8) & ~ gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          ~ gr(?x8),
          [~ gr(?x8) & gr(?x7),
           ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
           ~ gr(?x5) \/ ~ gr(?x8),
           ~ gr([?x5|?x8]) <=> ~ gr(?x5) \/ ~ gr(?x8) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & gr(?x7),
           ~ gr(?x5) \/ ~ gr(?x6),
           ~ gr([?x5|?x6]) <=> ~ gr(?x5) \/ ~ gr(?x6) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
           gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
         ~ gr(?x7),
         cases(gr(?x8),
          [contra(gr(?x8) & gr(?x7) & gr(?x6),[]),
           ~ (gr(?x8) & gr(?x7) & gr(?x6)),
           contra(~ gr(?x8) & gr(?x7),[]),
           ~ (~ gr(?x8) & gr(?x7)),
           contra(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            [~ gr(?x8) & gr(?x7),
             ~ (~ gr(?x8) & gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(~ gr(?x8) & ~ gr(?x7) & gr(?x6),[]),
           ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(~ gr(?x8),[]),
           ~ ~ gr(?x8),
           contra(~ gr(?x8) & ~ gr(?x7),
            [gr(?x8),
             ~ gr(?x8),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7)),
           contra(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            [~ gr(?x8) & ~ gr(?x7),
             ~ (~ gr(?x8) & ~ gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          ~ gr(?x8),
          [~ gr(?x8) & ~ gr(?x7),
           ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
           ~ gr(?x5) \/ ~ gr(?x8),
           ~ gr([?x5|?x8]) <=> ~ gr(?x5) \/ ~ gr(?x8) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & ~ gr(?x7),
           ~ gr(?x5) \/ ~ gr(?x6),
           ~ gr([?x5|?x6]) <=> ~ gr(?x5) \/ ~ gr(?x6) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
           gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
         gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
         ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
         ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
          gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
          ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
          ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
        gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
        ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/ ~ gr(?x8) & ~ gr(?x7) & 
        ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
         ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
         ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
         ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
       ~ gr(?x5),
       cases(gr(?x6),
        cases(gr(?x7),
         cases(gr(?x8),
          [gr(?x8) & gr(?x7),
           gr(?x8) & gr(?x7) & gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
           ~ gr(?x5) \/ ~ gr(?x8),
           ~ gr([?x5|?x8]) <=> ~ gr(?x5) \/ ~ gr(?x8) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & gr(?x7),
           ~ gr(?x5) \/ ~ gr(?x6),
           ~ gr([?x5|?x6]) <=> ~ gr(?x5) \/ ~ gr(?x6) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          ~ gr(?x8),
          [contra(gr(?x8) & gr(?x7),[gr(?x8),~ gr(?x8),ff]),
           ~ (gr(?x8) & gr(?x7)),
           contra(gr(?x8) & gr(?x7) & gr(?x6),
            [gr(?x8) & gr(?x7),
             ~ (gr(?x8) & gr(?x7)),
             ff]),
           ~ (gr(?x8) & gr(?x7) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x8) & gr(?x7) & ~ gr(?x6),[]),
           ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(~ gr(?x7),[]),
           ~ ~ gr(?x7),
           contra(~ gr(?x8) & ~ gr(?x7),[]),
           ~ (~ gr(?x8) & ~ gr(?x7)),
           contra(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            [~ gr(?x8) & ~ gr(?x7),
             ~ (~ gr(?x8) & ~ gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[]),
           ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
           gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
         ~ gr(?x7),
         cases(gr(?x8),
          [contra(gr(?x8) & gr(?x7),[]),
           ~ (gr(?x8) & gr(?x7)),
           contra(gr(?x8) & gr(?x7) & gr(?x6),
            [gr(?x8) & gr(?x7),
             ~ (gr(?x8) & gr(?x7)),
             ff]),
           ~ (gr(?x8) & gr(?x7) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x8) & gr(?x7) & ~ gr(?x6),[]),
           ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(~ gr(?x8),[]),
           ~ ~ gr(?x8),
           contra(~ gr(?x8) & ~ gr(?x7),
            [gr(?x8),
             ~ gr(?x8),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7)),
           contra(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            [~ gr(?x8) & ~ gr(?x7),
             ~ (~ gr(?x8) & ~ gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[]),
           ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          ~ gr(?x8),
          [~ gr(?x8) & ~ gr(?x7),
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
           ~ gr(?x5) \/ ~ gr(?x8),
           ~ gr([?x5|?x8]) <=> ~ gr(?x5) \/ ~ gr(?x8) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & ~ gr(?x7),
           ~ gr(?x5) \/ ~ gr(?x6),
           ~ gr([?x5|?x6]) <=> ~ gr(?x5) \/ ~ gr(?x6) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
           gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
         gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
         ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
         ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
          gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
          ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
          ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
        ~ gr(?x6),
        cases(gr(?x7),
         cases(gr(?x8),
          [contra(gr(?x8) & gr(?x7) & gr(?x6),[]),
           ~ (gr(?x8) & gr(?x7) & gr(?x6)),
           contra(~ gr(?x8),[]),
           ~ ~ gr(?x8),
           contra(~ gr(?x8) & gr(?x7),
            [gr(?x8),
             ~ gr(?x8),
             ff]),
           ~ (~ gr(?x8) & gr(?x7)),
           contra(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            [~ gr(?x8) & gr(?x7),
             ~ (~ gr(?x8) & gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(~ gr(?x8) & ~ gr(?x7) & gr(?x6),[]),
           ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(~ gr(?x7),[]),
           ~ ~ gr(?x7),
           contra(~ gr(?x8) & ~ gr(?x7),[]),
           ~ (~ gr(?x8) & ~ gr(?x7)),
           contra(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            [~ gr(?x8) & ~ gr(?x7),
             ~ (~ gr(?x8) & ~ gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          ~ gr(?x8),
          [~ gr(?x8) & gr(?x7),
           ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
           ~ gr(?x5) \/ ~ gr(?x8),
           ~ gr([?x5|?x8]) <=> ~ gr(?x5) \/ ~ gr(?x8) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & gr(?x7),
           ~ gr(?x5) \/ ~ gr(?x6),
           ~ gr([?x5|?x6]) <=> ~ gr(?x5) \/ ~ gr(?x6) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
           gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
         ~ gr(?x7),
         cases(gr(?x8),
          [contra(gr(?x8) & gr(?x7) & gr(?x6),[]),
           ~ (gr(?x8) & gr(?x7) & gr(?x6)),
           contra(~ gr(?x8) & gr(?x7),[]),
           ~ (~ gr(?x8) & gr(?x7)),
           contra(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            [~ gr(?x8) & gr(?x7),
             ~ (~ gr(?x8) & gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
           contra(~ gr(?x8) & ~ gr(?x7) & gr(?x6),[]),
           ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
           contra(~ gr(?x8),[]),
           ~ ~ gr(?x8),
           contra(~ gr(?x8) & ~ gr(?x7),
            [gr(?x8),
             ~ gr(?x8),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7)),
           contra(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            [~ gr(?x8) & ~ gr(?x7),
             ~ (~ gr(?x8) & ~ gr(?x7)),
             ff]),
           ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           contra(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
            cases(
             [case(~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x8) & ~ gr(?x7) & gr(?x6),
               [~ gr(?x8) & ~ gr(?x7) & gr(?x6),
                ~ (~ gr(?x8) & ~ gr(?x7) & gr(?x6)),
                ff]),
              case(~ gr(?x8) & gr(?x7) & ~ gr(?x6),
               [~ gr(?x8) & gr(?x7) & ~ gr(?x6),
                ~ (~ gr(?x8) & gr(?x7) & ~ gr(?x6)),
                ff]),
              case(gr(?x8) & gr(?x7) & gr(?x6),
               [gr(?x8) & gr(?x7) & gr(?x6),
                ~ (gr(?x8) & gr(?x7) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6)),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          ~ gr(?x8),
          [~ gr(?x8) & ~ gr(?x7),
           ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
           gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
           ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),
           ~ gr(?x5) \/ ~ gr(?x8),
           ~ gr([?x5|?x8]) <=> ~ gr(?x5) \/ ~ gr(?x8) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & ~ gr(?x7),
           ~ gr(?x5) \/ ~ gr(?x6),
           ~ gr([?x5|?x6]) <=> ~ gr(?x5) \/ ~ gr(?x6) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]),
           gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]),
           assume(gr(?x8) & gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
            ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6),[],
            gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
            ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
          gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
          ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
           gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
           ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
         gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
         ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/
         ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) &
          gr([?x5|?x6]) \/ ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
          ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
          ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
        gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
        ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/ ~ gr(?x8) & ~ gr(?x7) & 
        ~ gr(?x6) => gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
         ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
         ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
         ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6])),
       gr(?x8) & gr(?x7) & gr(?x6) \/ ~ gr(?x8) & gr(?x7) & ~ gr(?x6) \/
       ~ gr(?x8) & ~ gr(?x7) & gr(?x6) \/ ~ gr(?x8) & ~ gr(?x7) & ~ gr(?x6) =>
        gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
        ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
        ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
        ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))],
     gr([?x5|?x8]) & gr(?x7) & gr([?x5|?x6]) \/
     ~ gr([?x5|?x8]) & gr(?x7) & ~ gr([?x5|?x6]) \/
     ~ gr([?x5|?x8]) & ~ gr(?x7) & gr([?x5|?x6]) \/
     ~ gr([?x5|?x8]) & ~ gr(?x7) & ~ gr([?x5|?x6]))])),
 lemma(rev21,
  all [x1,x2]: 
   (succeeds rev(?x1,?x2) => gr(?x2) & gr(?x1) \/ ~ gr(?x2) & ~ gr(?x1)),
  induction(
   [all [x1,x2]: 
     (succeeds rev(?x1,?x2) => gr(?x2) & gr(?x1) \/ ~ gr(?x2) & ~ gr(?x1))],
   [step([],[],
     [gr([]) & gr([]),
      gr([]) & gr([]) \/ ~ gr([]) & ~ gr([])],
     gr([]) & gr([]) \/ ~ gr([]) & ~ gr([])),
    step([x3,x4,x5,x6],
     [gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
      succeeds rev(?x4,?x6),
      succeeds app(?x6,[?x3],?x5)],
     [succeeds app(?x6,[?x3],?x5) => gr(?x5) & gr([?x3]) & gr(?x6) \/
       ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
       ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
       ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6) by lemma(app31),
      cases(gr(?x3),
       cases(gr(?x4),
        cases(gr(?x5),
         cases(gr(?x6),
          [gr(?x6) & gr(?x4),
           gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
           gr([?x3]) <=> gr(?x3) by lemma(axiom_2_5_single_element_list),
           gr(?x5) & gr([?x3]),
           gr(?x5) & gr([?x3]) & gr(?x6),
           gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
           gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
           gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
           (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           gr(?x3) & gr(?x4),
           gr([?x3|?x4]) => gr(?x3) & gr(?x4),
           assume(~ (gr(?x3) & gr(?x4)),
            contra(gr([?x3|?x4]),
             [gr(?x3) & gr(?x4),
              ff]),
            ~ gr([?x3|?x4])),
           gr([?x3|?x4]) <=> gr(?x3) & gr(?x4) by lemma(axiom_2_5),
           gr(?x5) & gr([?x3|?x4]),
           gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          ~ gr(?x6),
          [contra(gr(?x5) & gr([?x3]) & gr(?x6),[]),
           ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           contra(~ gr(?x5) & gr([?x3]),
            [gr(?x5),
             ~ gr(?x5),
             ff]),
           ~ (~ gr(?x5) & gr([?x3])),
           contra(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            [~ gr(?x5) & gr([?x3]),
             ~ (~ gr(?x5) & gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),[]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(~ gr(?x3),[]),
           ~ ~ gr(?x3),
           gr([?x3]) <=> gr(?x3) by lemma(axiom_2_5_single_element_list),
           contra(~ gr(?x5) & ~ gr([?x3]),
            [gr([?x3]),
             ~ gr([?x3]),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3])),
           contra(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            [~ gr(?x5) & ~ gr([?x3]),
             ~ (~ gr(?x5) & ~ gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
          (gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
           ~ gr(?x5) & ~ gr([?x3|?x4])),
         ~ gr(?x5),
         cases(gr(?x6),
          [contra(gr(?x5) & gr([?x3]),[gr(?x5),~ gr(?x5),ff]),
           ~ (gr(?x5) & gr([?x3])),
           contra(gr(?x5) & gr([?x3]) & gr(?x6),
            [gr(?x5) & gr([?x3]),
             ~ (gr(?x5) & gr([?x3])),
             ff]),
           ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),[]),
           ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(~ gr(?x3),[]),
           ~ ~ gr(?x3),
           gr([?x3]) <=> gr(?x3) by lemma(axiom_2_5_single_element_list),
           contra(~ gr(?x5) & ~ gr([?x3]),
            [gr([?x3]),
             ~ gr([?x3]),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3])),
           contra(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            [~ gr(?x5) & ~ gr([?x3]),
             ~ (~ gr(?x5) & ~ gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),[]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          ~ gr(?x6),
          [contra(gr(?x6) & gr(?x4),[gr(?x6),~ gr(?x6),ff]),
           ~ (gr(?x6) & gr(?x4)),
           contra(~ gr(?x4),[]),
           ~ ~ gr(?x4),
           contra(~ gr(?x6) & ~ gr(?x4),[]),
           ~ (~ gr(?x6) & ~ gr(?x4)),
           contra(gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
            cases(
             [case(~ gr(?x6) & ~ gr(?x4),
               [~ gr(?x6) & ~ gr(?x4),
                ~ (~ gr(?x6) & ~ gr(?x4)),
                ff]),
              case(gr(?x6) & gr(?x4),
               [gr(?x6) & gr(?x4),
                ~ (gr(?x6) & gr(?x4)),
                ff])],
             ff)),
           ~ (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
            [gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
             ~ (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)),
             ff]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
          (gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
           ~ gr(?x5) & ~ gr([?x3|?x4])),
         (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
         (gr(?x5) & gr([?x3]) & gr(?x6) \/ ~ gr(?x5) & gr([?x3]) & 
          ~ gr(?x6) \/ ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
          ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
          ~ gr(?x5) & ~ gr([?x3|?x4])),
        ~ gr(?x4),
        cases(gr(?x5),
         cases(gr(?x6),
          [contra(gr(?x6) & gr(?x4),[]),
           ~ (gr(?x6) & gr(?x4)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x6) & ~ gr(?x4),
            [gr(?x6),
             ~ gr(?x6),
             ff]),
           ~ (~ gr(?x6) & ~ gr(?x4)),
           contra(gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
            cases(
             [case(~ gr(?x6) & ~ gr(?x4),
               [~ gr(?x6) & ~ gr(?x4),
                ~ (~ gr(?x6) & ~ gr(?x4)),
                ff]),
              case(gr(?x6) & gr(?x4),
               [gr(?x6) & gr(?x4),
                ~ (gr(?x6) & gr(?x4)),
                ff])],
             ff)),
           ~ (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
            [gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
             ~ (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)),
             ff]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          ~ gr(?x6),
          [contra(gr(?x5) & gr([?x3]) & gr(?x6),[]),
           ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           contra(~ gr(?x5) & gr([?x3]),
            [gr(?x5),
             ~ gr(?x5),
             ff]),
           ~ (~ gr(?x5) & gr([?x3])),
           contra(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            [~ gr(?x5) & gr([?x3]),
             ~ (~ gr(?x5) & gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),[]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(~ gr(?x3),[]),
           ~ ~ gr(?x3),
           gr([?x3]) <=> gr(?x3) by lemma(axiom_2_5_single_element_list),
           contra(~ gr(?x5) & ~ gr([?x3]),
            [gr([?x3]),
             ~ gr([?x3]),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3])),
           contra(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            [~ gr(?x5) & ~ gr([?x3]),
             ~ (~ gr(?x5) & ~ gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
          (gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
           ~ gr(?x5) & ~ gr([?x3|?x4])),
         ~ gr(?x5),
         cases(gr(?x6),
          [contra(gr(?x5) & gr([?x3]),[gr(?x5),~ gr(?x5),ff]),
           ~ (gr(?x5) & gr([?x3])),
           contra(gr(?x5) & gr([?x3]) & gr(?x6),
            [gr(?x5) & gr([?x3]),
             ~ (gr(?x5) & gr([?x3])),
             ff]),
           ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),[]),
           ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(~ gr(?x3),[]),
           ~ ~ gr(?x3),
           gr([?x3]) <=> gr(?x3) by lemma(axiom_2_5_single_element_list),
           contra(~ gr(?x5) & ~ gr([?x3]),
            [gr([?x3]),
             ~ gr([?x3]),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3])),
           contra(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            [~ gr(?x5) & ~ gr([?x3]),
             ~ (~ gr(?x5) & ~ gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),[]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          ~ gr(?x6),
          [~ gr(?x6) & ~ gr(?x4),
           gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
           gr([?x3]) <=> gr(?x3) by lemma(axiom_2_5_single_element_list),
           ~ gr(?x5) & gr([?x3]),
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
           gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
           gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
           gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
           (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           ~ gr(?x3) \/ ~ gr(?x4),
           ~ gr([?x3|?x4]) <=> ~ gr(?x3) \/ ~ gr(?x4) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr(?x5) & ~ gr([?x3|?x4]),
           gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
          (gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
           ~ gr(?x5) & ~ gr([?x3|?x4])),
         (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
         (gr(?x5) & gr([?x3]) & gr(?x6) \/ ~ gr(?x5) & gr([?x3]) & 
          ~ gr(?x6) \/ ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
          ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
          ~ gr(?x5) & ~ gr([?x3|?x4])),
        (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
        (gr(?x5) & gr([?x3]) & gr(?x6) \/ ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
         ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
         ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
         ~ gr(?x5) & ~ gr([?x3|?x4])),
       ~ gr(?x3),
       cases(gr(?x4),
        cases(gr(?x5),
         cases(gr(?x6),
          [~ gr([?x3]) <=> ~ gr(?x3) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           contra(gr(?x5) & gr([?x3]),
            [gr([?x3]),
             ~ gr([?x3]),
             ff]),
           ~ (gr(?x5) & gr([?x3])),
           contra(gr(?x5) & gr([?x3]) & gr(?x6),
            [gr(?x5) & gr([?x3]),
             ~ (gr(?x5) & gr([?x3])),
             ff]),
           ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),[]),
           ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           contra(~ gr(?x5) & ~ gr([?x3]),
            [gr(?x5),
             ~ gr(?x5),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3])),
           contra(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            [~ gr(?x5) & ~ gr([?x3]),
             ~ (~ gr(?x5) & ~ gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),[]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          ~ gr(?x6),
          [contra(gr(?x5) & gr([?x3]) & gr(?x6),[]),
           ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
           ~ gr([?x3]) <=> ~ gr(?x3) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           contra(~ gr(?x5) & gr([?x3]),
            [gr([?x3]),
             ~ gr([?x3]),
             ff]),
           ~ (~ gr(?x5) & gr([?x3])),
           contra(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            [~ gr(?x5) & gr([?x3]),
             ~ (~ gr(?x5) & gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),[]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           contra(~ gr(?x5) & ~ gr([?x3]),
            [gr(?x5),
             ~ gr(?x5),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3])),
           contra(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            [~ gr(?x5) & ~ gr([?x3]),
             ~ (~ gr(?x5) & ~ gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
          (gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
           ~ gr(?x5) & ~ gr([?x3|?x4])),
         ~ gr(?x5),
         cases(gr(?x6),
          [gr(?x6) & gr(?x4),
           gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
           ~ gr([?x3]) <=> ~ gr(?x3) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           ~ gr(?x5) & ~ gr([?x3]),
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
           gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
           gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
           (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           ~ gr(?x3) \/ ~ gr(?x4),
           ~ gr([?x3|?x4]) <=> ~ gr(?x3) \/ ~ gr(?x4) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr(?x5) & ~ gr([?x3|?x4]),
           gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          ~ gr(?x6),
          [contra(gr(?x6) & gr(?x4),[gr(?x6),~ gr(?x6),ff]),
           ~ (gr(?x6) & gr(?x4)),
           contra(~ gr(?x4),[]),
           ~ ~ gr(?x4),
           contra(~ gr(?x6) & ~ gr(?x4),[]),
           ~ (~ gr(?x6) & ~ gr(?x4)),
           contra(gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
            cases(
             [case(~ gr(?x6) & ~ gr(?x4),
               [~ gr(?x6) & ~ gr(?x4),
                ~ (~ gr(?x6) & ~ gr(?x4)),
                ff]),
              case(gr(?x6) & gr(?x4),
               [gr(?x6) & gr(?x4),
                ~ (gr(?x6) & gr(?x4)),
                ff])],
             ff)),
           ~ (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
            [gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
             ~ (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)),
             ff]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
          (gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
           ~ gr(?x5) & ~ gr([?x3|?x4])),
         (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
         (gr(?x5) & gr([?x3]) & gr(?x6) \/ ~ gr(?x5) & gr([?x3]) & 
          ~ gr(?x6) \/ ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
          ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
          ~ gr(?x5) & ~ gr([?x3|?x4])),
        ~ gr(?x4),
        cases(gr(?x5),
         cases(gr(?x6),
          [~ gr([?x3]) <=> ~ gr(?x3) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           contra(gr(?x5) & gr([?x3]),
            [gr([?x3]),
             ~ gr([?x3]),
             ff]),
           ~ (gr(?x5) & gr([?x3])),
           contra(gr(?x5) & gr([?x3]) & gr(?x6),
            [gr(?x5) & gr([?x3]),
             ~ (gr(?x5) & gr([?x3])),
             ff]),
           ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),[]),
           ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           contra(~ gr(?x5) & ~ gr([?x3]),
            [gr(?x5),
             ~ gr(?x5),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3])),
           contra(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            [~ gr(?x5) & ~ gr([?x3]),
             ~ (~ gr(?x5) & ~ gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),[]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          ~ gr(?x6),
          [contra(gr(?x5) & gr([?x3]) & gr(?x6),[]),
           ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
           ~ gr([?x3]) <=> ~ gr(?x3) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           contra(~ gr(?x5) & gr([?x3]),
            [gr([?x3]),
             ~ gr([?x3]),
             ff]),
           ~ (~ gr(?x5) & gr([?x3])),
           contra(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            [~ gr(?x5) & gr([?x3]),
             ~ (~ gr(?x5) & gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
           contra(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),[]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           contra(~ gr(?x5) & ~ gr([?x3]),
            [gr(?x5),
             ~ gr(?x5),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3])),
           contra(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            [~ gr(?x5) & ~ gr([?x3]),
             ~ (~ gr(?x5) & ~ gr([?x3])),
             ff]),
           ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra(gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
            cases(
             [case(~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
               [~ gr(?x5) & ~ gr([?x3]) & gr(?x6),
                ~ (~ gr(?x5) & ~ gr([?x3]) & gr(?x6)),
                ff]),
              case(~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
               [~ gr(?x5) & gr([?x3]) & ~ gr(?x6),
                ~ (~ gr(?x5) & gr([?x3]) & ~ gr(?x6)),
                ff]),
              case(gr(?x5) & gr([?x3]) & gr(?x6),
               [gr(?x5) & gr([?x3]) & gr(?x6),
                ~ (gr(?x5) & gr([?x3]) & gr(?x6)),
                ff])],
             ff)),
           ~ 
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
          (gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
           ~ gr(?x5) & ~ gr([?x3|?x4])),
         ~ gr(?x5),
         cases(gr(?x6),
          [contra(gr(?x6) & gr(?x4),[]),
           ~ (gr(?x6) & gr(?x4)),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           contra(~ gr(?x6) & ~ gr(?x4),
            [gr(?x6),
             ~ gr(?x6),
             ff]),
           ~ (~ gr(?x6) & ~ gr(?x4)),
           contra(gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
            cases(
             [case(~ gr(?x6) & ~ gr(?x4),
               [~ gr(?x6) & ~ gr(?x4),
                ~ (~ gr(?x6) & ~ gr(?x4)),
                ff]),
              case(gr(?x6) & gr(?x4),
               [gr(?x6) & gr(?x4),
                ~ (gr(?x6) & gr(?x4)),
                ff])],
             ff)),
           ~ (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)),
           contra((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
            [gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
             ~ (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)),
             ff]),
           ~ 
           ((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6))),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          ~ gr(?x6),
          [~ gr(?x6) & ~ gr(?x4),
           gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4),
           ~ gr([?x3]) <=> ~ gr(?x3) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           ~ gr(?x5) & ~ gr([?x3]),
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
           gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6),
           (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
           (gr(?x5) & gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
            ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),
           ~ gr(?x3) \/ ~ gr(?x4),
           ~ gr([?x3|?x4]) <=> ~ gr(?x3) \/ ~ gr(?x4) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr(?x5) & ~ gr([?x3|?x4]),
           gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]),
           assume((gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
            (gr(?x5) & gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
             ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)),[],
            gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))],
          (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
          (gr(?x5) & gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
           ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
           ~ gr(?x5) & ~ gr([?x3|?x4])),
         (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
         (gr(?x5) & gr([?x3]) & gr(?x6) \/ ~ gr(?x5) & gr([?x3]) & 
          ~ gr(?x6) \/ ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
          ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
          ~ gr(?x5) & ~ gr([?x3|?x4])),
        (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
        (gr(?x5) & gr([?x3]) & gr(?x6) \/ ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
         ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
         ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
         ~ gr(?x5) & ~ gr([?x3|?x4])),
       (gr(?x6) & gr(?x4) \/ ~ gr(?x6) & ~ gr(?x4)) &
       (gr(?x5) & gr([?x3]) & gr(?x6) \/ ~ gr(?x5) & gr([?x3]) & ~ gr(?x6) \/
        ~ gr(?x5) & ~ gr([?x3]) & gr(?x6) \/
        ~ gr(?x5) & ~ gr([?x3]) & ~ gr(?x6)) => gr(?x5) & gr([?x3|?x4]) \/
        ~ gr(?x5) & ~ gr([?x3|?x4]))],
     gr(?x5) & gr([?x3|?x4]) \/ ~ gr(?x5) & ~ gr([?x3|?x4]))]))].