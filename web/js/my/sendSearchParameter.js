function sendSearchParameter() {
            var data = new FormData(document.forms['searchbar']);
            var xmlHttp = new XMLHttpRequest();
            xmlHttp.onreadystatechange = function() {
                if (xmlHttp.readyState === 4 && xmlHttp.status === 200){
                    alert("test123");
                    var productslist = document.getElementById('productslist');
                    var products = JSON.parse(xmlHttp.responseText);
                    alert("products" + products);
                    productslist.innerHTML="<form><table><tr><th><span>ID</span></th><th><span>Name</span></th><th><span>Inventory</span></th><th><span>Price</span></th><th><span>Type</span></th><th><span>PurchaseQuantity</span></th>";
                    if(typeof products === 'string') {
                        alert("search status: 200");
                    }else {
                        //copy version
                        for (var i=0;i<products.length;i++){
                            var tr = document.createElement("tr");
                            tr.innerHTML="<tr><td>"+products[i]['ProductID']+"</td><td>"+products[i]['Name']+"</td><td>"+
                                products[i]['Inventory']+"</td><td>"+products[i]['Price']+"</td><td>"+
                                products[i]['TypeID']+"</td>" + "<td><input type='number' value='0' id='number'></td>"
                            productslist.appendChild(tr);
                        }
                        // var button = document.createAttribute("input type='button' value='purchase' id='purchase' onclick='purchase()' /");
                        // button.setAttribute("type", "button;", "value", "purchase;", "id", "purchase;", "onclick", "purchase();");
                        // var table = document.createAttribute("/table");
                        // var form = document.createAttribute("/form");
                        // productslist.appendChild(button);
                        // productslist.appendChild(table);
                        // productslist.appendChild(form);
                    }
                }
            }
            xmlHttp.open("POST", "http://45.78.59.251:8080/browse", true);
            // xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xmlHttp.send(data);
        }