function signinnow() {
                    var xmlHttp = new XMLHttpRequest();
                    xmlHttp.onreadystatechange = function() {
                        if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                            var obj = JSON.parse(xmlHttp.responseText);
                            if (typeof obj === 'string'){
                                alert("Error");
                            } else {
                                alert("Sign in Success");
                                var params = obj.CustomerID;
                                // invoke getHistory();
                                params = params + '';
                                var header = document.getElementById("header");
                                var purchasehistory = document.getElementById("purchasehistory");
                                var searchbar = document.getElementById('searchbardiv');
                                var productslist = document.getElementById('productslist');
                                header.style.display = "none";
                                purchasehistory.style.display = "";// equal to blcok
                                searchbar.style.display="";
                                productslist.style.display="";
                                getHistory(params);
                            }
                        }
                    }
                    xmlHttp.open("POST", "http://45.78.59.251:8080/signin", true);
                    // xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

                    var data = new FormData(document.forms['signin']);
                    xmlHttp.send(data);

                }