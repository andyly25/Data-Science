#XML Schema (XSD)
- allows a way to give content specifications for XML data
- extensive language 
- Like DTDs, can specify elements, attrib, nesting, ordering, # occurances
- also data types, keys, (typed) pointers, and more 
- written in XML
    - uses special tags part of xsd language
    - sample: `<xsd:element name="Bookstore">`
    - keys are more specific, so specify that particular component or attrib. must be unique within every element of same type
        - `<xsd:key name="BookKey">
                <xsd:selector xpath="Book" />
                <xsd:field xpath="@ISBN" />`
- checks if validate on cmd line using: `xmllint -schema Bookstore.xsd --noout Bookstore-XSD.xml`
- a bit lazy to cover too much of this, but just look at the demo scripts and compare.