let cart = [];
let total = 0;

function addToCart(item, price) {
  cart.push({ item, price });
  total += price;
  updateCart();
}

function updateCart() {
  const cartItems = document.getElementById('cart-items');
  cartItems.innerHTML = '';
  cart.forEach(c => {
    const li = document.createElement('li');
    li.textContent = `${c.item} - $${c.price}`;
    cartItems.appendChild(li);
  });
  document.getElementById('cart-total').textContent = total.toFixed(2);
}
function checkout() {
  if (cart.length === 0) {
    alert('Your cart is empty!');
    return;
  } 
    alert(`Thank you for your purchase! Total: $${total.toFixed(2)}`);
    cart = [];
    total = 0;
    updateCart();
}

function openTab(page) {
  window.location.href = page;
}       


let products = []; // Store products globally

document.getElementById('add-product-form').addEventListener('submit', function(e) {
  e.preventDefault();
  
  const name = document.getElementById('product-name').value;
  const price = parseFloat(document.getElementById('product-price').value);
  const quantity = parseInt(document.getElementById('product-quantity').value);
  const image = document.getElementById('product-image').value || 'default.jpg';

  const newProduct = { name, price, quantity, image };
  products.push(newProduct);
  
  updateAdminTable();
  this.reset();
});

function updateAdminTable() {
  const tbody = document.querySelector('#admin-product-list tbody');
  tbody.innerHTML = '';
  
  products.forEach((product, index) => {
    const row = document.createElement('tr');
    row.innerHTML = `
      <td>${product.name}</td>
      <td>$${product.price.toFixed(2)}</td>
      <td>${product.quantity}</td>
      <td>
        <button onclick="editProduct(${index})">Edit</button>
        <button onclick="deleteProduct(${index})">Delete</button>
      </td>
    `;
    tbody.appendChild(row);
  });
}

function deleteProduct(index) {
  products.splice(index, 1);
  updateAdminTable();
}

function editProduct(index) {
  const product = products[index];
  document.getElementById('product-name').value = product.name;
  document.getElementById('product-price').value = product.price;
  document.getElementById('product-quantity').value = product.quantity;
  document.getElementById('product-image').value = product.image;
  deleteProduct(index); // Remove old entry so updated one can be added
}