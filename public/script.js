function hellow_user() {
  let v = window.localStorage.getItem('cc');
  v = v * 1 + 1;
  window.localStorage.setItem('cc', v);
  alert(v);
}

function add_to_cart(id) {
  // alert(`Add to cart produc with id: ${id}`);
  let key = 'product_' + id;
  let x = window.localStorage.getItem(key);
  x = x * 1 + 1;
  window.localStorage.setItem(key, x);

  // alert('Items in your' + get_number_items_in_cart());

  input_update_orders();
  buttons_update_orders();
}

function input_update_orders() {
  let orders = get_orders_cart();
  $('#input_orders').val(orders);
  // document.getElementById('#input_orders').val(orders);
}

function buttons_update_orders() {
  let text = 'Cart (' + get_number_items_in_cart() + ')';
    $('#button_orders').val(text);
    // document.getElementById('#button_orders').val(text);
}

function get_number_items_in_cart() {
  let count = 0;
  for(let item = 0; item < window.localStorage.length; item++) {
    let key = window.localStorage.key(item);
    let value = window.localStorage.getItem(key);

    if (key.indexOf('product_') == 0) {
      count = count + value * 1;
    }
  }

  return count;
}

function get_orders_cart() {
  let orders = '';
  for(let item = 0; item < window.localStorage.length; item++) {
    let key = window.localStorage.key(item);
    let value = window.localStorage.getItem(key);

    if (key.indexOf('product_') == 0) {
      orders = orders + key + '=' + value + ',';
    }
  }

  return orders;
}

function order_cancel() {
  alert('aaa');
  return false;
}