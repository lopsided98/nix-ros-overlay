
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rmw-fastrtps-cpp, launch, std-msgs, launch-testing, ament-lint-common, ament-cmake, ament-cmake-pytest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-demo-nodes-cpp-native";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/demo_nodes_cpp_native/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "3a7bbe8783baab74faa5bfc7f49cc90e4ffa199f6cde8b83dcdf0146dcc0f5fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rclcpp rmw-fastrtps-cpp ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs rclcpp rmw-fastrtps-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which access the native handles of the rmw implemenation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
