function getHistory(params) {
                    var xmlHttp = new XMLHttpRequest();
                    xmlHttp.onreadystatechange = function() {
                        if (xmlHttp.readyState == 4 && xmlHttp.status == 200){
                            var history = JSON.parse(xmlHttp.responseText);
                            var text ="<table><tr><td>ProductName<td>Price</td><td>Quantity</td><td>Data</td><br>"
                            if(typeof history === 'string') {
                                alert("get history fail");
                            }else{
                                alert('get history success');
                                // alert("length: " + history.length);
                                for(var i = 0; i < history.length; i++) {
                                    text += "<tr><td>" + history[i].Name +
                                        "</td><td>" + history[i].Price + "</td><td>" +
                                        history[i].Quantity + "</td><td>" +
                                        history[i].Date + "</td></tr><br>";
                                }
                            }
                            text = text + "</table>";
                            document.getElementById("purchasehistory").innerHTML = text;
                        }
                    }
                    var formData = new FormData();
                    formData.append('customerid' ,params)
                    xmlHttp.open("POST", "http://45.78.59.251:8080/history", true);
                    // xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    xmlHttp.send(formData);
                }