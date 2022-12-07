from flask import*
from werkzeug.utils import secure_filename
from src.dbconnectionnew import *
import os

app=Flask(__name__)


@app.route('/login',methods=['get'])
def login():
    print(request.form)
    print(request.args)
    username=request.args.get('uname')
    psw=request.args.get('password')
    qry="select * from `login` where username=%s and `password`=%s and type='student'"
    qry2="select * from `login` where username=%s and `password`=%s and type='teacher'"

    val=(username,psw)
    res=selectone(qry,val)
    print(res)

    if res is None:
        print("invalid credential")
        return jsonify({"status":"no"})
    else:
        id=res['LOGIN_ID']
        return jsonify({"status":"ok","id":str(id)})



@app.route('/viewnotification')
def viewnotification():
    print(request.form)
    qry = "SELECT NOTIFICATION,DATE from notification"
    res = selectall(qry)
    return jsonify(res)



@app.route('/addmaterial',methods=['post'])
def addmaterial():
    print(request.files)
    print(request.form)
    material = request.files['picture']
    filename = secure_filename(material.filename)
    material.save(os.path.join('static/upload', filename))
    print("====================")
    subjectname = request.form['det']
    uid = request.form['uid']
    qry = "INSERT INTO `materials` VALUES(null,%s,%s,CURDATE(),%s,'pending')"
    val = (uid, filename, subjectname)
    iud(qry, val)
    return jsonify({"task":"valid"})


@app.route('/viewmaterial')
def viewmaterial():
    print(request.form)
    qry="select MATERIAL,DATE,SUBJECT_NAME from MATERIALS"
    val=()
    res = iud(qry, val)
    return jsonify(res)


@app.route('/feedback',methods=['get'])
def sentfeedback():
    feed = request.args.get('feed')
    lid = request.args.get('lid')
    print(request.form)
    qry="INSERT INTO `feedbacks` (`USER_ID`,`FEEDBACK`,`DATE`) VALUES(%s,%s,CURDATE())"
    val=(lid,feed)
    iud(qry, val)
    return jsonify(status="ok")

@app.route('/registration',methods=['get'])
def register():
    firstname=request.args.get('firstname')
    lastname = request.args.get('lastname')
    username = request.args.get('username')
    password = request.args.get('password')
    email = request.args.get('email')
    department=request.args.get('department')
    post=request.args.get('post')
    college=request.args.get('college')
    place=request.args.get('place')
    mobile=request.args.get('mobile')
    dob=request.args.get('dob')
    gender=request.args.get('gender')
    qry="INSERT INTO `login` VALUES(NULL,%s,%s,'student')"
    val=(username,password)
    lid=iud(qry,val)

    qry1 = "INSERT INTO `student` VALUES(null,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"

    print(request.form)
    val=(str(lid),firstname,lastname,gender,department,dob,email,place,post,mobile,college)
    iud(qry1,val)
    return jsonify(status="ok")





if __name__ =="__main__":
    app.run(host="0.0.0.0",port=5000)


