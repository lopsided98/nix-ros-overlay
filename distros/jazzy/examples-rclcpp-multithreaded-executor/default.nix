
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclcpp-multithreaded-executor";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclcpp_multithreaded_executor/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "bf2adc7ef0cfe85138c5e10a098ff1e2eba687c0652bbe76cf26726a56cddab6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing example of how to implement a multithreaded executor";
    license = with lib.licenses; [ asl20 ];
  };
}
