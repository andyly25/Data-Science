#JSON
- Javescript object notation
    - standard for "serializing" data obj, usually in file
    - human readable, useful for data interchange
    - useful for representing and storing semistructured data
    - no longer tied to JavaScript
    - parsers for many languages

## Basic constructs:
- base values: 
    - number, string, boolean, ...
- objects: {}
    - sets of label-value pairs
        - label-value also called *property*
- arrays []
    - lists of values

## Comparisons between relational and Json
|                |          Relational         |                        JSON                       |
|:--------------:|:---------------------------:|:-------------------------------------------------:|
|    Structure   |            Tables           |                Sets, Arrays, Nested               |
|     Schema     |      Fixed in advanced      |            "self-describing", flexible            |
|     Queries    | simple expressive languages |                    widely used                    |
|    Ordering    |             None            |                       Arrays                      |
| Implementation |        Native Systems       | Coupled with Programming Languages, NoSQL systems |

---

## Quiz (lazy to put in separate file)
1. You're creating a database to contain information about students in a class (name and ID), and class projects done in pairs (two students and a project title). Should you use the relational model or JSON?
    - Relational
2. You're creating a database to contain information about students in a class (name and ID), and class projects. Projects may include any combination of students; they have a title and optional additional information such as materials, approvals, and milestones. Should you use the relational model or JSON?
    - JSON
3. You're creating a database to contain a set of sensor measurements from a two-dimensional grid. Each measurement is a time-sequence of readings, and each reading contains ten labeled values. Should you use the relational model or JSON?
    - Either is appropiate

---

## XML vs JSON
|                 |          Relational          |                 JSON                 |
|:---------------:|:----------------------------:|:------------------------------------:|
|    Verbosity    |             More             |                 Less                 |
|    Complexity   |             More             |                 Less                 |
|     Validity    |    DTDs, XSDs, widely used   |       JSON schema, widely used       |
| Prog. Interface | Clunky, "Impedence mismatch" |          More direct mapping         |
|     Querying    |      XPath, XQuery, XSLT     | JSONiq, JSONPath,.. etc quick Google |

## Syntactically valid JSON
- Adheres to basic struc. req.
    - sets of label-value pairs
    - arrays of values
    - base values from predefined types
    - conforms to specified schema
    - JSON file + Schema -> JSON validator -> JSON Parser -> Program obj
        - can fail at validator due to: Syntactic or semantic errors

## JSON Demo
- instructor used Bookstore.json in the demo, so pull that file in script files folder and study it yourself :)
- you can view JSON files on Chrome

---

##QUIZ
- 1. Which of the following is not valid JSON object

```json
{ "name": "Smiley",
  "age": 20,
  "phone": "888-123-4567"
  "email": "smiley@xyz.com",
  "happy": true }
```
- Problem Explanation
    - In JSON objects, all labels (property names) must be quoted, and all label-value pairs must be separated by commas. Values in label-value pairs can be numbers, quoted strings, true, false, null, objects, or arrays. Objects and arrays may be empty.

- 2.x Which of the following is NOT a valid JSON array?

```json 
[ 1, 2, "dog", "cat", true, false, [1, "dog", null],
  {["pet":"dog"], ["fun":true]} ]
```
- Problem Explanation
    - A JSON array is a comma-separated, [] enclosed list of JSON values. Values can be numbers, quoted strings, true, false, null, objects, or arrays. Objects and arrays may be empty. Objects must be a set of label-value pairs.

- 3.x Consider the following JSON Schema specification:

```json
{
  "type": "object",
  "properties":
    { "ItemID": { "type":"string", "pattern":"Item*" },
      "ItemName": { "type":"string" },
      "Price": { "type":"integer", "minimum":10, "maximum":100 },
      "Sellers": { "type":"array", "maxItems":3,
                   "items": { "type":"string" }},
      "Ratings": { "type":"array",
                   "items":
                      { "type": "object",
                        "properties": {"Rater":
                                       {"type": "string", "optional": true},
                                       "Score":
                                       {"type": "integer", "minimum":1,
                                        "maxiumum":5}}}},
      "AvgRating": { "type":"number", "optional":true },
      "FreeShipping": {"type":"boolean" }
    }
}

```
- Select, from the choices below, the JSON data that is valid according to the JSON Schema specification above.

```json
{ "ItemID": "Item123",
  "ItemName": "desk",
  "Price": 50,
  "Sellers": [ ],
  "Ratings": [{"Rater":"Amy", "Score":5}, {"Score":1},
              {"Rater":"Carl", "Score":4}],
  "AvgRating": 3.33,
  "FreeShipping": true }
```

- Problem Explanation
    - JSON data that is valid according to the JSON Schema specification must have: an itemID that is a string beginning with "Item"; a Price that is an integer between 10 and 100; an array of between 0 and 3 Sellers; an array of 0 or more Ratings, each of which is either a Rater-Score pair, or just a Score, where scores are integers between 1 and 5; a FreeShipping designation of either true or false. (AvgShipping, a real number, is optional.)

- 4. Consider the following JSON data:
    - `{ "A": [1,1,2,2], "B": {"C":3, "D":4}, "E":[5,6,true], "F": {"G": [null,7]} }`
- Which of the following could NOT be included as part of a JSON Schema specification that is satisfied by the JSON data above? Assume that every letter ("A", "B", "C", ...) appears in the JSON Schema specification exactly once.
- `"B": {"type":"array", "items": {"C": {"type":"integer"},
                                "D": {"type":"integer"}}}`
- Problem Explanation
    - The following JSON Schema specification is valid for the given data:

```json
{ "type": "object",
  "properties": {
    "A": {"type":"array", "minItems":4,
          "maxItems":4, "items":{"type":"integer"}},
    "B": {"type":"object",
          "properties": {"C": {"type":"integer"}, "D": {"type":"integer"}}},
    "E": {"type":"array", "items": {"type":["integer","boolean"]}},
    "F": {"type":"object",
          "properties": {"G": {"type":"array",
                               "items": {"type":["null","integer"]}}}}
  }
}
```

- Changing the minimum and/or maximum number of items in "A" is valid as long as four items are permitted. Alternative types may be added (e.g., replacing "integer" with ["integer","string"]) without violating validity.