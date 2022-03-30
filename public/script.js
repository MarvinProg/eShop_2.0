function hellow_user() {
  let v = window.localStorage.getItem('cc');
  v = v * 1 + 1;
  window.localStorage.setItem('cc', v);
  alert(v);
}

function add_to_cart(id) {
  alert(`Add to cart produc with id: ${id}`);
}