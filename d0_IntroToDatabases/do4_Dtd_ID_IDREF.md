# DTDs, IDs & IDREFs
- Document Type Descriptors (DTDs)
- ID
- ID ref attributes

## "Valid" XML
- adheres to basic struct of "well formed"
- adheres to content specific specifications
    - DTD
    - XML Schema (XSD)

## DTD
- grammar like lang. for specifying elements, attrib., nesting, ordering, #occur
- also pecial attrib types ID and IDREF(s)
    - allows specifiy pointers (untyped)
- With DTD/XSD:
    - programs can assume structure
    - CSS/XSL also helps assume structure
    - specification - data exchange
    - documentation
    - benefits of "typing" (strongly typed data vs loosely typed data)
- None:
    - Flexibility, ease of change
    - DTDs can be (really)messy - irregular
    - XSDs
    - benefits of "no typing"

- here's a sample below of a DTD (I'll use // for comments)

```xml
<!DOCTYPE Bookstore [
    <!ELEMENT Bookstore (Book | Magazines) * > // bookstore has any # of elements books/magazines 0 or more of
    <!ELEMENT Book (Title, Authors, Remark?)>  // A book has those 3 elements with Remark not required
    <!ATTLIST Book  ISBN CDATA # REQUIRED      // Now we describe the attributes
                    Price CDATA # REQUIRED     // CDATA is type of attribute (just a string)
                    Edition CDATA #IMPLIED>    // Implied (means attribute doesn't have to be present)
    ...
    <!ELEMENT Title (#PCDATA)>                 // leaf text data in XML tree
    <!ELEMENT Authors (Author+)>               // can have 1 or more author subelements, still structured
    <!ELEMENT Remark (#PCDATA)>
    <!ELEMENT Author (First_Name, Last_Name)>
    <!ELEMENT First_Name (#PCDATA)>
    <!ELEMENT Last_Name (#PCDATA)>
]>
```
- for IDREFS (bit too lazy to type things out)
    - In XML doc, in Author section there is now an `Ident="HG"`
        - the ident attribute, and we gave string values to that attrib. we'll use as pointers
    - Now back above the top side there is `Authors="HG JU JW"`
        - Authors is an ID reps attribute and its value can refer to 1+ strings that are ID attrib.
    - ISBN can be used to refer to the id of another book
    - pointers are untyped so if you change the pointer from book id to author id there'd be no complaints 
    - DTDs changed a bit and I'll show a snippet below

```xml
    ...
    <!ATTLIST   Book ISBN ID #REQUIRED      // Now a special type of attrib called ID
                Price CDATA #REQUIRED
                Authors IDREFS #REQUIRED>   // now special called IDREFS (Plural, has one or more ID values separated by spaces)
    ...
    <!ELEMENT Remark (#PCDATA | BookRef)*>  // used to mix strings and sub elements within an element, 0+
    <!ELEMENT BookRef EMPTY>                // empty element, has attrib. in XML doc, and attrib is book
    <!ATTLIST BookRef book IDREF #REQUIRED> // refers to an id attribute of another element, note: IDREF here is singular (has exactly one ID value)
    <!ELEMENT Author (First_Name, Last_Name)>
    <!ATTLIST Author Ident ID #REQUIRED>    // have again an ID we call Ident
    ...
```
