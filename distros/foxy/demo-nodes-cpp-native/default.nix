
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rmw-fastrtps-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-demo-nodes-cpp-native";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/foxy/demo_nodes_cpp_native/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "4311884b4f0a75a4045e26a64e4a95c49f3937eb199aba59a50d9124670bcff7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rmw-fastrtps-cpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which access the native handles of the rmw implemenation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
