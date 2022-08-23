INSERT INTO `user_table`(`user_id`, `user_email`, `user_password`) VALUES (@auto_increment,"john.mike@gmail.com","mikeW££%&&££^*"),
(@auto_increment,"rose.romania@gmail.com","roseW££%&&££^*"),
(@auto_increment,"eva.wine@gmail.com","wineW££%&&££^*"),
(@auto_increment,"jack.daniels@gmail.com","danielsW££%&&££^*"),
(@auto_increment,"yousuo.dike@gmail.com","dikeW££%&&££^*"),
(@auto_increment,"wike.adumo@gmail.com","wikeW££%&&££^*"),
(@auto_increment,"ralph.nee@gmail.com","ralphW££%&&££^*")


INSERT INTO `staff`(`staff_id`, `firstname`, `surname`, `staff_role`, `contact_no`, `user_id`) VALUES 
(@auto_increment,"Lois","Mandela","Instructor","07190846473"),
(@auto_increment,"Ghana","Dumebi","Event Manager","02190846473"),
(@auto_increment,"Rons","Dulala","Scribe","08073737473"),
(@auto_increment,"Ekeremor","Sagbama","Public Secretary","09090846473");

INSERT INTO `user_table`(`user_id`, `user_email`, `user_password`) VALUES (@auto_increment,"john.mike@gmail.com","mikeW££%&&££^*"),
(@auto_increment,"lois.mandela@gmail.com","lois££%&&££^*"),
(@auto_increment,"dumebi.ghana@gmail.com","ghana££%&&££^*"),
(@auto_increment,"rons.dulala@gmail.com","dulala££%&&££^*"),
(@auto_increment,"ekeremor.sagbama@gmail.com","sagbama££%&&££^*");


INSERT INTO `activity`(`activity_id`, `activity_code`, `activity_title`, `delivery_day`, `delivery_time`) VALUES 
(@auto_increment,"yv2190","YouWIN Volley","2022-08-30","08:30"),
(@auto_increment,"jd2826","Judo Training","2022-06-29","03:00"),
(@auto_increment,"pic3001","Picknic","2022-12-19","10:30");

INSERT INTO `booking`(`booking_id`, `booking_date`, `member_id`, `activity_id`) VALUES (@auto_increment,"2022-05-10",7,1),
(@auto_increment,"2022-01-13",2,1),
(@auto_increment,"2022-03-11",4,2),
(@auto_increment,"2022-04-13",5,1),
(@auto_increment,"2022-05-21",6,2),
(@auto_increment,"2022-03-19",1,1);


'Show Current Weekly Booking'
SELECT member.firstname AS Firstname, member.surname AS Surname, booking.booking_id As "Booking ID", booking.booking_date AS "Booking Date", activity.activity_title AS "Activity Title", activity.delivery_day As 		"Delivery Date", activity.delivery_time AS "Delivery Time"
FROM booking 
    INNER JOIN member ON booking.member_id = member.member_id
    INNER JOIN activity ON booking.activity_id =  activity.activity_id
WHERE week(booking_date) = week(now());

'Show Most Active Member'
SELECT LEFT(booking.booking_date, 7) AS Month,
       COUNT(booking.booking_id) AS "Most Active Member"
    FROM booking
    GROUP BY LEFT(booking.booking_date, 7)

