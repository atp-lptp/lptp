[lemma(deriv31,
  all [x1,x2,x3]: 
   (succeeds deriv(?x1,?x2,?x3) => gr(?x3) & gr(?x2) & gr(?x1) \/
     gr(?x3) & gr(?x2) & ~ gr(?x1) \/ ~ gr(?x3) & gr(?x2) & ~ gr(?x1)),
  induction(
   [all [x1,x2,x3]: 
     (succeeds deriv(?x1,?x2,?x3) => gr(?x3) & gr(?x2) & gr(?x1) \/
       gr(?x3) & gr(?x2) & ~ gr(?x1) \/ ~ gr(?x3) & gr(?x2) & ~ gr(?x1))],
   [step([],[],
     [gr(1) & gr(t),
      gr([t]) <=> gr(t) by lemma(axiom_2_5_single_element_list),
      gr(t) => gr(d(t)),
      assume(~ gr([t]),
       contra(gr(d(t)),
        [gr(d(t)),
         gr([t]),
         ff]),
       ~ gr(d(t))),
      gr(1) & gr(t) & gr(d(t)),
      gr(1) & gr(t) & gr(d(t)) \/ gr(1) & gr(t) & ~ gr(d(t)),
      gr(1) & gr(t) & gr(d(t)) \/ gr(1) & gr(t) & ~ gr(d(t)) \/
      ~ gr(1) & gr(t) & ~ gr(d(t))],
     gr(1) & gr(t) & gr(d(t)) \/ gr(1) & gr(t) & ~ gr(d(t)) \/
     ~ gr(1) & gr(t) & ~ gr(d(t))),
    step([x4],
     [succeeds atom(?x4)],
     [cases(gr(?x4),
       [gr(0) & gr(t),
        gr([?x4]) <=> gr(?x4) by lemma(axiom_2_5_single_element_list),
        gr(?x4) => gr(d(?x4)),
        assume(~ gr([?x4]),
         contra(gr(d(?x4)),
          [gr(d(?x4)),
           gr([?x4]),
           ff]),
         ~ gr(d(?x4))),
        gr(0) & gr(t) & gr(d(?x4)),
        gr(0) & gr(t) & gr(d(?x4)) \/ gr(0) & gr(t) & ~ gr(d(?x4)),
        gr(0) & gr(t) & gr(d(?x4)) \/ gr(0) & gr(t) & ~ gr(d(?x4)) \/
        ~ gr(0) & gr(t) & ~ gr(d(?x4))],
       ~ gr(?x4),
       [gr(0) & gr(t),
        ~ gr([?x4]) <=> ~ gr(?x4) by 
         lemma(axiom_2_5_single_element_list_de_morgan),
        gr(?x4) => gr(d(?x4)),
        assume(~ gr([?x4]),
         contra(gr(d(?x4)),
          [gr(d(?x4)),
           gr([?x4]),
           ff]),
         ~ gr(d(?x4))),
        gr(0) & gr(t) & ~ gr(d(?x4)),
        gr(0) & gr(t) & gr(d(?x4)) \/ gr(0) & gr(t) & ~ gr(d(?x4)),
        gr(0) & gr(t) & gr(d(?x4)) \/ gr(0) & gr(t) & ~ gr(d(?x4)) \/
        ~ gr(0) & gr(t) & ~ gr(d(?x4))],
       gr(0) & gr(t) & gr(d(?x4)) \/ gr(0) & gr(t) & ~ gr(d(?x4)) \/
       ~ gr(0) & gr(t) & ~ gr(d(?x4)))],
     gr(0) & gr(t) & gr(d(?x4)) \/ gr(0) & gr(t) & ~ gr(d(?x4)) \/
     ~ gr(0) & gr(t) & ~ gr(d(?x4))),
    step([x5,x6,x7,x8],
     [gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
      ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
      gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
      ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
      succeeds deriv(d(?x5),t,?x7),
      succeeds deriv(d(?x6),t,?x8)],
     [cases(gr(?x5),
       cases(gr(?x6),
        cases(gr(?x7),
         cases(gr(?x8),
          [gr(?x7) & gr(t),
           gr([?x5]) <=> gr(?x5) by lemma(axiom_2_5_single_element_list),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           gr(?x7) & gr(t) & gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x8) & gr(t),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           gr(?x8) & gr(t) & gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           gr([?x8]) <=> gr(?x8) by lemma(axiom_2_5_single_element_list),
           gr(?x7) & gr([?x8]),
           gr([?x7,?x8]) => gr(?x7) & gr([?x8]),
           assume(~ (gr(?x7) & gr([?x8])),
            contra(gr([?x7,?x8]),
             [gr(?x7) & gr([?x8]),
              ff]),
            ~ gr([?x7,?x8])),
           gr([?x7,?x8]) <=> gr(?x7) & gr([?x8]) by lemma(axiom_2_5),
           gr(?x7) & gr(?x8) => gr(?x7 + ?x8),
           assume(~ gr([?x7,?x8]),
            contra(gr(?x7 + ?x8),
             [gr(?x7 + ?x8),
              gr([?x7,?x8]),
              ff]),
            ~ gr(?x7 + ?x8)),
           gr(?x7 + ?x8) & gr(t),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x5) & gr([?x6]),
           gr([?x5,?x6]) => gr(?x5) & gr([?x6]),
           assume(~ (gr(?x5) & gr([?x6])),
            contra(gr([?x5,?x6]),
             [gr(?x5) & gr([?x6]),
              ff]),
            ~ gr([?x5,?x6])),
           gr([?x5,?x6]) <=> gr(?x5) & gr([?x6]) by lemma(axiom_2_5),
           gr(?x5) & gr(?x6) => gr(?x5 + ?x6),
           assume(~ gr([?x5,?x6]),
            contra(gr(?x5 + ?x6),
             [gr(?x5 + ?x6),
              gr([?x5,?x6]),
              ff]),
            ~ gr(?x5 + ?x6)),
           gr(?x5 + ?x6) & gr([]),
           gr([?x5 + ?x6]) => gr(?x5 + ?x6) & gr([]),
           assume(~ (gr(?x5 + ?x6) & gr([])),
            contra(gr([?x5 + ?x6]),
             [gr(?x5 + ?x6) & gr([]),
              ff]),
            ~ gr([?x5 + ?x6])),
           gr([?x5 + ?x6]) <=> gr(?x5 + ?x6) & gr([]) by lemma(axiom_2_5),
           gr(?x5 + ?x6) => gr(d(?x5 + ?x6)),
           assume(~ gr([?x5 + ?x6]),
            contra(gr(d(?x5 + ?x6)),
             [gr(d(?x5 + ?x6)),
              gr([?x5 + ?x6]),
              ff]),
            ~ gr(d(?x5 + ?x6))),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          ~ gr(?x8),
          [contra(gr(?x8) & gr(t),[gr(?x8),~ gr(?x8),ff]),
           ~ (gr(?x8) & gr(t)),
           contra(gr(?x8) & gr(t) & gr(d(?x6)),
            [gr(?x8) & gr(t),
             ~ (gr(?x8) & gr(t)),
             ff]),
           ~ (gr(?x8) & gr(t) & gr(d(?x6))),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & ~ gr(d(?x6)),
            [~ gr(d(?x6)),
             gr(d(?x6)),
             ff]),
           ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & gr(d(?x6)) \/
            gr(?x8) & gr(t) & ~ gr(d(?x6)),
            cases(
             [case(gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & gr(d(?x6)),
               [gr(?x8) & gr(t) & gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & gr(d(?x6))),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           contra(~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
            [~ gr(d(?x6)),
             gr(d(?x6)),
             ff]),
           ~ (~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & gr(d(?x6)) \/
            gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
            cases(
             [case(~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & gr(d(?x6)),
               [gr(?x8) & gr(t) & gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & gr(d(?x6))),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[]),
           ~ 
           ((gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6)))),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
          (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
           gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
         ~ gr(?x7),
         cases(gr(?x8),
          [contra(gr(?x7) & gr(t),[gr(?x7),~ gr(?x7),ff]),
           ~ (gr(?x7) & gr(t)),
           contra(gr(?x7) & gr(t) & gr(d(?x5)),
            [gr(?x7) & gr(t),
             ~ (gr(?x7) & gr(t)),
             ff]),
           ~ (gr(?x7) & gr(t) & gr(d(?x5))),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           gr([?x5]) <=> gr(?x5) by lemma(axiom_2_5_single_element_list),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           contra(gr(?x7) & gr(t) & ~ gr(d(?x5)),
            [~ gr(d(?x5)),
             gr(d(?x5)),
             ff]),
           ~ (gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(gr(?x7) & gr(t) & gr(d(?x5)) \/
            gr(?x7) & gr(t) & ~ gr(d(?x5)),
            cases(
             [case(gr(?x7) & gr(t) & ~ gr(d(?x5)),
               [gr(?x7) & gr(t) & ~ gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & ~ gr(d(?x5))),
                ff]),
              case(gr(?x7) & gr(t) & gr(d(?x5)),
               [gr(?x7) & gr(t) & gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & gr(d(?x5))),
                ff])],
             ff)),
           ~ 
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           gr([?x5]) <=> gr(?x5) by lemma(axiom_2_5_single_element_list),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           contra(~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
            [~ gr(d(?x5)),
             gr(d(?x5)),
             ff]),
           ~ (~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(gr(?x7) & gr(t) & gr(d(?x5)) \/
            gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
            cases(
             [case(~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
               [~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
                ~ (~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
                ff]),
              case(gr(?x7) & gr(t) & ~ gr(d(?x5)),
               [gr(?x7) & gr(t) & ~ gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & ~ gr(d(?x5))),
                ff]),
              case(gr(?x7) & gr(t) & gr(d(?x5)),
               [gr(?x7) & gr(t) & gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & gr(d(?x5))),
                ff])],
             ff)),
           ~ 
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
            [gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
             ~ 
             (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & 
              ~ gr(d(?x5)) \/ ~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
             ff]),
           ~ 
           ((gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6)))),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          ~ gr(?x8),
          [contra(gr(?x8) & gr(t),[gr(?x8),~ gr(?x8),ff]),
           ~ (gr(?x8) & gr(t)),
           contra(gr(?x8) & gr(t) & gr(d(?x6)),
            [gr(?x8) & gr(t),
             ~ (gr(?x8) & gr(t)),
             ff]),
           ~ (gr(?x8) & gr(t) & gr(d(?x6))),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & ~ gr(d(?x6)),
            [~ gr(d(?x6)),
             gr(d(?x6)),
             ff]),
           ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & gr(d(?x6)) \/
            gr(?x8) & gr(t) & ~ gr(d(?x6)),
            cases(
             [case(gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & gr(d(?x6)),
               [gr(?x8) & gr(t) & gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & gr(d(?x6))),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           contra(~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
            [~ gr(d(?x6)),
             gr(d(?x6)),
             ff]),
           ~ (~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & gr(d(?x6)) \/
            gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
            cases(
             [case(~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & gr(d(?x6)),
               [gr(?x8) & gr(t) & gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & gr(d(?x6))),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[]),
           ~ 
           ((gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6)))),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
          (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
           gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
         (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
          ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
         (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
          ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
          gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
          ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
        ~ gr(?x6),
        cases(gr(?x7),
         cases(gr(?x8),
          [gr(?x7) & gr(t),
           gr([?x5]) <=> gr(?x5) by lemma(axiom_2_5_single_element_list),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           gr(?x7) & gr(t) & gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x8) & gr(t),
           ~ gr([?x6]) <=> ~ gr(?x6) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           gr([?x8]) <=> gr(?x8) by lemma(axiom_2_5_single_element_list),
           gr(?x7) & gr([?x8]),
           gr([?x7,?x8]) => gr(?x7) & gr([?x8]),
           assume(~ (gr(?x7) & gr([?x8])),
            contra(gr([?x7,?x8]),
             [gr(?x7) & gr([?x8]),
              ff]),
            ~ gr([?x7,?x8])),
           gr([?x7,?x8]) <=> gr(?x7) & gr([?x8]) by lemma(axiom_2_5),
           gr(?x7) & gr(?x8) => gr(?x7 + ?x8),
           assume(~ gr([?x7,?x8]),
            contra(gr(?x7 + ?x8),
             [gr(?x7 + ?x8),
              gr([?x7,?x8]),
              ff]),
            ~ gr(?x7 + ?x8)),
           gr(?x7 + ?x8) & gr(t),
           ~ gr([?x6]) <=> ~ gr(?x6) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           ~ gr(?x5) \/ ~ gr([?x6]),
           ~ gr([?x5,?x6]) <=> ~ gr(?x5) \/ ~ gr([?x6]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5) & gr(?x6) => gr(?x5 + ?x6),
           assume(~ gr([?x5,?x6]),
            contra(gr(?x5 + ?x6),
             [gr(?x5 + ?x6),
              gr([?x5,?x6]),
              ff]),
            ~ gr(?x5 + ?x6)),
           ~ gr(?x5 + ?x6) \/ ~ gr([]),
           ~ gr([?x5 + ?x6]) <=> ~ gr(?x5 + ?x6) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5 + ?x6) => gr(d(?x5 + ?x6)),
           assume(~ gr([?x5 + ?x6]),
            contra(gr(d(?x5 + ?x6)),
             [gr(d(?x5 + ?x6)),
              gr([?x5 + ?x6]),
              ff]),
            ~ gr(d(?x5 + ?x6))),
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          ~ gr(?x8),
          [gr(?x7) & gr(t),
           gr([?x5]) <=> gr(?x5) by lemma(axiom_2_5_single_element_list),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           gr(?x7) & gr(t) & gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           ~ gr(?x8) & gr(t),
           ~ gr([?x6]) <=> ~ gr(?x6) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           ~ gr([?x8]) <=> ~ gr(?x8) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           ~ gr(?x7) \/ ~ gr([?x8]),
           ~ gr([?x7,?x8]) <=> ~ gr(?x7) \/ ~ gr([?x8]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x7) & gr(?x8) => gr(?x7 + ?x8),
           assume(~ gr([?x7,?x8]),
            contra(gr(?x7 + ?x8),
             [gr(?x7 + ?x8),
              gr([?x7,?x8]),
              ff]),
            ~ gr(?x7 + ?x8)),
           ~ gr(?x7 + ?x8) & gr(t),
           ~ gr([?x6]) <=> ~ gr(?x6) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           ~ gr(?x5) \/ ~ gr([?x6]),
           ~ gr([?x5,?x6]) <=> ~ gr(?x5) \/ ~ gr([?x6]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5) & gr(?x6) => gr(?x5 + ?x6),
           assume(~ gr([?x5,?x6]),
            contra(gr(?x5 + ?x6),
             [gr(?x5 + ?x6),
              gr([?x5,?x6]),
              ff]),
            ~ gr(?x5 + ?x6)),
           ~ gr(?x5 + ?x6) \/ ~ gr([]),
           ~ gr([?x5 + ?x6]) <=> ~ gr(?x5 + ?x6) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5 + ?x6) => gr(d(?x5 + ?x6)),
           assume(~ gr([?x5 + ?x6]),
            contra(gr(d(?x5 + ?x6)),
             [gr(d(?x5 + ?x6)),
              gr([?x5 + ?x6]),
              ff]),
            ~ gr(d(?x5 + ?x6))),
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
          (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
           gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
         ~ gr(?x7),
         cases(gr(?x8),
          [contra(gr(?x7) & gr(t),[gr(?x7),~ gr(?x7),ff]),
           ~ (gr(?x7) & gr(t)),
           contra(gr(?x7) & gr(t) & gr(d(?x5)),
            [gr(?x7) & gr(t),
             ~ (gr(?x7) & gr(t)),
             ff]),
           ~ (gr(?x7) & gr(t) & gr(d(?x5))),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           gr([?x5]) <=> gr(?x5) by lemma(axiom_2_5_single_element_list),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           contra(gr(?x7) & gr(t) & ~ gr(d(?x5)),
            [~ gr(d(?x5)),
             gr(d(?x5)),
             ff]),
           ~ (gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(gr(?x7) & gr(t) & gr(d(?x5)) \/
            gr(?x7) & gr(t) & ~ gr(d(?x5)),
            cases(
             [case(gr(?x7) & gr(t) & ~ gr(d(?x5)),
               [gr(?x7) & gr(t) & ~ gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & ~ gr(d(?x5))),
                ff]),
              case(gr(?x7) & gr(t) & gr(d(?x5)),
               [gr(?x7) & gr(t) & gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & gr(d(?x5))),
                ff])],
             ff)),
           ~ 
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           gr([?x5]) <=> gr(?x5) by lemma(axiom_2_5_single_element_list),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           contra(~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
            [~ gr(d(?x5)),
             gr(d(?x5)),
             ff]),
           ~ (~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(gr(?x7) & gr(t) & gr(d(?x5)) \/
            gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
            cases(
             [case(~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
               [~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
                ~ (~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
                ff]),
              case(gr(?x7) & gr(t) & ~ gr(d(?x5)),
               [gr(?x7) & gr(t) & ~ gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & ~ gr(d(?x5))),
                ff]),
              case(gr(?x7) & gr(t) & gr(d(?x5)),
               [gr(?x7) & gr(t) & gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & gr(d(?x5))),
                ff])],
             ff)),
           ~ 
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
            [gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
             ~ 
             (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & 
              ~ gr(d(?x5)) \/ ~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
             ff]),
           ~ 
           ((gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6)))),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          ~ gr(?x8),
          [contra(gr(?x7) & gr(t),[gr(?x7),~ gr(?x7),ff]),
           ~ (gr(?x7) & gr(t)),
           contra(gr(?x7) & gr(t) & gr(d(?x5)),
            [gr(?x7) & gr(t),
             ~ (gr(?x7) & gr(t)),
             ff]),
           ~ (gr(?x7) & gr(t) & gr(d(?x5))),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           gr([?x5]) <=> gr(?x5) by lemma(axiom_2_5_single_element_list),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           contra(gr(?x7) & gr(t) & ~ gr(d(?x5)),
            [~ gr(d(?x5)),
             gr(d(?x5)),
             ff]),
           ~ (gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(gr(?x7) & gr(t) & gr(d(?x5)) \/
            gr(?x7) & gr(t) & ~ gr(d(?x5)),
            cases(
             [case(gr(?x7) & gr(t) & ~ gr(d(?x5)),
               [gr(?x7) & gr(t) & ~ gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & ~ gr(d(?x5))),
                ff]),
              case(gr(?x7) & gr(t) & gr(d(?x5)),
               [gr(?x7) & gr(t) & gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & gr(d(?x5))),
                ff])],
             ff)),
           ~ 
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(~ gr(?x5),[]),
           ~ ~ gr(?x5),
           gr([?x5]) <=> gr(?x5) by lemma(axiom_2_5_single_element_list),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           contra(~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
            [~ gr(d(?x5)),
             gr(d(?x5)),
             ff]),
           ~ (~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(gr(?x7) & gr(t) & gr(d(?x5)) \/
            gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
            cases(
             [case(~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
               [~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
                ~ (~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
                ff]),
              case(gr(?x7) & gr(t) & ~ gr(d(?x5)),
               [gr(?x7) & gr(t) & ~ gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & ~ gr(d(?x5))),
                ff]),
              case(gr(?x7) & gr(t) & gr(d(?x5)),
               [gr(?x7) & gr(t) & gr(d(?x5)),
                ~ (gr(?x7) & gr(t) & gr(d(?x5))),
                ff])],
             ff)),
           ~ 
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
           contra(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
            [gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
             ~ 
             (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & 
              ~ gr(d(?x5)) \/ ~ gr(?x7) & gr(t) & ~ gr(d(?x5))),
             ff]),
           ~ 
           ((gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6)))),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
          (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
           gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
         (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
          ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
         (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
          ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
          gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
          ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
        (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
         ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
        (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
         ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
         gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
         ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
       ~ gr(?x5),
       cases(gr(?x6),
        cases(gr(?x7),
         cases(gr(?x8),
          [gr(?x7) & gr(t),
           ~ gr([?x5]) <=> ~ gr(?x5) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x8) & gr(t),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           gr(?x8) & gr(t) & gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           gr([?x8]) <=> gr(?x8) by lemma(axiom_2_5_single_element_list),
           gr(?x7) & gr([?x8]),
           gr([?x7,?x8]) => gr(?x7) & gr([?x8]),
           assume(~ (gr(?x7) & gr([?x8])),
            contra(gr([?x7,?x8]),
             [gr(?x7) & gr([?x8]),
              ff]),
            ~ gr([?x7,?x8])),
           gr([?x7,?x8]) <=> gr(?x7) & gr([?x8]) by lemma(axiom_2_5),
           gr(?x7) & gr(?x8) => gr(?x7 + ?x8),
           assume(~ gr([?x7,?x8]),
            contra(gr(?x7 + ?x8),
             [gr(?x7 + ?x8),
              gr([?x7,?x8]),
              ff]),
            ~ gr(?x7 + ?x8)),
           gr(?x7 + ?x8) & gr(t),
           ~ gr(?x5) \/ ~ gr([?x6]),
           ~ gr([?x5,?x6]) <=> ~ gr(?x5) \/ ~ gr([?x6]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5) & gr(?x6) => gr(?x5 + ?x6),
           assume(~ gr([?x5,?x6]),
            contra(gr(?x5 + ?x6),
             [gr(?x5 + ?x6),
              gr([?x5,?x6]),
              ff]),
            ~ gr(?x5 + ?x6)),
           ~ gr(?x5 + ?x6) \/ ~ gr([]),
           ~ gr([?x5 + ?x6]) <=> ~ gr(?x5 + ?x6) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5 + ?x6) => gr(d(?x5 + ?x6)),
           assume(~ gr([?x5 + ?x6]),
            contra(gr(d(?x5 + ?x6)),
             [gr(d(?x5 + ?x6)),
              gr([?x5 + ?x6]),
              ff]),
            ~ gr(d(?x5 + ?x6))),
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          ~ gr(?x8),
          [contra(gr(?x8) & gr(t),[gr(?x8),~ gr(?x8),ff]),
           ~ (gr(?x8) & gr(t)),
           contra(gr(?x8) & gr(t) & gr(d(?x6)),
            [gr(?x8) & gr(t),
             ~ (gr(?x8) & gr(t)),
             ff]),
           ~ (gr(?x8) & gr(t) & gr(d(?x6))),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & ~ gr(d(?x6)),
            [~ gr(d(?x6)),
             gr(d(?x6)),
             ff]),
           ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & gr(d(?x6)) \/
            gr(?x8) & gr(t) & ~ gr(d(?x6)),
            cases(
             [case(gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & gr(d(?x6)),
               [gr(?x8) & gr(t) & gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & gr(d(?x6))),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           contra(~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
            [~ gr(d(?x6)),
             gr(d(?x6)),
             ff]),
           ~ (~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & gr(d(?x6)) \/
            gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
            cases(
             [case(~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & gr(d(?x6)),
               [gr(?x8) & gr(t) & gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & gr(d(?x6))),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[]),
           ~ 
           ((gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6)))),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
          (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
           gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
         ~ gr(?x7),
         cases(gr(?x8),
          [~ gr(?x7) & gr(t),
           ~ gr([?x5]) <=> ~ gr(?x5) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x8) & gr(t),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           gr(?x8) & gr(t) & gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           ~ gr(?x7) \/ ~ gr([?x8]),
           ~ gr([?x7,?x8]) <=> ~ gr(?x7) \/ ~ gr([?x8]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x7) & gr(?x8) => gr(?x7 + ?x8),
           assume(~ gr([?x7,?x8]),
            contra(gr(?x7 + ?x8),
             [gr(?x7 + ?x8),
              gr([?x7,?x8]),
              ff]),
            ~ gr(?x7 + ?x8)),
           ~ gr(?x7 + ?x8) & gr(t),
           ~ gr(?x5) \/ ~ gr([?x6]),
           ~ gr([?x5,?x6]) <=> ~ gr(?x5) \/ ~ gr([?x6]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5) & gr(?x6) => gr(?x5 + ?x6),
           assume(~ gr([?x5,?x6]),
            contra(gr(?x5 + ?x6),
             [gr(?x5 + ?x6),
              gr([?x5,?x6]),
              ff]),
            ~ gr(?x5 + ?x6)),
           ~ gr(?x5 + ?x6) \/ ~ gr([]),
           ~ gr([?x5 + ?x6]) <=> ~ gr(?x5 + ?x6) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5 + ?x6) => gr(d(?x5 + ?x6)),
           assume(~ gr([?x5 + ?x6]),
            contra(gr(d(?x5 + ?x6)),
             [gr(d(?x5 + ?x6)),
              gr([?x5 + ?x6]),
              ff]),
            ~ gr(d(?x5 + ?x6))),
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          ~ gr(?x8),
          [contra(gr(?x8) & gr(t),[gr(?x8),~ gr(?x8),ff]),
           ~ (gr(?x8) & gr(t)),
           contra(gr(?x8) & gr(t) & gr(d(?x6)),
            [gr(?x8) & gr(t),
             ~ (gr(?x8) & gr(t)),
             ff]),
           ~ (gr(?x8) & gr(t) & gr(d(?x6))),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & ~ gr(d(?x6)),
            [~ gr(d(?x6)),
             gr(d(?x6)),
             ff]),
           ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & gr(d(?x6)) \/
            gr(?x8) & gr(t) & ~ gr(d(?x6)),
            cases(
             [case(gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & gr(d(?x6)),
               [gr(?x8) & gr(t) & gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & gr(d(?x6))),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(~ gr(?x6),[]),
           ~ ~ gr(?x6),
           gr([?x6]) <=> gr(?x6) by lemma(axiom_2_5_single_element_list),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           contra(~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
            [~ gr(d(?x6)),
             gr(d(?x6)),
             ff]),
           ~ (~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(gr(?x8) & gr(t) & gr(d(?x6)) \/
            gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
            cases(
             [case(~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & ~ gr(d(?x6)),
               [gr(?x8) & gr(t) & ~ gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & ~ gr(d(?x6))),
                ff]),
              case(gr(?x8) & gr(t) & gr(d(?x6)),
               [gr(?x8) & gr(t) & gr(d(?x6)),
                ~ (gr(?x8) & gr(t) & gr(d(?x6))),
                ff])],
             ff)),
           ~ 
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           contra(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[]),
           ~ 
           ((gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6)))),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
          (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
           gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
         (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
          ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
         (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
          ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
          gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
          ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
        ~ gr(?x6),
        cases(gr(?x7),
         cases(gr(?x8),
          [gr(?x7) & gr(t),
           ~ gr([?x5]) <=> ~ gr(?x5) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x8) & gr(t),
           ~ gr([?x6]) <=> ~ gr(?x6) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           gr([?x8]) <=> gr(?x8) by lemma(axiom_2_5_single_element_list),
           gr(?x7) & gr([?x8]),
           gr([?x7,?x8]) => gr(?x7) & gr([?x8]),
           assume(~ (gr(?x7) & gr([?x8])),
            contra(gr([?x7,?x8]),
             [gr(?x7) & gr([?x8]),
              ff]),
            ~ gr([?x7,?x8])),
           gr([?x7,?x8]) <=> gr(?x7) & gr([?x8]) by lemma(axiom_2_5),
           gr(?x7) & gr(?x8) => gr(?x7 + ?x8),
           assume(~ gr([?x7,?x8]),
            contra(gr(?x7 + ?x8),
             [gr(?x7 + ?x8),
              gr([?x7,?x8]),
              ff]),
            ~ gr(?x7 + ?x8)),
           gr(?x7 + ?x8) & gr(t),
           ~ gr(?x5) \/ ~ gr([?x6]),
           ~ gr([?x5,?x6]) <=> ~ gr(?x5) \/ ~ gr([?x6]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5) & gr(?x6) => gr(?x5 + ?x6),
           assume(~ gr([?x5,?x6]),
            contra(gr(?x5 + ?x6),
             [gr(?x5 + ?x6),
              gr([?x5,?x6]),
              ff]),
            ~ gr(?x5 + ?x6)),
           ~ gr(?x5 + ?x6) \/ ~ gr([]),
           ~ gr([?x5 + ?x6]) <=> ~ gr(?x5 + ?x6) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5 + ?x6) => gr(d(?x5 + ?x6)),
           assume(~ gr([?x5 + ?x6]),
            contra(gr(d(?x5 + ?x6)),
             [gr(d(?x5 + ?x6)),
              gr([?x5 + ?x6]),
              ff]),
            ~ gr(d(?x5 + ?x6))),
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          ~ gr(?x8),
          [gr(?x7) & gr(t),
           ~ gr([?x5]) <=> ~ gr(?x5) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           ~ gr(?x8) & gr(t),
           ~ gr([?x6]) <=> ~ gr(?x6) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           ~ gr([?x8]) <=> ~ gr(?x8) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           ~ gr(?x7) \/ ~ gr([?x8]),
           ~ gr([?x7,?x8]) <=> ~ gr(?x7) \/ ~ gr([?x8]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x7) & gr(?x8) => gr(?x7 + ?x8),
           assume(~ gr([?x7,?x8]),
            contra(gr(?x7 + ?x8),
             [gr(?x7 + ?x8),
              gr([?x7,?x8]),
              ff]),
            ~ gr(?x7 + ?x8)),
           ~ gr(?x7 + ?x8) & gr(t),
           ~ gr(?x5) \/ ~ gr([?x6]),
           ~ gr([?x5,?x6]) <=> ~ gr(?x5) \/ ~ gr([?x6]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5) & gr(?x6) => gr(?x5 + ?x6),
           assume(~ gr([?x5,?x6]),
            contra(gr(?x5 + ?x6),
             [gr(?x5 + ?x6),
              gr([?x5,?x6]),
              ff]),
            ~ gr(?x5 + ?x6)),
           ~ gr(?x5 + ?x6) \/ ~ gr([]),
           ~ gr([?x5 + ?x6]) <=> ~ gr(?x5 + ?x6) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5 + ?x6) => gr(d(?x5 + ?x6)),
           assume(~ gr([?x5 + ?x6]),
            contra(gr(d(?x5 + ?x6)),
             [gr(d(?x5 + ?x6)),
              gr([?x5 + ?x6]),
              ff]),
            ~ gr(d(?x5 + ?x6))),
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
          (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
           gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
         ~ gr(?x7),
         cases(gr(?x8),
          [~ gr(?x7) & gr(t),
           ~ gr([?x5]) <=> ~ gr(?x5) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x8) & gr(t),
           ~ gr([?x6]) <=> ~ gr(?x6) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           ~ gr(?x7) \/ ~ gr([?x8]),
           ~ gr([?x7,?x8]) <=> ~ gr(?x7) \/ ~ gr([?x8]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x7) & gr(?x8) => gr(?x7 + ?x8),
           assume(~ gr([?x7,?x8]),
            contra(gr(?x7 + ?x8),
             [gr(?x7 + ?x8),
              gr([?x7,?x8]),
              ff]),
            ~ gr(?x7 + ?x8)),
           ~ gr(?x7 + ?x8) & gr(t),
           ~ gr(?x5) \/ ~ gr([?x6]),
           ~ gr([?x5,?x6]) <=> ~ gr(?x5) \/ ~ gr([?x6]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5) & gr(?x6) => gr(?x5 + ?x6),
           assume(~ gr([?x5,?x6]),
            contra(gr(?x5 + ?x6),
             [gr(?x5 + ?x6),
              gr([?x5,?x6]),
              ff]),
            ~ gr(?x5 + ?x6)),
           ~ gr(?x5 + ?x6) \/ ~ gr([]),
           ~ gr([?x5 + ?x6]) <=> ~ gr(?x5 + ?x6) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5 + ?x6) => gr(d(?x5 + ?x6)),
           assume(~ gr([?x5 + ?x6]),
            contra(gr(d(?x5 + ?x6)),
             [gr(d(?x5 + ?x6)),
              gr([?x5 + ?x6]),
              ff]),
            ~ gr(d(?x5 + ?x6))),
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          ~ gr(?x8),
          [~ gr(?x7) & gr(t),
           ~ gr([?x5]) <=> ~ gr(?x5) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x5) => gr(d(?x5)),
           assume(~ gr([?x5]),
            contra(gr(d(?x5)),
             [gr(d(?x5)),
              gr([?x5]),
              ff]),
            ~ gr(d(?x5))),
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5)),
           ~ gr(?x8) & gr(t),
           ~ gr([?x6]) <=> ~ gr(?x6) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x6) => gr(d(?x6)),
           assume(~ gr([?x6]),
            contra(gr(d(?x6)),
             [gr(d(?x6)),
              gr([?x6]),
              ff]),
            ~ gr(d(?x6))),
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6)),
           (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
            ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
           (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
            ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),
           ~ gr(?x7) \/ ~ gr([?x8]),
           ~ gr([?x7,?x8]) <=> ~ gr(?x7) \/ ~ gr([?x8]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x7) & gr(?x8) => gr(?x7 + ?x8),
           assume(~ gr([?x7,?x8]),
            contra(gr(?x7 + ?x8),
             [gr(?x7 + ?x8),
              gr([?x7,?x8]),
              ff]),
            ~ gr(?x7 + ?x8)),
           ~ gr(?x7 + ?x8) & gr(t),
           ~ gr(?x5) \/ ~ gr([?x6]),
           ~ gr([?x5,?x6]) <=> ~ gr(?x5) \/ ~ gr([?x6]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5) & gr(?x6) => gr(?x5 + ?x6),
           assume(~ gr([?x5,?x6]),
            contra(gr(?x5 + ?x6),
             [gr(?x5 + ?x6),
              gr([?x5,?x6]),
              ff]),
            ~ gr(?x5 + ?x6)),
           ~ gr(?x5 + ?x6) \/ ~ gr([]),
           ~ gr([?x5 + ?x6]) <=> ~ gr(?x5 + ?x6) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x5 + ?x6) => gr(d(?x5 + ?x6)),
           assume(~ gr([?x5 + ?x6]),
            contra(gr(d(?x5 + ?x6)),
             [gr(d(?x5 + ?x6)),
              gr([?x5 + ?x6]),
              ff]),
            ~ gr(d(?x5 + ?x6))),
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
           gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)),
           assume(
            (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
             ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
            (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
             ~ gr(?x8) & gr(t) & ~ gr(d(?x6))),[],
            gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
            gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
            ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
          (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
           ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
          (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
           ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
           gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
           ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
         (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
          ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
         (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
          ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
          gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
          ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
        (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
         ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
        (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
         ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
         gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
         ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
       (gr(?x7) & gr(t) & gr(d(?x5)) \/ gr(?x7) & gr(t) & ~ gr(d(?x5)) \/
        ~ gr(?x7) & gr(t) & ~ gr(d(?x5))) &
       (gr(?x8) & gr(t) & gr(d(?x6)) \/ gr(?x8) & gr(t) & ~ gr(d(?x6)) \/
        ~ gr(?x8) & gr(t) & ~ gr(d(?x6))) => gr(?x7 + ?x8) & gr(t) &
        gr(d(?x5 + ?x6)) \/ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
        ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)))],
     gr(?x7 + ?x8) & gr(t) & gr(d(?x5 + ?x6)) \/
     gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6)) \/
     ~ gr(?x7 + ?x8) & gr(t) & ~ gr(d(?x5 + ?x6))),
    step([x9,x10,x11,x12],
     [gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
      ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
      gr(?x11) & gr(t) & gr(d(?x10)) \/ gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
      ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
      succeeds deriv(d(?x9),t,?x12),
      succeeds deriv(d(?x10),t,?x11)],
     [cases(gr(?x9),
       cases(gr(?x10),
        cases(gr(?x11),
         cases(gr(?x12),
          [gr(?x12) & gr(t),
           gr([?x9]) <=> gr(?x9) by lemma(axiom_2_5_single_element_list),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           gr(?x12) & gr(t) & gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x11) & gr(t),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           gr(?x11) & gr(t) & gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           gr([?x11]) <=> gr(?x11) by lemma(axiom_2_5_single_element_list),
           gr(?x9) & gr([?x11]),
           gr([?x9,?x11]) => gr(?x9) & gr([?x11]),
           assume(~ (gr(?x9) & gr([?x11])),
            contra(gr([?x9,?x11]),
             [gr(?x9) & gr([?x11]),
              ff]),
            ~ gr([?x9,?x11])),
           gr([?x9,?x11]) <=> gr(?x9) & gr([?x11]) by lemma(axiom_2_5),
           gr(?x9) & gr(?x11) => gr(?x9 * ?x11),
           assume(~ gr([?x9,?x11]),
            contra(gr(?x9 * ?x11),
             [gr(?x9 * ?x11),
              gr([?x9,?x11]),
              ff]),
            ~ gr(?x9 * ?x11)),
           gr([?x12]) <=> gr(?x12) by lemma(axiom_2_5_single_element_list),
           gr(?x10) & gr([?x12]),
           gr([?x10,?x12]) => gr(?x10) & gr([?x12]),
           assume(~ (gr(?x10) & gr([?x12])),
            contra(gr([?x10,?x12]),
             [gr(?x10) & gr([?x12]),
              ff]),
            ~ gr([?x10,?x12])),
           gr([?x10,?x12]) <=> gr(?x10) & gr([?x12]) by lemma(axiom_2_5),
           gr(?x10) & gr(?x12) => gr(?x10 * ?x12),
           assume(~ gr([?x10,?x12]),
            contra(gr(?x10 * ?x12),
             [gr(?x10 * ?x12),
              gr([?x10,?x12]),
              ff]),
            ~ gr(?x10 * ?x12)),
           gr(?x10 * ?x12) & gr([]),
           gr([?x10 * ?x12]) => gr(?x10 * ?x12) & gr([]),
           assume(~ (gr(?x10 * ?x12) & gr([])),
            contra(gr([?x10 * ?x12]),
             [gr(?x10 * ?x12) & gr([]),
              ff]),
            ~ gr([?x10 * ?x12])),
           gr([?x10 * ?x12]) <=> gr(?x10 * ?x12) & gr([]) by lemma(axiom_2_5),
           gr(?x9 * ?x11) & gr([?x10 * ?x12]),
           gr([?x9 * ?x11,?x10 * ?x12]) => gr(?x9 * ?x11) &
            gr([?x10 * ?x12]),
           assume(~ (gr(?x9 * ?x11) & gr([?x10 * ?x12])),
            contra(gr([?x9 * ?x11,?x10 * ?x12]),
             [gr(?x9 * ?x11) & gr([?x10 * ?x12]),
              ff]),
            ~ gr([?x9 * ?x11,?x10 * ?x12])),
           gr([?x9 * ?x11,?x10 * ?x12]) <=>
           gr(?x9 * ?x11) & gr([?x10 * ?x12]) by lemma(axiom_2_5),
           gr(?x9 * ?x11) & gr(?x10 * ?x12) => gr(?x9 * ?x11 + ?x10 * ?x12),
           assume(~ gr([?x9 * ?x11,?x10 * ?x12]),
            contra(gr(?x9 * ?x11 + ?x10 * ?x12),
             [gr(?x9 * ?x11 + ?x10 * ?x12),
              gr([?x9 * ?x11,?x10 * ?x12]),
              ff]),
            ~ gr(?x9 * ?x11 + ?x10 * ?x12)),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x9) & gr([?x10]),
           gr([?x9,?x10]) => gr(?x9) & gr([?x10]),
           assume(~ (gr(?x9) & gr([?x10])),
            contra(gr([?x9,?x10]),
             [gr(?x9) & gr([?x10]),
              ff]),
            ~ gr([?x9,?x10])),
           gr([?x9,?x10]) <=> gr(?x9) & gr([?x10]) by lemma(axiom_2_5),
           gr(?x9) & gr(?x10) => gr(?x9 * ?x10),
           assume(~ gr([?x9,?x10]),
            contra(gr(?x9 * ?x10),
             [gr(?x9 * ?x10),
              gr([?x9,?x10]),
              ff]),
            ~ gr(?x9 * ?x10)),
           gr(?x9 * ?x10) & gr([]),
           gr([?x9 * ?x10]) => gr(?x9 * ?x10) & gr([]),
           assume(~ (gr(?x9 * ?x10) & gr([])),
            contra(gr([?x9 * ?x10]),
             [gr(?x9 * ?x10) & gr([]),
              ff]),
            ~ gr([?x9 * ?x10])),
           gr([?x9 * ?x10]) <=> gr(?x9 * ?x10) & gr([]) by lemma(axiom_2_5),
           gr(?x9 * ?x10) => gr(d(?x9 * ?x10)),
           assume(~ gr([?x9 * ?x10]),
            contra(gr(d(?x9 * ?x10)),
             [gr(d(?x9 * ?x10)),
              gr([?x9 * ?x10]),
              ff]),
            ~ gr(d(?x9 * ?x10))),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          ~ gr(?x12),
          [contra(gr(?x12) & gr(t),[gr(?x12),~ gr(?x12),ff]),
           ~ (gr(?x12) & gr(t)),
           contra(gr(?x12) & gr(t) & gr(d(?x9)),
            [gr(?x12) & gr(t),
             ~ (gr(?x12) & gr(t)),
             ff]),
           ~ (gr(?x12) & gr(t) & gr(d(?x9))),
           contra(~ gr(?x9),[]),
           ~ ~ gr(?x9),
           gr([?x9]) <=> gr(?x9) by lemma(axiom_2_5_single_element_list),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           contra(gr(?x12) & gr(t) & ~ gr(d(?x9)),
            [~ gr(d(?x9)),
             gr(d(?x9)),
             ff]),
           ~ (gr(?x12) & gr(t) & ~ gr(d(?x9))),
           contra(gr(?x12) & gr(t) & gr(d(?x9)) \/
            gr(?x12) & gr(t) & ~ gr(d(?x9)),
            cases(
             [case(gr(?x12) & gr(t) & ~ gr(d(?x9)),
               [gr(?x12) & gr(t) & ~ gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & ~ gr(d(?x9))),
                ff]),
              case(gr(?x12) & gr(t) & gr(d(?x9)),
               [gr(?x12) & gr(t) & gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & gr(d(?x9))),
                ff])],
             ff)),
           ~ 
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9))),
           contra(~ gr(?x9),[]),
           ~ ~ gr(?x9),
           gr([?x9]) <=> gr(?x9) by lemma(axiom_2_5_single_element_list),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           contra(~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
            [~ gr(d(?x9)),
             gr(d(?x9)),
             ff]),
           ~ (~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
           contra(gr(?x12) & gr(t) & gr(d(?x9)) \/
            gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
            ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
            cases(
             [case(~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
               [~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
                ~ (~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
                ff]),
              case(gr(?x12) & gr(t) & ~ gr(d(?x9)),
               [gr(?x12) & gr(t) & ~ gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & ~ gr(d(?x9))),
                ff]),
              case(gr(?x12) & gr(t) & gr(d(?x9)),
               [gr(?x12) & gr(t) & gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & gr(d(?x9))),
                ff])],
             ff)),
           ~ 
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
           contra(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
            [gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
             ~ 
             (gr(?x12) & gr(t) & gr(d(?x9)) \/
              gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
              ~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
             ff]),
           ~ 
           ((gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10)))),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
          (gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
         ~ gr(?x11),
         cases(gr(?x12),
          [contra(gr(?x11) & gr(t),[gr(?x11),~ gr(?x11),ff]),
           ~ (gr(?x11) & gr(t)),
           contra(gr(?x11) & gr(t) & gr(d(?x10)),
            [gr(?x11) & gr(t),
             ~ (gr(?x11) & gr(t)),
             ff]),
           ~ (gr(?x11) & gr(t) & gr(d(?x10))),
           contra(~ gr(?x10),[]),
           ~ ~ gr(?x10),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & ~ gr(d(?x10)),
            [~ gr(d(?x10)),
             gr(d(?x10)),
             ff]),
           ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)),
            cases(
             [case(gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & gr(d(?x10)),
               [gr(?x11) & gr(t) & gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & gr(d(?x10))),
                ff])],
             ff)),
           ~ 
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(~ gr(?x10),[]),
           ~ ~ gr(?x10),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           contra(~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
            [~ gr(d(?x10)),
             gr(d(?x10)),
             ff]),
           ~ (~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
            cases(
             [case(~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & gr(d(?x10)),
               [gr(?x11) & gr(t) & gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & gr(d(?x10))),
                ff])],
             ff)),
           ~ 
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[]),
           ~ 
           ((gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10)))),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          ~ gr(?x12),
          [contra(gr(?x11) & gr(t),[gr(?x11),~ gr(?x11),ff]),
           ~ (gr(?x11) & gr(t)),
           contra(gr(?x11) & gr(t) & gr(d(?x10)),
            [gr(?x11) & gr(t),
             ~ (gr(?x11) & gr(t)),
             ff]),
           ~ (gr(?x11) & gr(t) & gr(d(?x10))),
           contra(~ gr(?x10),[]),
           ~ ~ gr(?x10),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & ~ gr(d(?x10)),
            [~ gr(d(?x10)),
             gr(d(?x10)),
             ff]),
           ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)),
            cases(
             [case(gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & gr(d(?x10)),
               [gr(?x11) & gr(t) & gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & gr(d(?x10))),
                ff])],
             ff)),
           ~ 
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(~ gr(?x10),[]),
           ~ ~ gr(?x10),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           contra(~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
            [~ gr(d(?x10)),
             gr(d(?x10)),
             ff]),
           ~ (~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
            cases(
             [case(~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & gr(d(?x10)),
               [gr(?x11) & gr(t) & gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & gr(d(?x10))),
                ff])],
             ff)),
           ~ 
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[]),
           ~ 
           ((gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10)))),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
          (gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
         (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
          ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
         (gr(?x11) & gr(t) & gr(d(?x10)) \/ gr(?x11) & gr(t) & 
          ~ gr(d(?x10)) \/ ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
          gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
          gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
          ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
        ~ gr(?x10),
        cases(gr(?x11),
         cases(gr(?x12),
          [gr(?x12) & gr(t),
           gr([?x9]) <=> gr(?x9) by lemma(axiom_2_5_single_element_list),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           gr(?x12) & gr(t) & gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x11) & gr(t),
           ~ gr([?x10]) <=> ~ gr(?x10) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           ~ gr(?x10) \/ ~ gr([?x12]),
           ~ gr([?x10,?x12]) <=> ~ gr(?x10) \/ ~ gr([?x12]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x10) & gr(?x12) => gr(?x10 * ?x12),
           assume(~ gr([?x10,?x12]),
            contra(gr(?x10 * ?x12),
             [gr(?x10 * ?x12),
              gr([?x10,?x12]),
              ff]),
            ~ gr(?x10 * ?x12)),
           ~ gr(?x10 * ?x12) \/ ~ gr([]),
           ~ gr([?x10 * ?x12]) <=> ~ gr(?x10 * ?x12) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]),
           ~ gr([?x9 * ?x11,?x10 * ?x12]) <=>
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x11) & gr(?x10 * ?x12) => gr(?x9 * ?x11 + ?x10 * ?x12),
           assume(~ gr([?x9 * ?x11,?x10 * ?x12]),
            contra(gr(?x9 * ?x11 + ?x10 * ?x12),
             [gr(?x9 * ?x11 + ?x10 * ?x12),
              gr([?x9 * ?x11,?x10 * ?x12]),
              ff]),
            ~ gr(?x9 * ?x11 + ?x10 * ?x12)),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t),
           ~ gr([?x10]) <=> ~ gr(?x10) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           ~ gr(?x9) \/ ~ gr([?x10]),
           ~ gr([?x9,?x10]) <=> ~ gr(?x9) \/ ~ gr([?x10]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x10) => gr(?x9 * ?x10),
           assume(~ gr([?x9,?x10]),
            contra(gr(?x9 * ?x10),
             [gr(?x9 * ?x10),
              gr([?x9,?x10]),
              ff]),
            ~ gr(?x9 * ?x10)),
           ~ gr(?x9 * ?x10) \/ ~ gr([]),
           ~ gr([?x9 * ?x10]) <=> ~ gr(?x9 * ?x10) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x10) => gr(d(?x9 * ?x10)),
           assume(~ gr([?x9 * ?x10]),
            contra(gr(d(?x9 * ?x10)),
             [gr(d(?x9 * ?x10)),
              gr([?x9 * ?x10]),
              ff]),
            ~ gr(d(?x9 * ?x10))),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          ~ gr(?x12),
          [contra(gr(?x12) & gr(t),[gr(?x12),~ gr(?x12),ff]),
           ~ (gr(?x12) & gr(t)),
           contra(gr(?x12) & gr(t) & gr(d(?x9)),
            [gr(?x12) & gr(t),
             ~ (gr(?x12) & gr(t)),
             ff]),
           ~ (gr(?x12) & gr(t) & gr(d(?x9))),
           contra(~ gr(?x9),[]),
           ~ ~ gr(?x9),
           gr([?x9]) <=> gr(?x9) by lemma(axiom_2_5_single_element_list),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           contra(gr(?x12) & gr(t) & ~ gr(d(?x9)),
            [~ gr(d(?x9)),
             gr(d(?x9)),
             ff]),
           ~ (gr(?x12) & gr(t) & ~ gr(d(?x9))),
           contra(gr(?x12) & gr(t) & gr(d(?x9)) \/
            gr(?x12) & gr(t) & ~ gr(d(?x9)),
            cases(
             [case(gr(?x12) & gr(t) & ~ gr(d(?x9)),
               [gr(?x12) & gr(t) & ~ gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & ~ gr(d(?x9))),
                ff]),
              case(gr(?x12) & gr(t) & gr(d(?x9)),
               [gr(?x12) & gr(t) & gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & gr(d(?x9))),
                ff])],
             ff)),
           ~ 
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9))),
           contra(~ gr(?x9),[]),
           ~ ~ gr(?x9),
           gr([?x9]) <=> gr(?x9) by lemma(axiom_2_5_single_element_list),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           contra(~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
            [~ gr(d(?x9)),
             gr(d(?x9)),
             ff]),
           ~ (~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
           contra(gr(?x12) & gr(t) & gr(d(?x9)) \/
            gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
            ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
            cases(
             [case(~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
               [~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
                ~ (~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
                ff]),
              case(gr(?x12) & gr(t) & ~ gr(d(?x9)),
               [gr(?x12) & gr(t) & ~ gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & ~ gr(d(?x9))),
                ff]),
              case(gr(?x12) & gr(t) & gr(d(?x9)),
               [gr(?x12) & gr(t) & gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & gr(d(?x9))),
                ff])],
             ff)),
           ~ 
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
           contra(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
            [gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
             ~ 
             (gr(?x12) & gr(t) & gr(d(?x9)) \/
              gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
              ~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
             ff]),
           ~ 
           ((gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10)))),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
          (gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
         ~ gr(?x11),
         cases(gr(?x12),
          [gr(?x12) & gr(t),
           gr([?x9]) <=> gr(?x9) by lemma(axiom_2_5_single_element_list),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           gr(?x12) & gr(t) & gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           ~ gr(?x11) & gr(t),
           ~ gr([?x10]) <=> ~ gr(?x10) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           ~ gr([?x11]) <=> ~ gr(?x11) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           ~ gr(?x9) \/ ~ gr([?x11]),
           ~ gr([?x9,?x11]) <=> ~ gr(?x9) \/ ~ gr([?x11]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x11) => gr(?x9 * ?x11),
           assume(~ gr([?x9,?x11]),
            contra(gr(?x9 * ?x11),
             [gr(?x9 * ?x11),
              gr([?x9,?x11]),
              ff]),
            ~ gr(?x9 * ?x11)),
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]),
           ~ gr([?x9 * ?x11,?x10 * ?x12]) <=>
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x11) & gr(?x10 * ?x12) => gr(?x9 * ?x11 + ?x10 * ?x12),
           assume(~ gr([?x9 * ?x11,?x10 * ?x12]),
            contra(gr(?x9 * ?x11 + ?x10 * ?x12),
             [gr(?x9 * ?x11 + ?x10 * ?x12),
              gr([?x9 * ?x11,?x10 * ?x12]),
              ff]),
            ~ gr(?x9 * ?x11 + ?x10 * ?x12)),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t),
           ~ gr([?x10]) <=> ~ gr(?x10) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           ~ gr(?x9) \/ ~ gr([?x10]),
           ~ gr([?x9,?x10]) <=> ~ gr(?x9) \/ ~ gr([?x10]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x10) => gr(?x9 * ?x10),
           assume(~ gr([?x9,?x10]),
            contra(gr(?x9 * ?x10),
             [gr(?x9 * ?x10),
              gr([?x9,?x10]),
              ff]),
            ~ gr(?x9 * ?x10)),
           ~ gr(?x9 * ?x10) \/ ~ gr([]),
           ~ gr([?x9 * ?x10]) <=> ~ gr(?x9 * ?x10) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x10) => gr(d(?x9 * ?x10)),
           assume(~ gr([?x9 * ?x10]),
            contra(gr(d(?x9 * ?x10)),
             [gr(d(?x9 * ?x10)),
              gr([?x9 * ?x10]),
              ff]),
            ~ gr(d(?x9 * ?x10))),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          ~ gr(?x12),
          [contra(gr(?x12) & gr(t),[gr(?x12),~ gr(?x12),ff]),
           ~ (gr(?x12) & gr(t)),
           contra(gr(?x12) & gr(t) & gr(d(?x9)),
            [gr(?x12) & gr(t),
             ~ (gr(?x12) & gr(t)),
             ff]),
           ~ (gr(?x12) & gr(t) & gr(d(?x9))),
           contra(~ gr(?x9),[]),
           ~ ~ gr(?x9),
           gr([?x9]) <=> gr(?x9) by lemma(axiom_2_5_single_element_list),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           contra(gr(?x12) & gr(t) & ~ gr(d(?x9)),
            [~ gr(d(?x9)),
             gr(d(?x9)),
             ff]),
           ~ (gr(?x12) & gr(t) & ~ gr(d(?x9))),
           contra(gr(?x12) & gr(t) & gr(d(?x9)) \/
            gr(?x12) & gr(t) & ~ gr(d(?x9)),
            cases(
             [case(gr(?x12) & gr(t) & ~ gr(d(?x9)),
               [gr(?x12) & gr(t) & ~ gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & ~ gr(d(?x9))),
                ff]),
              case(gr(?x12) & gr(t) & gr(d(?x9)),
               [gr(?x12) & gr(t) & gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & gr(d(?x9))),
                ff])],
             ff)),
           ~ 
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9))),
           contra(~ gr(?x9),[]),
           ~ ~ gr(?x9),
           gr([?x9]) <=> gr(?x9) by lemma(axiom_2_5_single_element_list),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           contra(~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
            [~ gr(d(?x9)),
             gr(d(?x9)),
             ff]),
           ~ (~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
           contra(gr(?x12) & gr(t) & gr(d(?x9)) \/
            gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
            ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
            cases(
             [case(~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
               [~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
                ~ (~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
                ff]),
              case(gr(?x12) & gr(t) & ~ gr(d(?x9)),
               [gr(?x12) & gr(t) & ~ gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & ~ gr(d(?x9))),
                ff]),
              case(gr(?x12) & gr(t) & gr(d(?x9)),
               [gr(?x12) & gr(t) & gr(d(?x9)),
                ~ (gr(?x12) & gr(t) & gr(d(?x9))),
                ff])],
             ff)),
           ~ 
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
           contra(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
            [gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
             ~ 
             (gr(?x12) & gr(t) & gr(d(?x9)) \/
              gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
              ~ gr(?x12) & gr(t) & ~ gr(d(?x9))),
             ff]),
           ~ 
           ((gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10)))),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
          (gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
         (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
          ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
         (gr(?x11) & gr(t) & gr(d(?x10)) \/ gr(?x11) & gr(t) & 
          ~ gr(d(?x10)) \/ ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
          gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
          gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
          ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
        (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
         ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
        (gr(?x11) & gr(t) & gr(d(?x10)) \/ gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
         ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
         gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
         gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
         ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
       ~ gr(?x9),
       cases(gr(?x10),
        cases(gr(?x11),
         cases(gr(?x12),
          [gr(?x12) & gr(t),
           ~ gr([?x9]) <=> ~ gr(?x9) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x11) & gr(t),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           gr(?x11) & gr(t) & gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           ~ gr(?x9) \/ ~ gr([?x11]),
           ~ gr([?x9,?x11]) <=> ~ gr(?x9) \/ ~ gr([?x11]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x11) => gr(?x9 * ?x11),
           assume(~ gr([?x9,?x11]),
            contra(gr(?x9 * ?x11),
             [gr(?x9 * ?x11),
              gr([?x9,?x11]),
              ff]),
            ~ gr(?x9 * ?x11)),
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]),
           ~ gr([?x9 * ?x11,?x10 * ?x12]) <=>
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x11) & gr(?x10 * ?x12) => gr(?x9 * ?x11 + ?x10 * ?x12),
           assume(~ gr([?x9 * ?x11,?x10 * ?x12]),
            contra(gr(?x9 * ?x11 + ?x10 * ?x12),
             [gr(?x9 * ?x11 + ?x10 * ?x12),
              gr([?x9 * ?x11,?x10 * ?x12]),
              ff]),
            ~ gr(?x9 * ?x11 + ?x10 * ?x12)),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t),
           ~ gr(?x9) \/ ~ gr([?x10]),
           ~ gr([?x9,?x10]) <=> ~ gr(?x9) \/ ~ gr([?x10]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x10) => gr(?x9 * ?x10),
           assume(~ gr([?x9,?x10]),
            contra(gr(?x9 * ?x10),
             [gr(?x9 * ?x10),
              gr([?x9,?x10]),
              ff]),
            ~ gr(?x9 * ?x10)),
           ~ gr(?x9 * ?x10) \/ ~ gr([]),
           ~ gr([?x9 * ?x10]) <=> ~ gr(?x9 * ?x10) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x10) => gr(d(?x9 * ?x10)),
           assume(~ gr([?x9 * ?x10]),
            contra(gr(d(?x9 * ?x10)),
             [gr(d(?x9 * ?x10)),
              gr([?x9 * ?x10]),
              ff]),
            ~ gr(d(?x9 * ?x10))),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          ~ gr(?x12),
          [~ gr(?x12) & gr(t),
           ~ gr([?x9]) <=> ~ gr(?x9) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x11) & gr(t),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           gr(?x11) & gr(t) & gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           ~ gr(?x9) \/ ~ gr([?x11]),
           ~ gr([?x9,?x11]) <=> ~ gr(?x9) \/ ~ gr([?x11]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x11) => gr(?x9 * ?x11),
           assume(~ gr([?x9,?x11]),
            contra(gr(?x9 * ?x11),
             [gr(?x9 * ?x11),
              gr([?x9,?x11]),
              ff]),
            ~ gr(?x9 * ?x11)),
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]),
           ~ gr([?x9 * ?x11,?x10 * ?x12]) <=>
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x11) & gr(?x10 * ?x12) => gr(?x9 * ?x11 + ?x10 * ?x12),
           assume(~ gr([?x9 * ?x11,?x10 * ?x12]),
            contra(gr(?x9 * ?x11 + ?x10 * ?x12),
             [gr(?x9 * ?x11 + ?x10 * ?x12),
              gr([?x9 * ?x11,?x10 * ?x12]),
              ff]),
            ~ gr(?x9 * ?x11 + ?x10 * ?x12)),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t),
           ~ gr(?x9) \/ ~ gr([?x10]),
           ~ gr([?x9,?x10]) <=> ~ gr(?x9) \/ ~ gr([?x10]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x10) => gr(?x9 * ?x10),
           assume(~ gr([?x9,?x10]),
            contra(gr(?x9 * ?x10),
             [gr(?x9 * ?x10),
              gr([?x9,?x10]),
              ff]),
            ~ gr(?x9 * ?x10)),
           ~ gr(?x9 * ?x10) \/ ~ gr([]),
           ~ gr([?x9 * ?x10]) <=> ~ gr(?x9 * ?x10) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x10) => gr(d(?x9 * ?x10)),
           assume(~ gr([?x9 * ?x10]),
            contra(gr(d(?x9 * ?x10)),
             [gr(d(?x9 * ?x10)),
              gr([?x9 * ?x10]),
              ff]),
            ~ gr(d(?x9 * ?x10))),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
          (gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
         ~ gr(?x11),
         cases(gr(?x12),
          [contra(gr(?x11) & gr(t),[gr(?x11),~ gr(?x11),ff]),
           ~ (gr(?x11) & gr(t)),
           contra(gr(?x11) & gr(t) & gr(d(?x10)),
            [gr(?x11) & gr(t),
             ~ (gr(?x11) & gr(t)),
             ff]),
           ~ (gr(?x11) & gr(t) & gr(d(?x10))),
           contra(~ gr(?x10),[]),
           ~ ~ gr(?x10),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & ~ gr(d(?x10)),
            [~ gr(d(?x10)),
             gr(d(?x10)),
             ff]),
           ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)),
            cases(
             [case(gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & gr(d(?x10)),
               [gr(?x11) & gr(t) & gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & gr(d(?x10))),
                ff])],
             ff)),
           ~ 
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(~ gr(?x10),[]),
           ~ ~ gr(?x10),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           contra(~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
            [~ gr(d(?x10)),
             gr(d(?x10)),
             ff]),
           ~ (~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
            cases(
             [case(~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & gr(d(?x10)),
               [gr(?x11) & gr(t) & gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & gr(d(?x10))),
                ff])],
             ff)),
           ~ 
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[]),
           ~ 
           ((gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10)))),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          ~ gr(?x12),
          [contra(gr(?x11) & gr(t),[gr(?x11),~ gr(?x11),ff]),
           ~ (gr(?x11) & gr(t)),
           contra(gr(?x11) & gr(t) & gr(d(?x10)),
            [gr(?x11) & gr(t),
             ~ (gr(?x11) & gr(t)),
             ff]),
           ~ (gr(?x11) & gr(t) & gr(d(?x10))),
           contra(~ gr(?x10),[]),
           ~ ~ gr(?x10),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & ~ gr(d(?x10)),
            [~ gr(d(?x10)),
             gr(d(?x10)),
             ff]),
           ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)),
            cases(
             [case(gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & gr(d(?x10)),
               [gr(?x11) & gr(t) & gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & gr(d(?x10))),
                ff])],
             ff)),
           ~ 
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(~ gr(?x10),[]),
           ~ ~ gr(?x10),
           gr([?x10]) <=> gr(?x10) by lemma(axiom_2_5_single_element_list),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           contra(~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
            [~ gr(d(?x10)),
             gr(d(?x10)),
             ff]),
           ~ (~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
            cases(
             [case(~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & ~ gr(d(?x10)),
               [gr(?x11) & gr(t) & ~ gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & ~ gr(d(?x10))),
                ff]),
              case(gr(?x11) & gr(t) & gr(d(?x10)),
               [gr(?x11) & gr(t) & gr(d(?x10)),
                ~ (gr(?x11) & gr(t) & gr(d(?x10))),
                ff])],
             ff)),
           ~ 
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           contra(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[]),
           ~ 
           ((gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10)))),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
          (gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
         (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
          ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
         (gr(?x11) & gr(t) & gr(d(?x10)) \/ gr(?x11) & gr(t) & 
          ~ gr(d(?x10)) \/ ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
          gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
          gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
          ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
        ~ gr(?x10),
        cases(gr(?x11),
         cases(gr(?x12),
          [gr(?x12) & gr(t),
           ~ gr([?x9]) <=> ~ gr(?x9) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x11) & gr(t),
           ~ gr([?x10]) <=> ~ gr(?x10) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           ~ gr(?x9) \/ ~ gr([?x11]),
           ~ gr([?x9,?x11]) <=> ~ gr(?x9) \/ ~ gr([?x11]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x11) => gr(?x9 * ?x11),
           assume(~ gr([?x9,?x11]),
            contra(gr(?x9 * ?x11),
             [gr(?x9 * ?x11),
              gr([?x9,?x11]),
              ff]),
            ~ gr(?x9 * ?x11)),
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]),
           ~ gr([?x9 * ?x11,?x10 * ?x12]) <=>
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x11) & gr(?x10 * ?x12) => gr(?x9 * ?x11 + ?x10 * ?x12),
           assume(~ gr([?x9 * ?x11,?x10 * ?x12]),
            contra(gr(?x9 * ?x11 + ?x10 * ?x12),
             [gr(?x9 * ?x11 + ?x10 * ?x12),
              gr([?x9 * ?x11,?x10 * ?x12]),
              ff]),
            ~ gr(?x9 * ?x11 + ?x10 * ?x12)),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t),
           ~ gr(?x9) \/ ~ gr([?x10]),
           ~ gr([?x9,?x10]) <=> ~ gr(?x9) \/ ~ gr([?x10]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x10) => gr(?x9 * ?x10),
           assume(~ gr([?x9,?x10]),
            contra(gr(?x9 * ?x10),
             [gr(?x9 * ?x10),
              gr([?x9,?x10]),
              ff]),
            ~ gr(?x9 * ?x10)),
           ~ gr(?x9 * ?x10) \/ ~ gr([]),
           ~ gr([?x9 * ?x10]) <=> ~ gr(?x9 * ?x10) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x10) => gr(d(?x9 * ?x10)),
           assume(~ gr([?x9 * ?x10]),
            contra(gr(d(?x9 * ?x10)),
             [gr(d(?x9 * ?x10)),
              gr([?x9 * ?x10]),
              ff]),
            ~ gr(d(?x9 * ?x10))),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          ~ gr(?x12),
          [~ gr(?x12) & gr(t),
           ~ gr([?x9]) <=> ~ gr(?x9) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x11) & gr(t),
           ~ gr([?x10]) <=> ~ gr(?x10) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           ~ gr(?x9) \/ ~ gr([?x11]),
           ~ gr([?x9,?x11]) <=> ~ gr(?x9) \/ ~ gr([?x11]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x11) => gr(?x9 * ?x11),
           assume(~ gr([?x9,?x11]),
            contra(gr(?x9 * ?x11),
             [gr(?x9 * ?x11),
              gr([?x9,?x11]),
              ff]),
            ~ gr(?x9 * ?x11)),
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]),
           ~ gr([?x9 * ?x11,?x10 * ?x12]) <=>
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x11) & gr(?x10 * ?x12) => gr(?x9 * ?x11 + ?x10 * ?x12),
           assume(~ gr([?x9 * ?x11,?x10 * ?x12]),
            contra(gr(?x9 * ?x11 + ?x10 * ?x12),
             [gr(?x9 * ?x11 + ?x10 * ?x12),
              gr([?x9 * ?x11,?x10 * ?x12]),
              ff]),
            ~ gr(?x9 * ?x11 + ?x10 * ?x12)),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t),
           ~ gr(?x9) \/ ~ gr([?x10]),
           ~ gr([?x9,?x10]) <=> ~ gr(?x9) \/ ~ gr([?x10]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x10) => gr(?x9 * ?x10),
           assume(~ gr([?x9,?x10]),
            contra(gr(?x9 * ?x10),
             [gr(?x9 * ?x10),
              gr([?x9,?x10]),
              ff]),
            ~ gr(?x9 * ?x10)),
           ~ gr(?x9 * ?x10) \/ ~ gr([]),
           ~ gr([?x9 * ?x10]) <=> ~ gr(?x9 * ?x10) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x10) => gr(d(?x9 * ?x10)),
           assume(~ gr([?x9 * ?x10]),
            contra(gr(d(?x9 * ?x10)),
             [gr(d(?x9 * ?x10)),
              gr([?x9 * ?x10]),
              ff]),
            ~ gr(d(?x9 * ?x10))),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
          (gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
         ~ gr(?x11),
         cases(gr(?x12),
          [gr(?x12) & gr(t),
           ~ gr([?x9]) <=> ~ gr(?x9) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           ~ gr(?x11) & gr(t),
           ~ gr([?x10]) <=> ~ gr(?x10) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           ~ gr(?x9) \/ ~ gr([?x11]),
           ~ gr([?x9,?x11]) <=> ~ gr(?x9) \/ ~ gr([?x11]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x11) => gr(?x9 * ?x11),
           assume(~ gr([?x9,?x11]),
            contra(gr(?x9 * ?x11),
             [gr(?x9 * ?x11),
              gr([?x9,?x11]),
              ff]),
            ~ gr(?x9 * ?x11)),
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]),
           ~ gr([?x9 * ?x11,?x10 * ?x12]) <=>
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x11) & gr(?x10 * ?x12) => gr(?x9 * ?x11 + ?x10 * ?x12),
           assume(~ gr([?x9 * ?x11,?x10 * ?x12]),
            contra(gr(?x9 * ?x11 + ?x10 * ?x12),
             [gr(?x9 * ?x11 + ?x10 * ?x12),
              gr([?x9 * ?x11,?x10 * ?x12]),
              ff]),
            ~ gr(?x9 * ?x11 + ?x10 * ?x12)),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t),
           ~ gr(?x9) \/ ~ gr([?x10]),
           ~ gr([?x9,?x10]) <=> ~ gr(?x9) \/ ~ gr([?x10]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x10) => gr(?x9 * ?x10),
           assume(~ gr([?x9,?x10]),
            contra(gr(?x9 * ?x10),
             [gr(?x9 * ?x10),
              gr([?x9,?x10]),
              ff]),
            ~ gr(?x9 * ?x10)),
           ~ gr(?x9 * ?x10) \/ ~ gr([]),
           ~ gr([?x9 * ?x10]) <=> ~ gr(?x9 * ?x10) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x10) => gr(d(?x9 * ?x10)),
           assume(~ gr([?x9 * ?x10]),
            contra(gr(d(?x9 * ?x10)),
             [gr(d(?x9 * ?x10)),
              gr([?x9 * ?x10]),
              ff]),
            ~ gr(d(?x9 * ?x10))),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          ~ gr(?x12),
          [~ gr(?x12) & gr(t),
           ~ gr([?x9]) <=> ~ gr(?x9) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x9) => gr(d(?x9)),
           assume(~ gr([?x9]),
            contra(gr(d(?x9)),
             [gr(d(?x9)),
              gr([?x9]),
              ff]),
            ~ gr(d(?x9))),
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9)),
           ~ gr(?x11) & gr(t),
           ~ gr([?x10]) <=> ~ gr(?x10) by 
            lemma(axiom_2_5_single_element_list_de_morgan),
           gr(?x10) => gr(d(?x10)),
           assume(~ gr([?x10]),
            contra(gr(d(?x10)),
             [gr(d(?x10)),
              gr([?x10]),
              ff]),
            ~ gr(d(?x10))),
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10)),
           (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & 
            ~ gr(d(?x9)) \/ ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
           (gr(?x11) & gr(t) & gr(d(?x10)) \/
            gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
            ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),
           ~ gr(?x9) \/ ~ gr([?x11]),
           ~ gr([?x9,?x11]) <=> ~ gr(?x9) \/ ~ gr([?x11]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x11) => gr(?x9 * ?x11),
           assume(~ gr([?x9,?x11]),
            contra(gr(?x9 * ?x11),
             [gr(?x9 * ?x11),
              gr([?x9,?x11]),
              ff]),
            ~ gr(?x9 * ?x11)),
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]),
           ~ gr([?x9 * ?x11,?x10 * ?x12]) <=>
           ~ gr(?x9 * ?x11) \/ ~ gr([?x10 * ?x12]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x11) & gr(?x10 * ?x12) => gr(?x9 * ?x11 + ?x10 * ?x12),
           assume(~ gr([?x9 * ?x11,?x10 * ?x12]),
            contra(gr(?x9 * ?x11 + ?x10 * ?x12),
             [gr(?x9 * ?x11 + ?x10 * ?x12),
              gr([?x9 * ?x11,?x10 * ?x12]),
              ff]),
            ~ gr(?x9 * ?x11 + ?x10 * ?x12)),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t),
           ~ gr(?x9) \/ ~ gr([?x10]),
           ~ gr([?x9,?x10]) <=> ~ gr(?x9) \/ ~ gr([?x10]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9) & gr(?x10) => gr(?x9 * ?x10),
           assume(~ gr([?x9,?x10]),
            contra(gr(?x9 * ?x10),
             [gr(?x9 * ?x10),
              gr([?x9,?x10]),
              ff]),
            ~ gr(?x9 * ?x10)),
           ~ gr(?x9 * ?x10) \/ ~ gr([]),
           ~ gr([?x9 * ?x10]) <=> ~ gr(?x9 * ?x10) \/ ~ gr([]) by 
            lemma(axiom_2_5_de_morgan),
           gr(?x9 * ?x10) => gr(d(?x9 * ?x10)),
           assume(~ gr([?x9 * ?x10]),
            contra(gr(d(?x9 * ?x10)),
             [gr(d(?x9 * ?x10)),
              gr([?x9 * ?x10]),
              ff]),
            ~ gr(d(?x9 * ?x10))),
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)),
           assume(
            (gr(?x12) & gr(t) & gr(d(?x9)) \/
             gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
             ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
            (gr(?x11) & gr(t) & gr(d(?x10)) \/
             gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
             ~ gr(?x11) & gr(t) & ~ gr(d(?x10))),[],
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
            gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
            ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
          (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
           ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
          (gr(?x11) & gr(t) & gr(d(?x10)) \/
           gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
           ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
           gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
           ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
         (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
          ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
         (gr(?x11) & gr(t) & gr(d(?x10)) \/ gr(?x11) & gr(t) & 
          ~ gr(d(?x10)) \/ ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
          gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
          gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
          ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
        (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
         ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
        (gr(?x11) & gr(t) & gr(d(?x10)) \/ gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
         ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => 
         gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
         gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
         ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
       (gr(?x12) & gr(t) & gr(d(?x9)) \/ gr(?x12) & gr(t) & ~ gr(d(?x9)) \/
        ~ gr(?x12) & gr(t) & ~ gr(d(?x9))) &
       (gr(?x11) & gr(t) & gr(d(?x10)) \/ gr(?x11) & gr(t) & ~ gr(d(?x10)) \/
        ~ gr(?x11) & gr(t) & ~ gr(d(?x10))) => gr(?x9 * ?x11 + ?x10 * ?x12) &
        gr(t) & gr(d(?x9 * ?x10)) \/
        gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
        ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)))],
     gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & gr(d(?x9 * ?x10)) \/
     gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10)) \/
     ~ gr(?x9 * ?x11 + ?x10 * ?x12) & gr(t) & ~ gr(d(?x9 * ?x10))),
    step([x13,x14,x15],
     [gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
      ~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
      gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
      ~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
      succeeds deriv(d(?x13),t,?x15),
      succeeds deriv(d(?x15),t,?x14)],
     [cases(gr(?x13),
       cases(gr(?x14),
        cases(gr(?x15),
         [gr(?x15) & gr(t),
          gr([?x13]) <=> gr(?x13) by lemma(axiom_2_5_single_element_list),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          gr(?x15) & gr(t) & gr(d(?x13)),
          gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & 
          ~ gr(d(?x13)),
          gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & 
          ~ gr(d(?x13)) \/ ~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
          gr(?x14) & gr(t),
          gr([?x15]) <=> gr(?x15) by lemma(axiom_2_5_single_element_list),
          gr(?x15) => gr(d(?x15)),
          assume(~ gr([?x15]),
           contra(gr(d(?x15)),
            [gr(d(?x15)),
             gr([?x15]),
             ff]),
           ~ gr(d(?x15))),
          gr(?x14) & gr(t) & gr(d(?x15)),
          gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & 
          ~ gr(d(?x15)),
          gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & 
          ~ gr(d(?x15)) \/ ~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
          (gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
           ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
          (gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
          gr(?x14) & gr(t),
          gr([?x13]) <=> gr(?x13) by lemma(axiom_2_5_single_element_list),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          gr(d(?x13)) & gr([]),
          gr([d(?x13)]) => gr(d(?x13)) & gr([]),
          assume(~ (gr(d(?x13)) & gr([])),
           contra(gr([d(?x13)]),
            [gr(d(?x13)) & gr([]),
             ff]),
           ~ gr([d(?x13)])),
          gr([d(?x13)]) <=> gr(d(?x13)) & gr([]) by lemma(axiom_2_5),
          gr(d(?x13)) => gr(d(d(?x13))),
          assume(~ gr([d(?x13)]),
           contra(gr(d(d(?x13))),
            [gr(d(d(?x13))),
             gr([d(?x13)]),
             ff]),
           ~ gr(d(d(?x13)))),
          gr(?x14) & gr(t) & gr(d(d(?x13))),
          gr(?x14) & gr(t) & gr(d(d(?x13))) \/
          gr(?x14) & gr(t) & ~ gr(d(d(?x13))),
          gr(?x14) & gr(t) & gr(d(d(?x13))) \/
          gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
          ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))),
          assume(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),[],
           gr(?x14) & gr(t) & gr(d(d(?x13))) \/
           gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))))],
         ~ gr(?x15),
         [contra(gr(?x15) & gr(t),[gr(?x15),~ gr(?x15),ff]),
          ~ (gr(?x15) & gr(t)),
          contra(gr(?x15) & gr(t) & gr(d(?x13)),
           [gr(?x15) & gr(t),
            ~ (gr(?x15) & gr(t)),
            ff]),
          ~ (gr(?x15) & gr(t) & gr(d(?x13))),
          contra(~ gr(?x13),[]),
          ~ ~ gr(?x13),
          gr([?x13]) <=> gr(?x13) by lemma(axiom_2_5_single_element_list),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          contra(gr(?x15) & gr(t) & ~ gr(d(?x13)),
           [~ gr(d(?x13)),
            gr(d(?x13)),
            ff]),
          ~ (gr(?x15) & gr(t) & ~ gr(d(?x13))),
          contra(gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13)),
           cases(
            [case(gr(?x15) & gr(t) & ~ gr(d(?x13)),
              [gr(?x15) & gr(t) & ~ gr(d(?x13)),
               ~ (gr(?x15) & gr(t) & ~ gr(d(?x13))),
               ff]),
             case(gr(?x15) & gr(t) & gr(d(?x13)),
              [gr(?x15) & gr(t) & gr(d(?x13)),
               ~ (gr(?x15) & gr(t) & gr(d(?x13))),
               ff])],
            ff)),
          ~ 
          (gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13))),
          contra(~ gr(?x13),[]),
          ~ ~ gr(?x13),
          gr([?x13]) <=> gr(?x13) by lemma(axiom_2_5_single_element_list),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          contra(~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
           [~ gr(d(?x13)),
            gr(d(?x13)),
            ff]),
          ~ (~ gr(?x15) & gr(t) & ~ gr(d(?x13))),
          contra(gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
           ~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
           cases(
            [case(~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
              [~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
               ~ (~ gr(?x15) & gr(t) & ~ gr(d(?x13))),
               ff]),
             case(gr(?x15) & gr(t) & ~ gr(d(?x13)),
              [gr(?x15) & gr(t) & ~ gr(d(?x13)),
               ~ (gr(?x15) & gr(t) & ~ gr(d(?x13))),
               ff]),
             case(gr(?x15) & gr(t) & gr(d(?x13)),
              [gr(?x15) & gr(t) & gr(d(?x13)),
               ~ (gr(?x15) & gr(t) & gr(d(?x13))),
               ff])],
            ff)),
          ~ 
          (gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
           ~ gr(?x15) & gr(t) & ~ gr(d(?x13))),
          contra(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
           [gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
            ~ 
            (gr(?x15) & gr(t) & gr(d(?x13)) \/
             gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
             ~ gr(?x15) & gr(t) & ~ gr(d(?x13))),
            ff]),
          ~ 
          ((gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15)))),
          assume(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),[],
           gr(?x14) & gr(t) & gr(d(d(?x13))) \/
           gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))))],
         (gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & 
          ~ gr(d(?x13)) \/ ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
         (gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & 
          ~ gr(d(?x15)) \/ ~ gr(?x14) & gr(t) & ~ gr(d(?x15))) => gr(?x14) &
          gr(t) & gr(d(d(?x13))) \/ gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
          ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13)))),
        ~ gr(?x14),
        cases(gr(?x15),
         [contra(gr(?x14) & gr(t),[gr(?x14),~ gr(?x14),ff]),
          ~ (gr(?x14) & gr(t)),
          contra(gr(?x14) & gr(t) & gr(d(?x15)),
           [gr(?x14) & gr(t),
            ~ (gr(?x14) & gr(t)),
            ff]),
          ~ (gr(?x14) & gr(t) & gr(d(?x15))),
          contra(~ gr(?x15),[]),
          ~ ~ gr(?x15),
          gr([?x15]) <=> gr(?x15) by lemma(axiom_2_5_single_element_list),
          gr(?x15) => gr(d(?x15)),
          assume(~ gr([?x15]),
           contra(gr(d(?x15)),
            [gr(d(?x15)),
             gr([?x15]),
             ff]),
           ~ gr(d(?x15))),
          contra(gr(?x14) & gr(t) & ~ gr(d(?x15)),
           [~ gr(d(?x15)),
            gr(d(?x15)),
            ff]),
          ~ (gr(?x14) & gr(t) & ~ gr(d(?x15))),
          contra(gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15)),
           cases(
            [case(gr(?x14) & gr(t) & ~ gr(d(?x15)),
              [gr(?x14) & gr(t) & ~ gr(d(?x15)),
               ~ (gr(?x14) & gr(t) & ~ gr(d(?x15))),
               ff]),
             case(gr(?x14) & gr(t) & gr(d(?x15)),
              [gr(?x14) & gr(t) & gr(d(?x15)),
               ~ (gr(?x14) & gr(t) & gr(d(?x15))),
               ff])],
            ff)),
          ~ 
          (gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15))),
          contra(~ gr(?x15),[]),
          ~ ~ gr(?x15),
          gr([?x15]) <=> gr(?x15) by lemma(axiom_2_5_single_element_list),
          gr(?x15) => gr(d(?x15)),
          assume(~ gr([?x15]),
           contra(gr(d(?x15)),
            [gr(d(?x15)),
             gr([?x15]),
             ff]),
           ~ gr(d(?x15))),
          contra(~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
           [~ gr(d(?x15)),
            gr(d(?x15)),
            ff]),
          ~ (~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
          contra(gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
           cases(
            [case(~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
              [~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
               ~ (~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
               ff]),
             case(gr(?x14) & gr(t) & ~ gr(d(?x15)),
              [gr(?x14) & gr(t) & ~ gr(d(?x15)),
               ~ (gr(?x14) & gr(t) & ~ gr(d(?x15))),
               ff]),
             case(gr(?x14) & gr(t) & gr(d(?x15)),
              [gr(?x14) & gr(t) & gr(d(?x15)),
               ~ (gr(?x14) & gr(t) & gr(d(?x15))),
               ff])],
            ff)),
          ~ 
          (gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
          contra(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),[]),
          ~ 
          ((gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15)))),
          assume(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),[],
           gr(?x14) & gr(t) & gr(d(d(?x13))) \/
           gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))))],
         ~ gr(?x15),
         [contra(gr(?x15) & gr(t),[gr(?x15),~ gr(?x15),ff]),
          ~ (gr(?x15) & gr(t)),
          contra(gr(?x15) & gr(t) & gr(d(?x13)),
           [gr(?x15) & gr(t),
            ~ (gr(?x15) & gr(t)),
            ff]),
          ~ (gr(?x15) & gr(t) & gr(d(?x13))),
          contra(~ gr(?x13),[]),
          ~ ~ gr(?x13),
          gr([?x13]) <=> gr(?x13) by lemma(axiom_2_5_single_element_list),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          contra(gr(?x15) & gr(t) & ~ gr(d(?x13)),
           [~ gr(d(?x13)),
            gr(d(?x13)),
            ff]),
          ~ (gr(?x15) & gr(t) & ~ gr(d(?x13))),
          contra(gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13)),
           cases(
            [case(gr(?x15) & gr(t) & ~ gr(d(?x13)),
              [gr(?x15) & gr(t) & ~ gr(d(?x13)),
               ~ (gr(?x15) & gr(t) & ~ gr(d(?x13))),
               ff]),
             case(gr(?x15) & gr(t) & gr(d(?x13)),
              [gr(?x15) & gr(t) & gr(d(?x13)),
               ~ (gr(?x15) & gr(t) & gr(d(?x13))),
               ff])],
            ff)),
          ~ 
          (gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13))),
          contra(~ gr(?x13),[]),
          ~ ~ gr(?x13),
          gr([?x13]) <=> gr(?x13) by lemma(axiom_2_5_single_element_list),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          contra(~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
           [~ gr(d(?x13)),
            gr(d(?x13)),
            ff]),
          ~ (~ gr(?x15) & gr(t) & ~ gr(d(?x13))),
          contra(gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
           ~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
           cases(
            [case(~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
              [~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
               ~ (~ gr(?x15) & gr(t) & ~ gr(d(?x13))),
               ff]),
             case(gr(?x15) & gr(t) & ~ gr(d(?x13)),
              [gr(?x15) & gr(t) & ~ gr(d(?x13)),
               ~ (gr(?x15) & gr(t) & ~ gr(d(?x13))),
               ff]),
             case(gr(?x15) & gr(t) & gr(d(?x13)),
              [gr(?x15) & gr(t) & gr(d(?x13)),
               ~ (gr(?x15) & gr(t) & gr(d(?x13))),
               ff])],
            ff)),
          ~ 
          (gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
           ~ gr(?x15) & gr(t) & ~ gr(d(?x13))),
          contra(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
           [gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
            ~ 
            (gr(?x15) & gr(t) & gr(d(?x13)) \/
             gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
             ~ gr(?x15) & gr(t) & ~ gr(d(?x13))),
            ff]),
          ~ 
          ((gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15)))),
          assume(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),[],
           gr(?x14) & gr(t) & gr(d(d(?x13))) \/
           gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))))],
         (gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & 
          ~ gr(d(?x13)) \/ ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
         (gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & 
          ~ gr(d(?x15)) \/ ~ gr(?x14) & gr(t) & ~ gr(d(?x15))) => gr(?x14) &
          gr(t) & gr(d(d(?x13))) \/ gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
          ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13)))),
        (gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
         ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
        (gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
         ~ gr(?x14) & gr(t) & ~ gr(d(?x15))) => gr(?x14) & gr(t) &
         gr(d(d(?x13))) \/ gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
         ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13)))),
       ~ gr(?x13),
       cases(gr(?x14),
        cases(gr(?x15),
         [gr(?x15) & gr(t),
          ~ gr([?x13]) <=> ~ gr(?x13) by 
           lemma(axiom_2_5_single_element_list_de_morgan),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          gr(?x15) & gr(t) & ~ gr(d(?x13)),
          gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & 
          ~ gr(d(?x13)),
          gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & 
          ~ gr(d(?x13)) \/ ~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
          gr(?x14) & gr(t),
          gr([?x15]) <=> gr(?x15) by lemma(axiom_2_5_single_element_list),
          gr(?x15) => gr(d(?x15)),
          assume(~ gr([?x15]),
           contra(gr(d(?x15)),
            [gr(d(?x15)),
             gr([?x15]),
             ff]),
           ~ gr(d(?x15))),
          gr(?x14) & gr(t) & gr(d(?x15)),
          gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & 
          ~ gr(d(?x15)),
          gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & 
          ~ gr(d(?x15)) \/ ~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
          (gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
           ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
          (gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
          gr(?x14) & gr(t),
          ~ gr([?x13]) <=> ~ gr(?x13) by 
           lemma(axiom_2_5_single_element_list_de_morgan),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          ~ gr(d(?x13)) \/ ~ gr([]),
          ~ gr([d(?x13)]) <=> ~ gr(d(?x13)) \/ ~ gr([]) by 
           lemma(axiom_2_5_de_morgan),
          gr(d(?x13)) => gr(d(d(?x13))),
          assume(~ gr([d(?x13)]),
           contra(gr(d(d(?x13))),
            [gr(d(d(?x13))),
             gr([d(?x13)]),
             ff]),
           ~ gr(d(d(?x13)))),
          gr(?x14) & gr(t) & ~ gr(d(d(?x13))),
          gr(?x14) & gr(t) & gr(d(d(?x13))) \/
          gr(?x14) & gr(t) & ~ gr(d(d(?x13))),
          gr(?x14) & gr(t) & gr(d(d(?x13))) \/
          gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
          ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))),
          assume(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),[],
           gr(?x14) & gr(t) & gr(d(d(?x13))) \/
           gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))))],
         ~ gr(?x15),
         [~ gr(?x15) & gr(t),
          ~ gr([?x13]) <=> ~ gr(?x13) by 
           lemma(axiom_2_5_single_element_list_de_morgan),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          ~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
          gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & 
          ~ gr(d(?x13)) \/ ~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
          gr(?x14) & gr(t),
          ~ gr([?x15]) <=> ~ gr(?x15) by 
           lemma(axiom_2_5_single_element_list_de_morgan),
          gr(?x15) => gr(d(?x15)),
          assume(~ gr([?x15]),
           contra(gr(d(?x15)),
            [gr(d(?x15)),
             gr([?x15]),
             ff]),
           ~ gr(d(?x15))),
          gr(?x14) & gr(t) & ~ gr(d(?x15)),
          gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & 
          ~ gr(d(?x15)),
          gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & 
          ~ gr(d(?x15)) \/ ~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
          (gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
           ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
          (gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
          gr(?x14) & gr(t),
          ~ gr([?x13]) <=> ~ gr(?x13) by 
           lemma(axiom_2_5_single_element_list_de_morgan),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          ~ gr(d(?x13)) \/ ~ gr([]),
          ~ gr([d(?x13)]) <=> ~ gr(d(?x13)) \/ ~ gr([]) by 
           lemma(axiom_2_5_de_morgan),
          gr(d(?x13)) => gr(d(d(?x13))),
          assume(~ gr([d(?x13)]),
           contra(gr(d(d(?x13))),
            [gr(d(d(?x13))),
             gr([d(?x13)]),
             ff]),
           ~ gr(d(d(?x13)))),
          gr(?x14) & gr(t) & ~ gr(d(d(?x13))),
          gr(?x14) & gr(t) & gr(d(d(?x13))) \/
          gr(?x14) & gr(t) & ~ gr(d(d(?x13))),
          gr(?x14) & gr(t) & gr(d(d(?x13))) \/
          gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
          ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))),
          assume(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),[],
           gr(?x14) & gr(t) & gr(d(d(?x13))) \/
           gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))))],
         (gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & 
          ~ gr(d(?x13)) \/ ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
         (gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & 
          ~ gr(d(?x15)) \/ ~ gr(?x14) & gr(t) & ~ gr(d(?x15))) => gr(?x14) &
          gr(t) & gr(d(d(?x13))) \/ gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
          ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13)))),
        ~ gr(?x14),
        cases(gr(?x15),
         [contra(gr(?x14) & gr(t),[gr(?x14),~ gr(?x14),ff]),
          ~ (gr(?x14) & gr(t)),
          contra(gr(?x14) & gr(t) & gr(d(?x15)),
           [gr(?x14) & gr(t),
            ~ (gr(?x14) & gr(t)),
            ff]),
          ~ (gr(?x14) & gr(t) & gr(d(?x15))),
          contra(~ gr(?x15),[]),
          ~ ~ gr(?x15),
          gr([?x15]) <=> gr(?x15) by lemma(axiom_2_5_single_element_list),
          gr(?x15) => gr(d(?x15)),
          assume(~ gr([?x15]),
           contra(gr(d(?x15)),
            [gr(d(?x15)),
             gr([?x15]),
             ff]),
           ~ gr(d(?x15))),
          contra(gr(?x14) & gr(t) & ~ gr(d(?x15)),
           [~ gr(d(?x15)),
            gr(d(?x15)),
            ff]),
          ~ (gr(?x14) & gr(t) & ~ gr(d(?x15))),
          contra(gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15)),
           cases(
            [case(gr(?x14) & gr(t) & ~ gr(d(?x15)),
              [gr(?x14) & gr(t) & ~ gr(d(?x15)),
               ~ (gr(?x14) & gr(t) & ~ gr(d(?x15))),
               ff]),
             case(gr(?x14) & gr(t) & gr(d(?x15)),
              [gr(?x14) & gr(t) & gr(d(?x15)),
               ~ (gr(?x14) & gr(t) & gr(d(?x15))),
               ff])],
            ff)),
          ~ 
          (gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15))),
          contra(~ gr(?x15),[]),
          ~ ~ gr(?x15),
          gr([?x15]) <=> gr(?x15) by lemma(axiom_2_5_single_element_list),
          gr(?x15) => gr(d(?x15)),
          assume(~ gr([?x15]),
           contra(gr(d(?x15)),
            [gr(d(?x15)),
             gr([?x15]),
             ff]),
           ~ gr(d(?x15))),
          contra(~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
           [~ gr(d(?x15)),
            gr(d(?x15)),
            ff]),
          ~ (~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
          contra(gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
           cases(
            [case(~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
              [~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
               ~ (~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
               ff]),
             case(gr(?x14) & gr(t) & ~ gr(d(?x15)),
              [gr(?x14) & gr(t) & ~ gr(d(?x15)),
               ~ (gr(?x14) & gr(t) & ~ gr(d(?x15))),
               ff]),
             case(gr(?x14) & gr(t) & gr(d(?x15)),
              [gr(?x14) & gr(t) & gr(d(?x15)),
               ~ (gr(?x14) & gr(t) & gr(d(?x15))),
               ff])],
            ff)),
          ~ 
          (gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
          contra(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),[]),
          ~ 
          ((gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15)))),
          assume(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),[],
           gr(?x14) & gr(t) & gr(d(d(?x13))) \/
           gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))))],
         ~ gr(?x15),
         [~ gr(?x15) & gr(t),
          ~ gr([?x13]) <=> ~ gr(?x13) by 
           lemma(axiom_2_5_single_element_list_de_morgan),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          ~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
          gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & 
          ~ gr(d(?x13)) \/ ~ gr(?x15) & gr(t) & ~ gr(d(?x13)),
          ~ gr(?x14) & gr(t),
          ~ gr([?x15]) <=> ~ gr(?x15) by 
           lemma(axiom_2_5_single_element_list_de_morgan),
          gr(?x15) => gr(d(?x15)),
          assume(~ gr([?x15]),
           contra(gr(d(?x15)),
            [gr(d(?x15)),
             gr([?x15]),
             ff]),
           ~ gr(d(?x15))),
          ~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
          gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & 
          ~ gr(d(?x15)) \/ ~ gr(?x14) & gr(t) & ~ gr(d(?x15)),
          (gr(?x15) & gr(t) & gr(d(?x13)) \/
           gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
           ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
          (gr(?x14) & gr(t) & gr(d(?x15)) \/
           gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),
          ~ gr(?x14) & gr(t),
          ~ gr([?x13]) <=> ~ gr(?x13) by 
           lemma(axiom_2_5_single_element_list_de_morgan),
          gr(?x13) => gr(d(?x13)),
          assume(~ gr([?x13]),
           contra(gr(d(?x13)),
            [gr(d(?x13)),
             gr([?x13]),
             ff]),
           ~ gr(d(?x13))),
          ~ gr(d(?x13)) \/ ~ gr([]),
          ~ gr([d(?x13)]) <=> ~ gr(d(?x13)) \/ ~ gr([]) by 
           lemma(axiom_2_5_de_morgan),
          gr(d(?x13)) => gr(d(d(?x13))),
          assume(~ gr([d(?x13)]),
           contra(gr(d(d(?x13))),
            [gr(d(d(?x13))),
             gr([d(?x13)]),
             ff]),
           ~ gr(d(d(?x13)))),
          ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))),
          gr(?x14) & gr(t) & gr(d(d(?x13))) \/
          gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
          ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))),
          assume(
           (gr(?x15) & gr(t) & gr(d(?x13)) \/
            gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
            ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
           (gr(?x14) & gr(t) & gr(d(?x15)) \/
            gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
            ~ gr(?x14) & gr(t) & ~ gr(d(?x15))),[],
           gr(?x14) & gr(t) & gr(d(d(?x13))) \/
           gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
           ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))))],
         (gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & 
          ~ gr(d(?x13)) \/ ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
         (gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & 
          ~ gr(d(?x15)) \/ ~ gr(?x14) & gr(t) & ~ gr(d(?x15))) => gr(?x14) &
          gr(t) & gr(d(d(?x13))) \/ gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
          ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13)))),
        (gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
         ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
        (gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
         ~ gr(?x14) & gr(t) & ~ gr(d(?x15))) => gr(?x14) & gr(t) &
         gr(d(d(?x13))) \/ gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
         ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13)))),
       (gr(?x15) & gr(t) & gr(d(?x13)) \/ gr(?x15) & gr(t) & ~ gr(d(?x13)) \/
        ~ gr(?x15) & gr(t) & ~ gr(d(?x13))) &
       (gr(?x14) & gr(t) & gr(d(?x15)) \/ gr(?x14) & gr(t) & ~ gr(d(?x15)) \/
        ~ gr(?x14) & gr(t) & ~ gr(d(?x15))) => gr(?x14) & gr(t) &
        gr(d(d(?x13))) \/ gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
        ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))))],
     gr(?x14) & gr(t) & gr(d(d(?x13))) \/
     gr(?x14) & gr(t) & ~ gr(d(d(?x13))) \/
     ~ gr(?x14) & gr(t) & ~ gr(d(d(?x13))))]))].