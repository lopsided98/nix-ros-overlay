
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-examples-rclcpp-multithreaded-executor";
  version = "0.15.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclcpp_multithreaded_executor/0.15.3-1.tar.gz";
    name = "0.15.3-1.tar.gz";
    sha256 = "973add57d8513b26a5c0721122243a05be71dc4b86d6060bf9ed91534c6c5e2c";
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
