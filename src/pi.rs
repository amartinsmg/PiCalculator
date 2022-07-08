fn calculate_pi(precision: i32) -> f64 {
  let (mut pi, mut k): (f64, f64) = (0.0, 1.0);
  let max: i32 = i32::pow(10, precision as u32);
  for i in 0..max {
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
  let pi: f64 = calculate_pi(9);
  println!("Pi = {:.8}", pi)
}
