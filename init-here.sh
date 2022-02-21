#!/usr/bin/env sh



greeting () {
  echo "Hello $1"
}

FILE_LIST=$(cat <<-END
    This is line one.
    This is line two.
    This is line three.
END
)

echo