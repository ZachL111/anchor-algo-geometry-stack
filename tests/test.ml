#use "core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 92; capacity = 98; latency = 16; risk = 25; weight = 7 };;
expect (score signal_case_1 = 103);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 84; capacity = 85; latency = 9; risk = 13; weight = 12 };;
expect (score signal_case_2 = 192);;
expect (classify signal_case_2 = "accept");;
let signal_case_3 = { demand = 66; capacity = 78; latency = 23; risk = 16; weight = 10 };;
expect (score signal_case_3 = 92);;
expect (classify signal_case_3 = "review");;

#use "review.ml";;
let domain_review = { signal = 44; slack = 23; drag = 29; confidence = 67 };;
expect (review_score domain_review = 91);;
expect (review_lane domain_review = "hold");;
