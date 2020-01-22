# Coffee Mate API

This is the backend of my capstone project for Ada Developers Academy. Made with Ruby on Rails, this API consists of coffee shop data.

Deployed by using Docker and hosted on Amazon EC2.

### Base URL
http://52.25.68.111/

### GET /match
  This will return the search results of matched coffee shops based on the following criteria:

| Key        | Value          |
| ------------- |:-------------| 
| neighborhood     | string | 
| parking     | street OR lot     | 
| wifi| true OR false     | 
| food | true OR false     | 

### Example:
```
GET http://52.25.68.111/match?neighborhood=Capitol Hill&parking=street&wifi=true&food=false
```
Will return:
```json
[
    {
        "name": "Café Star",
        "address": "5673 Jodie Rapids",
        "neighborhood": "Capitol Hill",
        "img": "https://live.staticflickr.com/65535/49386726546_3f5ee1a41a_k.jpg"
    },
    {
        "name": "The Mug",
        "address": "173 Russel Stream",
        "neighborhood": "Capitol Hill",
        "img": "https://live.staticflickr.com/65535/49386724971_30654433b1_k.jpg"
    },
    {
        "name": "Huggy Light",
        "address": "8493 Gislason Wells",
        "neighborhood": "Capitol Hill",
        "img": "https://live.staticflickr.com/65535/49386923842_6255f0a248_k.jpg"
    },
    {
        "name": "Melty Delight",
        "address": "9924 Abernathy Crossroad",
        "neighborhood": "Capitol Hill",
        "img": "https://live.staticflickr.com/65535/49386726546_3f5ee1a41a_k.jpg"
    },
    {
        "name": "Stumptown",
        "address": "1115 12th Ave, Seattle, WA 98122",
        "neighborhood": "Capitol Hill",
        "img": "https://live.staticflickr.com/65535/49398055272_b396d4bcc9.jpg"
    },
    {
        "name": "Cafe Ladro",
        "address": "435 15th Ave E, Seattle, WA 98112",
        "neighborhood": "Capitol Hill",
        "img": "https://live.staticflickr.com/65535/49398055227_8ae720eb3b_w.jpg"
    },
    {
        "name": "Victrola",
        "address": "15th Ave E, Seattle, WA 98112",
        "neighborhood": "Capitol Hill",
        "img": "https://live.staticflickr.com/65535/49397366693_344808bf15_b.jpg"
    }
]
```