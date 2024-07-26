
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rmw-fastrtps-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-demo-nodes-cpp-native";
  version = "0.33.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/demo_nodes_cpp_native/0.33.4-1.tar.gz";
    name = "0.33.4-1.tar.gz";
    sha256 = "5357ee7c1ea7af71c6d89edefd91e34b7fa054553f91d4f40bdbdc99214c7dd9";
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
