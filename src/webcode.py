import requests
from flask import *
from dbconnectionnew import *

app = Flask ( __name__ )


@app.route ( '/' )
def login ( ) :
    return render_template ( 'login.html' )


@app.route ( '/login_post' , methods = [ 'post' ] )
def login_post ( ) :
    uname = request.form [ 'textfield' ]
    passwrd = request.form [ 'textfield2' ]
    qry = "select * from login where USERNAME=%s and PASSWORD=%s"
    val = (uname , passwrd)
    res = selectone ( qry , val )
    if res is None :
        return '''<script>alert("invalid username or password");window.location='/'</script>'''
    elif res [ 'TYPE' ] == "admin" :
        return '''<script>alert("Welcome admin");window.location='/adminhome'</script>'''
    elif res [ 'TYPE' ] == "teacher" :
        return '''<script>alert("Welcome teacher");window.location='/teacherhome'</script>'''
    else :
        return '''<script>alert("Invalid user");window.location='/'</script>'''


# =================================ADMIN================================================

@app.route ( '/adminhome' )
def adminhome ( ) :
    return render_template ( 'ADMIN/ADMIN HOME.html' )


@app.route ( '/verifymaterial' )
def verifymaterial ( ) :
    return render_template ( 'ADMIN/VERIFY MATERIAL.html' )


@app.route ( '/viewfeedback' )
def viewfeedback ( ) :
    qry = "select * from feedbacks;"
    res = selectall ( qry )
    return render_template ( 'ADMIN/VIEW FEEDBACK.html' , val = res )


@app.route ( '/viewmaterial' )
def viewmaterial ( ) :
    qry = "select * from materials;"
    res = selectall ( qry )
    return render_template ( 'ADMIN/VIEW MATERIAL.html' , val = res )


@app.route ( '/viewnotification' )
def viewnotification ( ) :
    qry = "select * from notification;"
    res = selectall ( qry )
    return render_template ( 'ADMIN/VIEW NOTIFICATION.html' , val = res )


@app.route ( '/viewteachers' )
def viewteachers ( ) :
    qry = "select * from teachers;"
    res = selectall ( qry )
    return render_template ( 'ADMIN/VIEW TEACHERS.html' , val = res )


@app.route ( '/viewstudent' )
def viewstudent ( ) :
    qry = "select * from student"
    res = selectall ( qry )
    return render_template ( 'ADMIN/VIEW STUDENT.html' , val = res )


# ===========================TEACHER=====================================================


@app.route ( '/addmaterial' )
def addmaterial ( ) :
<<<<<<< HEAD
=======
    return render_template('TEACHER/TEACHER REGISTRATION.HTML')
>>>>>>> 80ee0ed (changed to new repo-added base structure)
    material = request.form [ 'file' ]

    qry = "insert into `materials` "
    val = (material)
    res = iud ( qry , val )
    return '''<script>alert("Added successfully ")</script>'''


@app.route ( '/teacherhome' )
def teacherhome ( ) :
    return render_template ( 'TEACHER/TEACHER HOME.html' )


<<<<<<< HEAD
@app.route ( '/teacherregistration' )
=======
@app.route ( '/teacherregistration')
>>>>>>> 80ee0ed (changed to new repo-added base structure)
def teacherregistration ( ) :
    return render_template ( 'TEACHER/TEACHER REGISTRATION.html' )


@app.route ( '/teacherregistration_post' , methods = [ 'post' ] )
def teacherregistration_post ( ) :
    first_name = request.form [ 'firstname' ]
    last_name = request.form [ 'lastname' ]
    username = request.form [ 'username' ]
    password = request.form [ 'password' ]
    email_id = request.form [ 'email' ]
    place = request.form [ 'place' ]
    post_office = request.form [ 'post' ]
    pin_code = request.form [ 'pin' ]
    gender = request.form [ 'radiobutton' ]
    mobile_no = request.form [ 'mob' ]
    dob = request.form [ 'dob' ]
    department = request.form [ 'dep' ]
    qualifcation = request.form [ 'qualification' ]
    college = request.form [ 'clg' ]

    qry = "INSERT INTO login ( USERNAME , PASSWORD , `TYPE` ) VALUES (%s ,%s,'teacher')"
    val = (username , password)
    iud(qry, val)

    qry = "INSERT INTO teachers(first_name, last_name, qualifcation, gender, dob, department, college, email_id, " \
          "mobile_no, PLACE, POST_OFFICE, pin_code) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s) "

    val = (first_name , last_name , qualifcation , gender , dob , department , college , email_id , mobile_no , place ,
           post_office , pin_code)
    res = iud ( qry , val )


    return '''<script>alert(" you're registered successfully ");window.location="/"</script>'''


app.run ( debug = True )
