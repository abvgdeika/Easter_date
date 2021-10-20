#!/bin/bash
## Сalculating the date of Easter. There are always 30 days in April

## Set year
year=2051

## Calculation formula
let d="((19*(year%19))+15)%30"
let e="(2*(year%4)+4*(year%7)+6*d+6)%7"
let f="d+e"

## Old-style calendar date
if [[ f -le 9 ]]; then
        let date="22+f"
elif [[ f -ge 9 ]]; then
        let date="f-9"
fi

## Convert to new-style calendar date
let date="date+13"

## Output of date
if [[ date -gt 30 ]]; then
        let date="date-30"
        echo "Пасху в" $year "году празднуют" $date "мая"
else
        echo  "Пасху в" $year "году празднуют" $date "апреля"
fi
