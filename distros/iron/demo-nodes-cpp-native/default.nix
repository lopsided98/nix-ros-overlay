
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rmw-fastrtps-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-iron-demo-nodes-cpp-native";
  version = "0.27.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/iron/demo_nodes_cpp_native/0.27.2-1.tar.gz";
    name = "0.27.2-1.tar.gz";
    sha256 = "2f86e07a05e24d2230b562eb6b0fdca35ec91deb5852bed397c88de397b7f978";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rmw-fastrtps-cpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ nodes which access the native handles of the rmw implementation.";
    license = with lib.licenses; [ asl20 ];
  };
}
