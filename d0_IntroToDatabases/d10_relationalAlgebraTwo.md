# Part 2 of Relational Algebra Lecture
- **Note:** unicode math can't do sub or post with letters...
- here's the example we've been using
- example: simple college admission db (italicized are unique ids/keys)
    - college(*cName*, state, enrollment)
    - Student(*sID*, sName, GPA, sizeHS)
    - Apply(*sID, cName, major*, decision)

## Union Operator (U or cup ∪)
- Union is denoted as U
    - needs same schema (same attributes, example below doesn't for now)
- list of college and student names
    - π<sub>CName</sub> College U π<sub>SName</sub> Student

## Difference operator (-)
- IDs of students who didn't apply anywhere
    -  π<sub>sID</sub> ((π<sub>sID</sub>Student - π<sub>sID</sub>Apply ) ∞ Student)
    - we grabbed the expression for sID then did a natural join with Student relation
        - called a join back, and now we do projection of student name

## Instersection (cap ∩)
- both has to have the same schema as well
- doesn't add any expressive power
    - `E₁ ∩ E₂ ≡ E₁ - (E₁ - (E₁ - E₂ ))`
    - `E₁ ∩ E₂ ≡ E₁ ∞ E₂` applies if schema are the same
- Names that are both a college name and a student name
    - π<sub>cName</sub> ∩ π<sub>sName</sub>Student 

___

## QUIZ
- Since I am lazy, these will not be formatted
- 1. Three of the following four expressions finds the names of all students who did not apply to major in CS or EE. Which one finds something different? (Hint: You should not assume student names are unique.)
    - πsName(Student⋈(πsIDStudent−(πsID(σmajor=‘CS‘Apply)∪πsID(σmajor=‘EE‘Apply))))
    - πsName(Student⋈(πsIDStudent−πsID(σmajor=‘CS‘∨major=‘EE‘Apply)))
    - πsName(πsID,sNameStudent−πsID,sName(Student⋈πsID(σmajor=‘CS‘∨major=‘EE‘Apply)))
    - X πsNameStudent−πsName(Student⋈πsID(σmajor=‘CS‘∨major=‘EEApply))
    - A: If there are two students named Susan, one who did not apply to CS or EE, and one who did, then 'Susan' will correctly be included in the result of the first three expressions, but will incorrectly be omitted from the result of the last one.
 - 2. Which of the following English sentences describes the result of this expression: 
πcNameCollege−πcName(Apply⋈(πsID(σGPA>3.5Student)∩πsID(σmajor=‘CS‘Apply)))
    - All colleges with no GPA>3.5 applicants who applied for a CS major at that college
    - X All colleges with no GPA>3.5 applicants who applied for a CS major at any college
    - All colleges where all applicants either have GPA>3.5 or applied for a CS major at that college
    - All colleges where no applicants have GPA>3.5 or no applicants applied for a CS major at that college
    - Answer: The intersection finds the IDs of all students who have GPA>3.5 and applied for a CS major at any college. The natural-join with Apply finds all colleges those students applied for. The minus finds all colleges except the ones those students applied for.

___

## Rename operator (rho ρ)
- reassigns the schema in the result of E
1. ρ<sub>R(A₁,...,A<sub>n</sub>)</sub>(E)
    - general form
2. ρ<sub>R</sub>(E)
    - if we want to use same attribute names that came from E, but change relation name
3. ρ<sub>A₁,...,A<sub>n</sub> </sub>
    - if we want just the attribute names
- here's an example to unify schemas for set operators
    - List of college and student names
        - this will fix the schemas not matching problem
        - ρ<sub>cname</sub> (π<sub>CName</sub> College) U ρ<sub>c(name)</sub> (π<sub>SName</sub> Student)
- for disambiguation in self-joins
    - pairs of colleges in same state (basically college X college)
    - σ<sub>s₁=s₂</sub>(ρ<sub>c1(n1,s1,e1)</sub>(College) X ρ<sub>c2(n2,s2,e2)</sub>(College))
        - can do this instead, since we need same attributes, we make both have s
        - (ρ<sub>c1(n1,s,e1)</sub>(College) ⋈ ρ<sub>c2(n2,s,e2)</sub>(College))
            - this can give us dupes like: Stanford Stanford
        - we'll have duplicates so we add in in the front σ<sub>n1≠n2</sub> 
            - σ<sub>n1≠n2</sub> (ρ<sub>c1(n1,s,e1)</sub>(College) ⋈ ρ<sub>c2(n2,s,e2)</sub>(College))
            - now problem is Stanford Berkeley, and Berkeley Stanford
        - simple fix for above is changing ≠ to <
            - σ<sub>n1<n2</sub> (ρ<sub>c1(n1,s,e1)</sub>(College) ⋈ ρ<sub>c2(n2,s,e2)</sub>(College))

___

## Quiz continued
- 3. Suppose relation Student has 20 tuples. What is the minimum and maximum number of tuples in the result of this expression:
    - ρs1(i1,n1,g,h)Student⋈ρs2(i2,n2,g,h)Student
    - A: minimum = 20, maximum = 400
        - If every student has a unique GPA-HS combination, then students join only with themselves, and there are 20 tuples in the result (minimum). If every student has the same GPA and HS as every other student, then all pairs join and the result has 20x20=400 tuples.
- 4. Suppose relations College, Student, and Apply have 5, 20, and 50 tuples in them respectively. Remember that cName is a key for College. Do not assume sName is a key for Student. Do assume that college names in Apply also appear in College. What is the minimum and maximum number of tuples in the result of this expression:
    - πcNameCollege∪ρcName(πsNameStudent)∪πcNameApply
    - A: minimum = 5, maximum = 25 
        - Recall that duplicates are eliminated automatically in relational algebra. If all students have names that are also college names, then there are only 5 names altogether (minimum). If every student has a unique name and none of them are college names, then there are 5+20=25 names altogether (maximum). Since all college names in Apply are also in College, the third term of the expression cannot add any new names.

___

## Alternate notation
- Assignment statements: pair of colleges in same state
    - C1    := ρ<sub>c1,s,e1</sub> College
    - C2    := ρ<sub>c2,s,e2</sub> College
    - CP    := C1 ∞ C2
    - Ans   := σ<sub>n1<n2</sub> CP
- Expression tree: GPAs of students applying to CS in CA
        π<sub>GPA</sub>
           |
        σ<sub>state='ca'∩ major='cs'</sub>
           |
           ∞
        /   |   \
 College Student Apply

 ---

 ## SUmmary
 - Core:
    - R: relation name is a query in relational algebra
        - we'll now use operators that combines and/or filters relations
    - σ(sigma) is the select operator that applies a condition to result of expression
    - π(pi): π<sub>A₁...Aₓ</sub>(E) project operator that gives set of attributes that we take from result of expression
    - (E1) X (E2): cross product
    - E1 U E2: Union
    - E1 - E2: difference
    - ρ(rho): ρ<sub>R(A₁,...,Aₓ)(E)
- Abbreviations
    - E1 ∞ E2
    - E1 ∞<sub>θ</sub> E2 
    - E1 ∩ E2

---

## Quiz
- **NOTE**: seems like Github requires you to do some extra things to show images
    - I'll look into it if I remember
1. X[Q1] Suppose relation R(A,C) has the following tuples:
    - ![q1 img](/images/d10_01.png "q1 image")
    - Compute the natural join of R and S. Which of the following tuples is in the result? Assume each tuple has schema (A,B,C,D).
    - A: <s>(7, 1, 5, 8)</s> (2,4,3,9)
2. [Q2] Suppose relation R(A,B) has the following tuples:
    - ![q2](/images/d10_02.png "q2 img")
    - Compute the theta-join of R and S with the condition R.B = S.B AND R.A < S.C Which of the following tuples is in the result? Assume each tuple has schema (A, R.B, S.B, C, D).
    - A: (4, c, c, 5, 6)
3. X[Q3] Consider a relation R(A,B) with r tuples, all unique within R, and a relation S(B,C) with s tuples, all unique within S. Let t represent the number of tuples in R natural-join S. Which of the following triples of values (r,s,t) is possible?
    - A: <s>(3,3,27)</s> (2,10,0)
4. X[Q4] Consider a relation R(A) with r tuples, all unique within R, and a relation S(A) with s tuples, all unique within S. Let t represent the number of tuples in R minus S. Which of the following triples of values (r,s,t) is possible?
    - A: <s>(5, 3, 1)</s> (10, 15 ,0)
5. [Q5] Suppose relation R(A,B) has the following tuples:
    - ![q5 img](/images/d10_05.png 'q5 img')
    - Compute the natural join of R and S. Which of the following tuples is in the result? Assume each tuple has schema (A,B,C,D).
    - (1,2,4,6)
6. [Q6] Suppose relation R(A,B) has the following tuples: (same img as before)
    - ![q5 img](/images/d10_05.png 'q5 img')
    - Compute the theta-join of R and S with the condition R.A < S.C AND R.B < S.D. Which of the following tuples is in the result? Assume each tuple has schema (A, R.B, S.B, C, D).
    - A: (3, 4, 4, 7, 9)
7. [Q7] Suppose relation R(A,B,C) has the following tuples:
    - ![q7](/images/d10_07.png 'q7 img')
    - Compute the projection π<sub>C,B</sub>(R). Which of the following tuples is in the result?
    - A: (3,2)
8. [Q8] Suppose relation R(A,B,C) has the following tuples:
    - ![q8 img](/images/d10_08.png 'q8 img')
    - Compute the union of R and S. Which of the following tuples DOES NOT appear in the result?
    - A: (1,5,4)
9. [Q9] Suppose relation R(A,B,C) has the following tuples:
    - ![q8 img](/images/d10_08.png 'q8 img')
    - Compute the intersection of the relations R and S. Which of the following tuples is in the result?
    - A: (4,5,6)
10. [10] Suppose relation R(A,B,C) has the following tuples:
    - ![q8 img](/images/d10_08.png 'q8 img')
    - Compute (R - S) union (S - R), often called the "symmetric difference" of R and S. Which of the following tuples is in the result?
    - A: (4,2,3)

**NOTE: i got a 7/10 on this quiz :(**