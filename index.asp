<%
Dim data, httpRequest, postResponse

data =  "{"
data = data &"""notification"": { "
data = data &"""title"": ""العنوان""," 
data = data &"""body"": "" محتوى الرسالة "","
data = data &"""icon"": "" مسار الصورة "","
data = data &"},"
data = data &"""to"" : ""التوكن تبع المستخدم"""
data = data &"}"


Set httpRequest = Server.CreateObject("MSXML2.ServerXMLHTTP")
httpRequest.Open "POST", "https://fcm.googleapis.com/fcm/send", False
' Set the content type header
' key = "AAAAX-X_QmQ:APA91bG-_QmQ" from firebase
httpRequest.SetRequestHeader "Authorization", "key=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
httpRequest.SetRequestHeader "Content-Type", "application/json"
httpRequest.Send data

postResponse = httpRequest.ResponseText

Response.Write postResponse ' or do something else with it

%>