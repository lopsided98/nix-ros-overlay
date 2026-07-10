
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rmw-fastrtps-cpp }:
buildRosPackage {
  pname = "ros-lyrical-demo-nodes-cpp-native";
  version = "0.37.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/demo_nodes_cpp_native/0.37.9-1.tar.gz";
    name = "0.37.9-1.tar.gz";
    sha256 = "2fb6d947b8705e9eda0210e7b2cd26de4df21428e191448aa3b9c2164dffaf2c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-components rmw-fastrtps-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ nodes which access the native handles of the rmw implementation.";
    license = with lib.licenses; [ asl20 ];
  };
}
