
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, rmw-fastrtps-cpp, launch, rclcpp-components, std-msgs, launch-testing, ament-lint-common, ament-cmake, launch-testing-ament-cmake, ament-cmake-pytest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-demo-nodes-cpp-native";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/demo_nodes_cpp_native/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "3b02d8e8cdb5e4536937ad68731a70a331f3f66e774f1ee6015acc5e476e9ae4";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rclcpp rmw-fastrtps-cpp rclcpp-components ];
  checkInputs = [ launch-testing-ros launch launch-testing ament-lint-common launch-testing-ament-cmake ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs rclcpp rmw-fastrtps-cpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which access the native handles of the rmw implemenation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
