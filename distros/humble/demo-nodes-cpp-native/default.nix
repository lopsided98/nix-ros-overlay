
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rmw-fastrtps-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-demo-nodes-cpp-native";
  version = "0.20.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/demo_nodes_cpp_native/0.20.5-1.tar.gz";
    name = "0.20.5-1.tar.gz";
    sha256 = "d3eb1e849f1c2f5aca6fffa7551a70aa4fd6dc35c264e93f2ead971200e986f0";
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
