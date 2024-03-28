IAM Policies
------------

* IAM Policy is a JSON Document.

JSON (Java Script Object Notation)
-----------------------------------

* We use JSON to represent data.
* JSON represents data in the form of name value pairs

```
name          value                 
qualification Btech
course        AWS
```

* Name value is represented in the form of `"<name>": <value>`

```
"qualification": Btech
"course": AWS
```
* Value can be of different types categorized into
    * Simple
        * Text/String: we use quotes
        ```
        "qualification": "Btech"
        "course": "AWS"
        ```
        * Number:
        ```
        "duration": 90
        ```
        * Boolean: two values are possible true or false
        ```
        "isOnline": true
        ```
    * Complex:
       * list/array: This is represented in `[]` .
       ```
       "colors": ["Red", "White"]
       ```
       * object/dictionary: This is represented in `{}` .
       ```
       {
          "Street": 2,
          "Building": "Nilgiri",
          "Landmark": "Ameerpet Metro",
          "City": "Hyderabad"
       }
       ```

* Lets writea json File representing
```json
{
    "Name": "RRR",
    "Director": "SS Rajamouli",
    "Cast": [
        "Ram Charan",
        "NTR",
        "Alia Bhatt"
    ],
    "Budget In Crores": 550,
    "Ratings": {
        "IMDB": 7.9,
        "RottenTomatoes": 95,
        "facebook": 5
    }
}
```


* Write a JSON File representing your favorite holiday destination

```json
{
    "Name": "Holiday Trip",
    "City": "Goa",
    "Famous": [
        "Liquor",
        "Beach",
        "Casinos",
        "Basilica of Bom Jesus"
    ],
    "Popular Cities in Goa": [
        "Panjim",
        "Bardez", 
        "Calangute",
        "Canacona"
    ],
    "Food": [
        "Pork vindaloo",
        "Crab xec xec"
    ]
}
```

* Write a JSON to represent favorite subject of yours. The structure should be as follows
```
{
    Name = Text
    When = Text (one of School, Intermediate, Graduation, PG)
    Topics = list of Text 
}
```

* Lets write some values
```json
{
    "Name": "Design and Analysis of Algorithms",
    "When": "Graduation", 
    "Topics": [
        "Space Complexity",
        "Time Complexity"
    ]
}
```
* Generally we would be following structure provided by  