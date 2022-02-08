export async function getData() {
  const response = await fetch('http://localhost/data.php');
  return await response.json();
}
