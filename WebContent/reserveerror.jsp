<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="resources/css/layout.css" />
		<link rel="stylesheet" type="text/css" href="resources/css/accordion.css" />
		<script src="resources/jquery/js/jquery-1.9.1.js"></script>
		<script src="resources/js/format.js"></script>
		<title>YouDrive Dashboard</title>
	</head>
	<body>
		<div id="mainbody">
			<%@ include file="resources/html/header.html" %>
			<%@ include file="resources/html/leftnav.html" %>
			<div id="dashboardpanel">
				<span class="dbpaneltitle">Choose Reservation Info.</span>
				<br /><br />
				<span class="dbpaneltitle" style="font-size:16px;">Choose Reservation Times.</span>
					<br /><br />
					Error: ${errorReason}
					<br /><br />
				<form action="ReservationManager">
					Pickup time:
					<br />
					<select name="pickupday">
						<option value="${day}" selected>${day}</option>
						<c:forEach var="D" begin="1" end="31">
							<option value="${D}">${D}</option>
						</c:forEach>
					</select> <span class="datedivider">/</span> 
					<select name="pickupmonth">
						<option value="${month}" selected>${month}</option>
						<c:forEach var="M" begin="1" end="12">
							<option value="${M}">${M}</option>
						</c:forEach>
					</select> <span class="datedivider">/</span> 
					<select name="pickupyear">
						<option value="${year}" selected>${year}</option>
						<c:forEach var="Y" begin="13" end="16">
							<option value="20${Y}">20${Y}</option>
						</c:forEach>
					</select> at 
					<select name="pickuphour">
						<option value="${hour}" selected>${hour}</option>
						<c:forEach var="h" begin="1" end="12">
							<option value="${h}">${h}</option>
						</c:forEach>
					</select>
					<select name="pickupmeridiem">
						<option value="${meridiem}" selected>${meridiem}</option>
						<option value="am">am</option>
						<option value="pm">pm</option>
					</select>
					<br /><br />
					
					Rental Type:
					<br />
					<select name="rentaltype">
						<option value="${type}" selected>${type}</option>
						<option value="hourly">Hourly</option>
						<option value="daily">Daily</option>
					</select> rental 
					<br />
					<div class="rentaltype" id="hourly">
						for <select name="rentallengthhours">
							<option value="${lengthhours}" selected>${lengthhours}</option>
							<c:forEach var="h" begin="1" end="72">
								<option value="${h}">${h}</option>
							</c:forEach>
						</select> hours.
					</div>
					<div class="rentaltype" id="daily" style="display:none;">
						for <select name="rentallengthdays">
							<option value="${lengthdays}" selected>${lengthdays}</option>
							<c:forEach var="d" begin="1" end="3">
								<option value="${d}">${d}</option>
							</c:forEach>
						</select> days.
					</div>
					<br /><br />
					
					Vehicle Type:
					<br />
					<select name="vehicletype">
						<option value="" selected>-- Choose One --</option>
						<option value="${selectedtype.id}" selected>${selectedtype.description}</option>
						<c:forEach items="${vehicleTypes}" var="type">
							<option value="${type.id}">${type.description}</option>
						</c:forEach>
					</select>
					<c:forEach items="${vehicleTypes}" var="type">
						<div class="typeinfobox" id="${type.id}" style="float:right; display:none;margin-top:-5px;">
							Hourly Rate: ${type.hourlyRate}
							<br />
							Daily Rate: ${type.dailyRate}
						</div>
					</c:forEach>
					<br /><br />
					<span class="dbpaneltitle" style="font-size:16px;">Choose Location.</span>
					<br /><br />
					<c:forEach items="${locations}" var="location">
					Location: ${location.name}
					<br /><br />
					Address:
					<br />
					&nbsp;&nbsp;&nbsp;&nbsp;${location.locationAddress.streetAddrLine1}
					<br />
					&nbsp;&nbsp;&nbsp;&nbsp;${location.locationAddress.streetAddrLine2}
					<br />
					&nbsp;&nbsp;&nbsp;&nbsp;${location.locationAddress.city}, ${location.locationAddress.state} ${location.locationAddress.zipCode}
					<br />
					&nbsp;&nbsp;&nbsp;&nbsp;${location.locationAddress.country}
					<br /><br />
					<input type="radio" name="location" value="${location.id}">Choose this location?
					<br /><br /><hr /><br />
				</c:forEach>
				<input type="submit" name="chooselocation" value="Submit">
				</form>
			</div>
		</div>
		<script type="text/javascript">
			$(window).load(function() {
				setWidth();
				var str = "";
				str += $( "select[name='rentaltype']" ).val();
				$( "div[class='rentaltype']" ).hide();
				$( "div[id='" + str + "']" ).show();
			});
			$(window).resize(function() {setWidth();});
			
			$( "select[name='vehicletype']" ).change(function () {
				var str = "";
				str += $( this ).val();
				$( "div[class='typeinfobox']" ).hide();
				$( "div[id='" + str + "']" ).show();
			});
			
			$( "select[name='rentaltype']" ).change(function () {
				var str = "";
				str += $( this ).val();
				$( "div[class='rentaltype']" ).hide();
				$( "div[id='" + str + "']" ).show();
			});
		</script>
	</body>
</html>