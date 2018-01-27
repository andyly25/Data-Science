# Part 2 of Relational Algebra Lecture
- here's the example we've been using
- example: simple college admission db (italicized are unique ids/keys)
    - college(*cName*, state, enrollment)
    - Student(*sID*, sName, GPA, sizeHS)
    - Apply(*sID, cName, major*, decision)

## Union Operator (U or cup ∪)
- Union is denoted as U
    - needs same schema (same attributes, example below doesn't for now)
- list of college and student names
    - π\_CName College U π\_SName Student

## Difference operator (-)
- IDs of students who didn't apply anywhere
    -  π\_sID ((π\_sID Student - π\_sID Apply ) ∞ Student)
    - we grabbed the expression for sID then did a natural join with Student relation
        - called a join back, and now we do projection of student name

## Instersection (cap ∩)
- both has to have the same schema as well
- doesn't add any expressive power
    - `E₁ ∩ E₂ ≡ E₁ - (E₁ - (E₁ - E₂ ))`
    - `E₁ ∩ E₂ ≡ E₁ ∞ E₂` applies if schema are the same
- Names that are both a college name and a student name
    - `π\_cName ∩ π\_sName Student `

___

## QUIZ
- Since I am lazy, these will not be formatted
- 1. Three of the following four expressions finds the names of all students who did not apply to major in CS or EE. Which one finds something different? (Hint: You should not assume student names are unique.)
    - πsName(Student⋈(πsIDStudent−(πsID(σmajor=‘CS‘Apply)∪πsID(σmajor=‘EE‘Apply))))
    - πsName(Student⋈(πsIDStudent−πsID(σmajor=‘CS‘∨major=‘EE‘Apply)))
    - πsName(πsID,sNameStudent−πsID,sName(Student⋈πsID(σmajor=‘CS‘∨major=‘EE‘Apply)))
    - X πsNameStudent−πsName(Student⋈πsID(σmajor=‘CS‘∨major=‘EEApply))
    - A: If there are two students named Susan, one who did not apply to CS or EE, and one who did, then 'Susan' will correctly be included in the result of the first three expressions, but will incorrectly be omitted from the result of the last one.
 - 2.Which of the following English sentences describes the result of this expression: 
πcNameCollege−πcName(Apply⋈(πsID(σGPA>3.5Student)∩πsID(σmajor=‘CS‘Apply)))
    - All colleges with no GPA>3.5 applicants who applied for a CS major at that college
    - X All colleges with no GPA>3.5 applicants who applied for a CS major at any college
    - All colleges where all applicants either have GPA>3.5 or applied for a CS major at that college
    - All colleges where no applicants have GPA>3.5 or no applicants applied for a CS major at that college
    - Answer: The intersection finds the IDs of all students who have GPA>3.5 and applied for a CS major at any college. The natural-join with Apply finds all colleges those students applied for. The minus finds all colleges except the ones those students applied for.

___

## Rename operator (rho ρ)
- reassigns the schema in the result of E
1. ρ<sub>R(A₁,...,A\_n)</sub>(E)
    - general form
2. ρ<sub>R</sub>(E)
    - if we want to use same attribute names that came from E, but change relation name
3. ρ<sub>A₁,...,A\_n </sub>
    - if we want just the attribute names
- here's an example to unify schemas for set operators
    - List of college and student names
        - this will fix the schemas not matching problem
        - ρ\_cname (π\_CName College) U ρ\_c(name) (π\_SName Student)
