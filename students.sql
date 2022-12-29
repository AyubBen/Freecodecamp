INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
    if [[ $INSERT_COURSE_RESULT == "INSERTT 0 1" ]]
    then
    echo Inserted into courses, $COURSE

    # get new course_id
COURSE_ID=$($PSQL " SELECT course_id FROM courses WHERE course='$COURSE'")  
