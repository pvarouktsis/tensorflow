// RUN: tf_to_kernel --input=%s --output=%t --unroll_factors=4 --tile_sizes=256 --arch=sm_70,compute_75

func @tanh(%arg: tensor<*xf32>) -> tensor<*xf32> attributes {tf_entry} {
  %0 = "tf.Tanh"(%arg) : (tensor<*xf32>) -> tensor<*xf32>
  return %0 : tensor<*xf32>
}
