# XML Data
- Extensible Markup Language (XML)
- Standard for data representation and exchange
    - originally for exchanging info on the internet
- Document format similar to HTML
    - tags describe content instead of formatting
    - has a streaming format/standard for use use of XML in programs for admitting and consuming XML

## Basic Constructs
- tagged elements (nested)
- Attributes (in example below book element has 3 attributes, isbn, price, edition)
- Text
- a sample:

```xml
<Book ISBN="ISBN-somenumbers" Price="overpricedTextbook" Edition="MoreMoney">
    ...
    <Author>
        <First_Name>Bob</First_Name>
        <Last_Name>Wall</Last_Name>
    </Author>
    ...
```

___

## Relational Model vs XML
|                | Relational           | XML                                       |
|----------------|----------------------|-------------------------------------------|
| Structure      | Tables(col,rows)     | Hierarchical(Tree, graph)                 |
| Schema         | Fixed in advanced    | Flexibility(self-describing)              |
| Queries        | simple, nice lang.   | Less so (lot newer than relational model) |
| Ordering       | None(unordered)      | implied (can be document or streamed)     |
| Implementation | Native model of sys. | Add-on (layer or relational db sys.       |

___

### Quiz
1. You're creating a database to contain information about university records: students, courses, grades, etc. Should you use the relational model or XML?
    - Relational
2. You're creating a database to contain information for a university web site: news, academic announcements, admissions, events, research, etc. Should you use the relational model or XML?
    - XML
3. You're creating a database to contain information about family trees (ancestry). Should you use the relational model or XML?
    - Either one is appropiate

___

## Well-Formed XML
- most flexible and is considered wellformed if adheres to basic structural req.
    - single root element
    - all tags are matching, properly nested
    - and within each element, if there's attrib. names, they're unique 
- can check with an XML parser

## Displaying XML
- use rule based language to translate to HTML
    - cascading stylesheets(CSS)
    - Extensible stylesheet language (XSL)
- XML Document(data + valid) -> CSS/XSL interpreter (with some rules) -> HTML Doc (Look at)