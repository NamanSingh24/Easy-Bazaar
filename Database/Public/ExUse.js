
import dotenv from 'dotenv';
import express from 'express';


import { add_employee, allocateAgent, createProduct, deleteProduct, getCustomerDetails, getProducts, getProductsById, placeOrder, remove_employee, updateProductQuantityBY, updateProductQuantityTo, verifyAdmin, verifyEmployee, verifyUser } from './Intro.js';
const app =  express()


// Remove it on completeion only for
const products = [

];


const cart =[]
let viewMode =0;
  let CurrentOrder =[];
 let  customersId=10012 ;

//Body parsing middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));



app.set("view engine", "ejs")


app.use(express.static('Public',{'Content-Type':'application/javascript'}))


app.use((err, req, res, next) => {
  console.error(err.stack)
  res.status(500).send('Something broke!')
})
dotenv.config();
const port = process.env.PORT ;

app.listen(port, () => {
  // port = process.env.PORT;
  console.log('Server is running on port '+port);
  console.log(`http://localhost:${port}`)
}
)

app.get("/", async(req,res,next)=>{
  try {
    
    res.render("main");
  } catch (error) {
    next(error);
  }

})

app.post("/", async(req,res,next)=>{
  try{
    viewMode = req.body.view;
    console.log("Helleo "+viewMode);
    
    res.sendStatus(200);
    
  }

  catch(error){
    next(error);
  }
}
)



app.get("/login", async(req,res, next) => {

  // res.send("This is the first middleware")
  try {
    // Call the asynchronous function to get products
   
    
    // Send the products as the response


    res.render("login_page",{message:""});
  } catch (error) {
    // Pass any errors to the error handling middleware
    next(error);
  }

 
  
}
)
// why next is used in the async function
// next is used to pass the error to the error handling middleware
app.post("/login", async(req,res,next)=>{
  try {
    const username= req.body.username;
    const password = req.body.password
    // Customer login
    if(viewMode == 0){
    
    console.log(username+" "+password)
    // res.send("Welcome to Easy Bazar Home Page")
    const result = await verifyUser(username,password);

    if(result.length>0){
      customersId = result[0].customer_id;
      console.log("Customer ID: " +customersId);
      // if(products.length===0)
      const products = await getProducts(0,7);
      // const newproducts = await gotProducts(0,10);
      // call the home page
      res.render("CustomerView/Home",{Products:products})
    }
    else{
      res.render("login_page",{message:"Invalid Username or Password"});

    }
    }

    // Admin login
    else if(viewMode == 1){
      
      if ( await verifyAdmin(username, password)){
        res.render("A_Home")
        console.log(username + " " + password)

      }
      else{
        res.render("login_page",{message:"Invalid Username or Password"});
      }
    
  }
  else{
    if(await verifyEmployee(username,password)){
      res.render("E_Home")
      console.log(username + " " + password)
    }
    else{
      res.render("login_page",{message:"Invalid Username or Password"});
    }
  }
}
   catch (error) {
    next(error);
  }
})

app.get("/Admin", async(req,res,next)=>{
  try{
    res.render("A_Home");
  }
  catch(error){
    next(error);
  }
})
// Only for 
const gotProducts = async (low,up) => {
  // Simulate a delay (e.g., database query)
  await new Promise((resolve) => setTimeout(resolve, 1000));
  console.log("Low: "+low+" Up: "+up);
  if( low>=0 && up<=products.length)
    return this.products.slice(low,up);
  else
    return this.products;
};
app.get("/Home", async(req,res,next)=>{
  try {
    // this.products = await getProducts();
    const product = await getProducts(0,7);

    // const product =  await gotProducts();
    // console.log(products);
   
    res.render("CustomerView/Home",{Products:product})
  } catch (error) {
    next(error);
  }
})
app.get("/About", async(req,res,next)=>{
  try {
    res.render("CustomerView/About")
  } catch (error) {
    next(error);
  }
})

app.get("/Contact", async(req,res,next)=>{
  try {
    res.render("CustomerView/Contact")
  } catch (error) {
    next(error);
  }
}
)

app.get("/Blog", async(req,res,next)=>{
  try {
    res.render("CustomerView/Blog")
  } catch (error) {
    next(error);
  }
})

app.get("/ProductDes/:id", async(req,res,next)=>{
  try {
    const id = parseInt(req.params.id); // Access ID from request params
    // console.log(id);
    // const products = await getProducts();
    const product = await getProductsById(id);
    // console.log(id);
    console.log(product);
    res.render("CustomerView/ProductShowcase",{Product:product[0]})
  } catch (error) {
    next(error);
  }
}
)

app.get("/Products", async(req,res,next)=>{
  try{
    
    // const products = await getProducts(0,10);
    const products = await getProducts(0,7);
    res.render("CustomerView/Products",{Products:products, id:1})
  }
  catch(error){
    next(error);
  }
});

app.get("/Product/:id", async (req, res, next) => {
  try {
    const id = parseInt(req.params.id); // Access ID from request params
    const lowerLimit = id * 8;
    const upperLimit = (id + 1) * 8;

    const products = await getProducts(lowerLimit, upperLimit);

    if (products.length < 8) {
      // If fewer than 10 products are returned, set id to -1
      res.render("CustomerView/Products", { Products: products, id: -1 });
    } else {
      // Slice the products to 10 items if more than 10 are returned
      const slicedProducts = products.slice(0, 8);
      res.render("CustomerView/Products", { Products: slicedProducts, id: id + 1 });
    }
  } catch (error) {
    next(error);
  }
});

app.post("/Product", async(req,res,next)=>{

  try {
    const id = parseInt(req.body.id); // Access ID from request query
    const products = await getProducts(id * 10, (id + 1) * 10);
    // const products = await gotProducts();
    // console.log(id);
    return res.send(products);
  } catch (error) {
    next(error);
  }
});

app.post("/Products", async (req, res, next) => {
  try {
    const id = parseInt(req.body.id); // Access ID from request body
    console.log(id);
    const products = await getProducts(id * 10, (id + 1) * 10);
    res.send(200);
  } catch (error) {
    next(error);
  }
});

app.get('/customer_details', (req, res) => {
  // Handle request for the customer details page
  res.render('customer_details');
});

app.get('/supplier_details', (req, res) => {
  // Handle request for the supplier details page
  res.render('supplier_details');
});

app.get('/view_transaction', (req, res) => {
  // Handle request for the manage transactions page
  res.render('ViewTransaction');
});

app.get('/view_customer_details', (req, res,next) => {
  try{
    
    res.render('view_customer_details',{customer:""});
  }
  catch(error){
    next(error);
  }
});
app.post('/view_customer_details', async(req,res,next)=>{
  try{
    console.log(req.body.customerId);
    const id = req.body.customerId;
    const customer = await getCustomerDetails(id);
    if(customer==="Customer does not exist"){
      res.render('view_customer_details',{customer:"Customer does not exist"});
    }
    else{
      console.log(customer.length);
      res.render('view_customer_details',{customer:customer});
    }
    

   
  }
  catch(error){
    next(error);
  }
});
app.get('/manage_employees', async(req, res,next) => {
  try{
    res.render('manage_employees',{message:""});
  }
  catch(error){
    next(error);
  }

});

app.post('/add_employee', async(req, res, next)=>{
  try{
    const {first_name,middle_name,last_name,phone, email,password,post,dept_id,dob,accountNumber,doj,salary}= req.body;

    console.log(first_name," ",middle_name," ",last_name," ",phone," ",email," ",password," ",post," ",dept_id," ",dob," ",accountNumber," ",doj," ",salary);
    const emp = {
      first_name:first_name,
      middle_name:middle_name,
      last_name:last_name,
      phone:phone,
      email:email,
      password:password,
      post:post,
      dept_id:dept_id,
      dob:dob,
      accountNumber:accountNumber,
      doj:doj,
      salary:salary
    }
    let x = await add_employee(emp);

    res.render('manage_employees',{message:x});

  }
  catch(error)
  {
    next(error);
  }
})

app.post('/remove_employee', async(req, res, next)=>{
  try{
    const id = req.body['employee Id To Remove'];;
    console.log(id);
    let x = await remove_employee(id);
    res.render('manage_employees',{message:x});
    
  }
  catch(error)
  {
    next(error);
  }
})

app.get('/manage_delivery', async(req, res,next) => {
  try{
    res.render('manage_delivery',{message:""});
  }
  catch(error){
    next(error);
  }

});
app.post("/assign_delivery_agent", async(req,res,next)=>{
  try {
    const {orderId, agentId} = req.body;
    console.log("Order ID: "+orderId+" Delivery Agent ID: "+agentId);
    let x = await allocateAgent(agentId,orderId);
    res.render('manage_delivery',{message:x});

  } catch (error) {
    next(error);
  }

});

app.get('/manage_products', async(req, res,next) => {
  try{
    res.render('manage_products');
  }
  catch(error){
    next(error);
  }

});

app.post('/Add_Product', async (req, res) => {
  // Extract data from the request body
  const { name, price, quantity, supplier_id } = req.body;

  // Process the data (e.g., insert it into a database)
  // Replace this with your database logic
  // console.log('Received product details:');
  // console.log('Name:', name);
  // console.log('Price:', price);
  // console.log('Quantity:', quantity);
  // console.log('Supplier ID:', supplier_id);
let product = {
  name: name,
  price: price,
  quantity: quantity,
  supplier_id: supplier_id
}
  let ans =await createProduct(product);
  console.log(ans);
  res.render('manage_products');
});

app.post('/Delete_Product', async (req, res) => {
  try{
    const { product_id, supplier_id } = req.body;
    console.log("Product ID: "+product_id+" Supplier ID: "+supplier_id);
    await deleteProduct(product_id,supplier_id);
    res.render('manage_products');
  }
  catch(error){
    console.error('Error:', error);
  }
});

app.post('/update_product_quantity', async(req,res,next)=>{
  try {
    const{product_id, quantity, supplier_id} = req.body;
    let y=await updateProductQuantityTo(product_id,quantity,supplier_id);
    console.log(y);
    res.render('manage_products');
  } catch (error) {
    next(error);
  }
});

app.post('/checkout', async (req, res, next) => {
  try {
    console.log("Order placed successfully");
    let quantity = "";
    let product_id = "";
    let currentDate = new Date();
    let total_price = 0;

    // Add 3 days to the current date
    currentDate.setDate(currentDate.getDate() + 4);

    // Array to store promises returned by updateProductQuantityBY
    const updatePromises = [];

    // Iterate over cart items and create update promises
    cart.forEach((product) => {
      updatePromises.push(updateProductQuantityBY(product.product_id, product.quantity, product.supplier_id));
    });

    // Wait for all update promises to resolve
    const updateResults = await Promise.all(updatePromises);

    // Process update results
    updateResults.forEach((ans, index) => {
      const product = cart[index];
      if (ans === 1) {
        product_id += product.product_id + " ";
        quantity += product.quantity + " ";
        total_price += product.price * product.quantity;
        console.log("Quantity of " + product.name + " updated successfully");
      } else if (ans === 2) {
        console.log("Quantity of " + product.name + " is less than required quantity");
      } else if (ans === -1) {
        console.log("Product with ID " + product.product_id + " does not exist");
      }
    });

    // Format total_price
    total_price = total_price.toFixed(2);

    // Create Order object
    const Order = {
      customer_id: parseInt(customersId),
      total_price: total_price,
      product_id: product_id,
      quantity: quantity,
      status: "In Progress",
      ETA: currentDate
    };

    // Clear cart
    cart.length = 0;
    console.log(Order);

    // Place order
    await placeOrder(Order);

    // Update CurrentOrder
    CurrentOrder = Order;

    // Render Order view
    res.render('Order', { Order: Order });

  } catch (error) {
    next(error);
  }
});


app.get('/Order', async(req, res,next) => {
  try{
    res.render('Order',{Order:CurrentOrder});
  }
  catch(error){
    next(error);
  }

}
);


app.get('/sales_analysis', async(req, res,next) => {
  try{
    res.render('sales_analysis');
  }
  catch(error){
    next(error);
  }

});
app.get("/Cart", async(req,res,next)=>{
  try {

    res.render("CustomerView/Cart_p",{Cart:cart})
  } catch (error) {
    next(error);
  }

})



 async function AddItemToCart(product){
  if(cart.length>0 && cart.find(item=>item.id===product.id)){
    
    let item = cart.find(item=>item.id===product.id); 
    item.quantity=product.quantity;
    item.size=product.size;

    // product.quantity=1;
    // cart.push(product);
    console.log("Item "+product.id+" quantity updated successfully");
  }
  else{
    // product.quantity=1;
    cart.push(product);
    console.log("Item "+product.id+" added to cart successfully");
  }
  console.log(cart);


}


// AJAX request from the client-side code to a server-side endpoint that handles adding items to the cart. This way, the server-side code can process the request and respond accordingly.
// Client-side JavaScript code
app.post('/addToCart', (req, res) => {
  try {
    const product = req.body.product;
    console.log("Item added to cart successfully:"+product.name);
    AddItemToCart(product);

    res.sendStatus(200);
  } catch (error) {
    console.error('Error:', error);
    res.sendStatus(500);
  }
});

app.post('/removeFromCart', (req, res) => {
  try{
    const product = req.body.product;
    console.log("Item removed from cart successfully:"+product.name);
    for(let i=0;i<cart.length;i++){
      if(cart[i].product_id===product.product_id ) {
        
        if(cart[i].quantity>1){
          cart[i].quantity-=1;
          break;
        }
      else{
        cart.splice(i,1);
        break;
      }
    }
    
  }
  res.sendStatus(200);
}
  catch(error){
    console.error('Error:', error);
    res.sendStatus(500);
  }
});
