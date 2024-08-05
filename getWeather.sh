if [ -z "$1" ]; then
  echo "Usage: $0 ZIPCODE"
  exit 1
fi

WEATHER_DATA=$(curl -s "wttr.in/$1?format=2")

if [ $? -ne 0 ]; then
  echo "Error fetching weather data"
  exit 1
fi

echo "The weather for $1: $WEATHER_DATA"
