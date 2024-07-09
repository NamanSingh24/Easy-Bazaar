
function addItemToCart(product) {
  fetch('/addToCart', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body:  JSON.stringify({product: product}) 
  })
  .then(response => {
    if (response.ok) {
      
      console.log('Item added to cart successfully '+product.name);
      

    } else {
      console.error('Failed to add item to cart');
    }
  })
  .catch(error => {
    console.error('Error:', error);
  });
}

function removeItemFromCart(product) {
  fetch('/removeFromCart', {
    method: 'Post',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({product: product})
  })
  .then(response=>{
    if(response.ok){
      console.log('Item removed from cart successfully '+product.name);
      // Reload the cart page after adding the item
      window.location.href = '/Cart';
    }else{
      console.error('Failed to remove item from cart');
    }
  })
  .catch(error=>{
    console.error('Error:', error);
  });
}
// function ProductShowcase(id){
//   fetch('/ProductDes/:id', {
//     method: 'POST',
//     headers: {
//       'Content-Type': 'application/json'
//     },
//     body: JSON.stringify({id: id})
//   })
//   .then(response=>{
//     if(response.ok){
//       console.log('Product fetched successfully');
//       window.location.href = '/ProductDes/:id';
//     }else{
//       console.error('Failed to fetch product');
//     }
//   })
//   .catch(error=>{
//     console.error('Error:', error);
//   });
// }

function checkout(){
  fetch('/checkout',{
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    
  }
).then(response=>{
  if(response.ok){
    console.log('Order placed successfully');
    window.location.href = '/Order';
    
  }
  else{
    console.error('Failed to change view mode');
  }
}
)
.catch(error=>{
  console.error('Error:', error);
});
}


// Function to get the cart items from the server
// function getProduct(id) {
//   return fetch('/Product', {
//     method: 'POST',
//     headers: {
//       'Content-Type': 'application/json'
//     },
//     body: JSON.stringify({ id: id }) // Include id in the request body
//   })
//   .then(response => {
//     if (response.ok) {
//       console.log('Item fetched successfully');
      
//       return response.json();
//     }
//     throw new Error('Failed to get products');
//   })
//   .catch(error => {
//     console.error('Error:', error);
//   });
// }



// *****************For Page Descriptions****************
var MainImg = document.getElementById("MainImg");

var smallimg = document.getElementsByClassName("small-img");

for (var i = 0; i < smallimg.length; i++) {
    smallimg[i].onclick = function() {
        MainImg.src = this.src;
    }
}

function AddItem(product){
    const  sizeofitem = document.getElementById('ClothSize').value;
    // const  Itemid = id;
    // // const  colorofitem = document.getElementById('ClothColor').value;
    const  quantityofitem = document.getElementById('ClothQuantity').value;
    const  src = document.getElementById('MainImg').src;
    let  price =  document.getElementById('Pricetag').innerHTML;
    price = Number(price.replace('$',''));
    const newproduct = {
      id: product.product_id,
      size: sizeofitem, // Change size field
      quantity: quantityofitem, // Change quantity field
      price: price,
      discount_price: product.discount_price,
      name: product.name,
      color: product.color,
      material: product.material,
      gender: product.gender,
      brand: product.brand,
      description: product.description,
      src: product.src, // Assuming src is the image path
    };
    

    console.log(newproduct);
    addItemToCart(newproduct);
}

// ##################For Products Page####################
const bar = document.getElementById('bar');
const close = document.getElementById('close');
const nav = document.getElementById('navbar');

if(bar){
    bar.addEventListener('click',() => {
        nav.classList.add('active');
    })
}

if(close){
    close.addEventListener('click',() => {
        nav.classList.remove ('active');
    })
}