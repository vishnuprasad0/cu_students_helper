import requests
from flask import *
from dbconnectionnew import *
import os
from werkzeug.utils import  secure_filename
app = Flask ( __name__ )
app.secret_key ='123'

@app.route ( '/' )
def login ( ) :
    return render_template ( 'index.html' )


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
        session['lid']=res['LOGIN_ID']
        return '''<script>alert("Welcome admin");window.location='/adminhome'</script>'''
    elif res [ 'TYPE' ] == "teacher" :
        session['lid'] = res['LOGIN_ID']
        return '''<script>alert("Welcome teacher");window.location='/teacherhome'</script>'''
    else :
        return '''<script>alert("Invalid user");window.location='/'</script>'''


# =================================    ADMIN    ================================================
# ==============================================================================================

@app.route ( '/adminhome' )
def adminhome ( ) :
    return render_template ( 'ADMIN/ADMIN HOME.html' )


@app.route ( '/verifymaterial' )
def verifymaterial ( ) :
    qry="select * from materials";
    res= selectall(qry)
    return render_template( 'ADMIN/VERIFY MATERIAL.html',val=res )

@app.route('/accept')
def accept():
    id=request.args.get('id')
    qry="UPDATE `materials` SET `STATUS`='accepted' WHERE `M_ID`=%s"
    iud(qry,id)
    return '''<script>alert("accepted");window.location='verifymaterial'</script>'''

@app.route('/reject')
def reject():
    id = request.args.get('id')
    qry = "delete from `materials` WHERE `M_ID`=%s"
    iud(qry,id)
    return '''<script>alert("rejected");window.location='verifymaterial'</script>'''


@app.route('/viewfeedback' )
def viewfeedback ( ) :
    qry = "select * from feedbacks;"
    res = selectall ( qry )
    return render_template ( 'ADMIN/VIEW FEEDBACK.html' , val = res )


@app.route ( '/viewmaterial' )
def viewmaterial ( ) :
    qry = "select * from materials;"
    res = selectall ( qry )
    return render_template ( 'TEACHER/VIEW MATERIAL.html' , val = res )


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


# ========================================   TEACHER    ===================================================
# =========================================================================================================

@app.route ( '/addmaterial' )
def addmaterial ( ) :
    return render_template('TEACHER/ADD MATERIAL.html')
@app.route('/addmaterial1', methods=['post'])
def addmaterial1():
        material = request.files [ 'file' ]
        filename=secure_filename(material.filename)
        material.save(os.path.join('static/upload',filename))
        subjectname=request.form['subjectname']
        qry = "INSERT INTO `materials` VALUES(null,%s,%s,CURDATE(),%s,'pending')"
        val = (session['lid'],filename,subjectname)
        res = iud ( qry , val )
        return '''<script>alert("Added successfully ");window.location="/addmaterial"</script>'''


@app.route ( '/teacherhome' )
def teacherhome ( ) :
    return render_template ( 'TEACHER/TEACHER HOME.html' )


@app.route ( '/teacherregistration' )
def teacherregistration ( ) :
    return render_template ( 'TEACHER/REGISTRATION index.html' )


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
    iud ( qry , val )

    qry = "INSERT INTO teachers(first_name, last_name, qualification, gender, dob, department, college, email_id, " \
          "mobile_no, PLACE, POST_OFFICE, pin_code) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s) "

    val = (first_name , last_name , qualifcation , gender , dob , department , college , email_id , mobile_no , place ,
           post_office , pin_code)
    res = iud ( qry , val )
    return '''<script>alert(" you're registered successfully ");window.location="/"</script>'''


app.run ( debug = True )
