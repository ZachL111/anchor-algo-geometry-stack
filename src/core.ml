type signal = {
  demand : int;
  capacity : int;
  latency : int;
  risk : int;
  weight : int;
}

let threshold = 173
let risk_penalty = 7
let latency_penalty = 2
let weight_bonus = 4

let score signal =
  signal.demand * 2 + signal.capacity + signal.weight * weight_bonus
  - signal.latency * latency_penalty - signal.risk * risk_penalty

let classify signal =
  if score signal >= threshold then "accept" else "review"
