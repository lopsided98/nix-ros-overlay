
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-examples-rclcpp-multithreaded-executor";
  version = "0.21.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/lyrical/examples_rclcpp_multithreaded_executor/0.21.5-3.tar.gz";
    name = "0.21.5-3.tar.gz";
    sha256 = "8131f1fb0f0f5db14d8b06c345b0bd30ee52bf10ff141a27581c52d6970dd28d";
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
