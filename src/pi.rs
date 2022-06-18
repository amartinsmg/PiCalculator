fn calculate_pi(precision: i32) -> f64 {
  let mut pi:f64 = 0.0;
  let mut k:f64 = 1.0;
  for i in 0..precision {
    if i % 2 == 0 {
      pi = pi + 4.0 / k;
    } else {
      pi = pi - 4.0 / k;
    }
    k = k + 2.0;
  }
  return pi;
}

fn main() {
  let pi:f64 = calculate_pi(1_000_000_000);
  println!("Pi = {:.8}", pi)
}