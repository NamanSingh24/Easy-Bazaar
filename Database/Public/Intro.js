import dotenv from 'dotenv';
import mysql from 'mysql2';

dotenv.config();

const pool = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    database: process.env.DB_NAME,
    password: process.env.DB_PASS,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0

}).promise();


export async function getProductsById(id){
    const result= await pool.query('SELECT * FROM product WHERE product_id = ?', [id]);
    return result[0];

}
export async function getProductsByName(name){
    const result= await pool.query('SELECT * FROM product WHERE name = ?', [name]);
    return result[0];

}
export async function createProduct(product){
    const [result]= await pool.query('SELECT * FROM product WHERE name = ? AND supplier_id=?', [product.name, product.supplier_id]);
    if(result.length>0){
        console.log(result.price);
        return 'Product already exists';
    }
    console.log('Received product details:');
    console.log('Name:', product.name);
    console.log('Price:', product.price);
    console.log('Quantity:', product.quantity);
    console.log('Supplier ID:',product.supplier_id);
    await pool.query('INSERT INTO product (supplier_id,name,price, quantity) VALUES (?, ?,?,?)', [ product.supplier_id,product.name, product.price,  product.quantity]);

    return "Product added successfully";
}
export async function updateProductQuantityTo(id,quantity,supplier_id){
    const [result]= await pool.query('SELECT * FROM product WHERE product_id = ? AND supplier_id=?', [id,supplier_id]);
    console.log(result);
    if(result.length!=0 ){
    await pool.query('UPDATE product SET quantity= ? WHERE product_id=? AND supplier_id=?',[quantity, id,supplier_id]);

    return "Product updated successfully";
}
    return "Product does not exist";

}

export async function updateProductQuantityBY(id,quantity,supplier_id){
    const [result]= await pool.query('SELECT * FROM product WHERE product_id = ? AND supplier_id=?', [id,supplier_id]);
    console.log(result);
    if(result.length!=0 && result[0].quantity>=quantity){
    await pool.query('UPDATE product SET quantity= quantity-? WHERE product_id=? AND supplier_id=?',[quantity, id,supplier_id]);

    return 1;
}
    else if(result.length!=0 && result[0].quantity<quantity){
        return 2;
    }
    
    return -1;
}
export async function deleteProduct(id,supplier_id){
    const result= await pool.query('DELETE FROM product WHERE product_id = ? AND supplier_id= ?', [id,supplier_id]);
    console.log(result);
    
}

export async function getProducts(lowerlimit, upperlimit){
    console.log(lowerlimit);
    console.log(upperlimit);
    const result = await pool.query('SELECT * FROM product WHERE product_id >= (SELECT product_id FROM product LIMIT 1) + ? AND product_id <= (SELECT product_id FROM product LIMIT 1) + ?', [lowerlimit, upperlimit]);

    // console.log(result[0]);
    return result[0];
}

export async function verifyUser(username, password){
    const result = await pool.query('SELECT * FROM customer WHERE name=? AND password=?',[username,password]);

    return result[0];

}


export async function verifyAdmin(username, password){
    const result = await pool.query('SELECT * FROM Employee WHERE 	FIRST_NAME=? AND PHONE_NUMBER =? AND DEPT_ID=3',[username,password]);

    if(result[0].length === 0){
        return false;
    }
    return true;

}

export async function verifyEmployee(username, password){
    const result = await pool.query('SELECT * FROM Employee WHERE 	FIRST_NAME=? AND PHONE_NUMBER =? ',[username,password]);

    if(result[0].length === 0){
        return false;
    }
    return true;

}
 export async function getCustomerDetails(id){
    const result= await pool.query('SELECT * FROM customer WHERE customer_id = ?', [id]);
    if(result[0].length===0){
        return 'Customer does not exist';
    }
    console.log( result[0][0].name);
    return result[0][0];
 }

// console.log(result[0]); // this will give the result of the query

const product = {
    id: 100,
    name: 'Asus_Laptop_AM15',
    price: 100,
    supplier_id: 1005,
    quantity: 100
}
// await createProduct(product);
// // await deleteProduct(100);
// const ap= await updateProductQuantity(61,200);
// console.log(ap);
// console.log(await getProductsByName('Asus_Laptop_A15')); // this will give the result of the query
//  const [pi]=  await getProductsById(1);
// console.log(pi.quantity); // this will give the result of the query

// console.log(await getProducts()); // this will give the result of the query



// _________________Functions related to The EMPLOYEE____________________

export async function add_employee(emp){
    const result0 = await pool.query('SELECT * FROM Employee WHERE PHONE_NUMBER = ? AND EMAIL = ?', [emp.phone, emp.email]);
    if(result0[0].length>0){
        return 'Employee already exists';
    }

    else{
    const result = await pool.query('INSERT INTO Employee (FIRST_NAME, MIDDLE_NAME, LAST_NAME, PHONE_NUMBER, EMAIL, PASSWORD, POST, DEPT_ID, SALARY, DOB, DOJ, ACCOUNT_NO) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', [emp.first_name, emp.middle_name, emp.last_name, emp.phone, emp.email, emp.password, emp.post, emp.dept_id, emp.salary, emp.dob, emp.doj, emp.accountNumber]);
    console.log(result);
    }
return "Employee added successfully";
    
}

export async function remove_employee(id){
    const  result0 = await pool.query('SELECT * FROM Employee WHERE ID = ?', [id]);

    if(result0[0].length===0){
        return 'Employee does not exist';
    }
    
    const result = await pool.query('DELETE FROM Employee WHERE ID = ?', [id]);
    console.log(result);
    return "Employee removed successfully";
}

export  async function allocateAgent(id, orderId){
    const result0 = await pool.query('SELECT * FROM Orders WHERE order_id = ?', [orderId]);

    const result1= await pool.query('SELECT * FROM deliveryagent WHERE AGENT_ID =?', [id]);
    if(result0[0].length===0 ){
        return 'Order does not exist';
    }
    if(result1[0].length===0){
        return 'Agent does not exist';
    }
    if(result1[0][0].availability!=1){
        return 'Agent is not available';

    }
    const result = await pool.query('UPDATE orders SET agent_id = ? WHERE order_id = ?', [id, orderId]);
    console.log(result);
    return "Agent allocated successfully";
}


// ________Order related functions____________________

export async function placeOrder(order){
    console.log('Received order details');
    const result  = await pool.query('INSERT INTO Orders (customer_id, product_ids, quantity,  ETA, status,TOTAL_PRICE ) VALUES (?, ?, ?, ?, ?,?)', [order.customer_id, order.product_id, order.quantity, order.ETA, order.status, order.total_price]);
}