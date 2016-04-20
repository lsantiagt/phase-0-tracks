highway = {
    sport_cars: {
        sport1: {  
           make: 'Porsche 911',
           model: '911',
           seat_info: {
               total_seats: 2,
               seats_available: 1
                      },
           ocupant: [
              "Jorge"        ]
                 } ,
                } ,
    sedan: {
        car1: {
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
               } ,
             }  ,
    minivan: {
        van1: {
            make: 'Honda',
            model: 'Oddessey',
            seat_info: {
                total_seats: 7,
                seats_available: 3
                       },
            ocupant: ["Luis","Mariella","Rosa"]
              },
        van2: {
            make: 'Toyota',
            model: 'Sienna',
            seat_info: {
                total_seats: 7,
                seats_available: 6
                       },
            ocupant: ["Adriana"]
              },
             } 
}

p highway[:minivan][:van1][:model]

p highway[:minivan][:van1][:make]

p highway[:minivan][:van2][:ocupant][0]

p highway[:sport_cars][:sport1][:seat_info][:seats_available]