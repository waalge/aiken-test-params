
use test_params/constants.{ pre_compiled_logic }

validator {
  fn spend (dat: ByteArray, _red : Data, _ctx: Data) {
    let req_dat = pre_compiled_logic()
    dat == req_dat
  }
}
