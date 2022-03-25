function hellow_user() {
  let v = window.localStorage.getItem('ddd');
  window.localStorage.setItem('ddd', 323);
  alert(v);
}