
use test_params/functions.{ run_time_logic }

type Params {
  some_int: Int,
  some_bytes : ByteArray,
}

validator ( params : Params ) {
  fn spend (dat: ByteArray, _red : Data, _ctx: Data) {
    let Params { some_int , some_bytes } = params
    let req_dat = run_time_logic(some_int, some_bytes)
    dat == req_dat
  }
}
