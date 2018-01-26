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

 
