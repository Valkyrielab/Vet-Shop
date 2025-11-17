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
