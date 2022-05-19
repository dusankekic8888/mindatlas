function initData(){
    let result = {}

    var xhr = new XMLHttpRequest();
    xhr.addEventListener("readystatechange", function() {
        if(this.readyState === 4) {
            result = JSON.parse(this.responseText);
        }
    });
    xhr.open("POST", "ajax_call", false);
    xhr.send(JSON.stringify({act:'init'}));

    return result;
}

function loadEnrollments(userId, courseId){
    let result = {}

    var xhr = new XMLHttpRequest();
    xhr.addEventListener("readystatechange", function() {
        if(this.readyState === 4) {
            result = JSON.parse(this.responseText);
        }
    });
    xhr.open("POST", "ajax_call", false);
    xhr.send(JSON.stringify({act: "search", userID: userId, courseID: courseId}));

    return result;
}

document.addEventListener("DOMContentLoaded", function (event) {
    let data = initData();
    let users = data.users ? data.users : [];
    let courses = data.courses ? data.courses : [];

    let userOptionsHtml = '<option>All users</option>';
    users.forEach(function (user) {
        userOptionsHtml += '<option value="' + user.id +'">' + user.firstName + ' ' + user.lastName + '</option>'
    })
    document.getElementById('userID').innerHTML = userOptionsHtml;

    let courseOptionsHtml = '<option>All courses</option>';
    courses.forEach(function (course) {
        courseOptionsHtml += '<option value="' + course.id +'">' + course.course + '</option>'
    })
    document.getElementById('courseID').innerHTML = courseOptionsHtml;

    search();
});

function search() {
    userId = document.getElementById('userID').value;
    courseId = document.getElementById('courseID').value;
    let data = loadEnrollments(userId, courseId);

    let htmlString = '';
    for (i = 0; i < data.length; i++) {
        htmlString += '<tr>' +
            '<td>' + (i + 1) + '</td>' +
            '<td>' + data[i].firstName + ' ' + data[i].lastName + '</td>' +
            '<td>' + data[i].course + '</td>' +
            '<td><b class="text-' + data[i].style + '">' + data[i].status + '</b></td>' +
            '</tr>'
    }
    document.getElementById('data-table').innerHTML = htmlString
}