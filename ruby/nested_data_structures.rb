highway = {
    sport_cars: {
        make: 'Porsche 911',
        model: '911',
        seat_info: {
            total_seats: 2,
            seats_available: 1
        },
        ocupant: [
            "Jorge"        ]
    },
    sedan: {
        make:  'Ford',
        model: 'Fusion',
        seat_info: {
            total_seats: 5,
            seats_available: 3
        },
        ocupant: [
            "Marisol", 
            "Adriana"
        ]
    },
    minivan: {
        make: 'Honda',
        model: 'Oddessey',
        seat_info: {
            total_seats: 7,
            seats_available: 3
        },
        ocupant: ["Luis","Mariella","Rosa"]
    }
}

p highway[:minivan][:model]

p highway[:minivan][:make]