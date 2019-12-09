
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, rmw-fastrtps-cpp, launch, std-msgs, launch-testing, ament-lint-common, ament-cmake, launch-testing-ament-cmake, ament-cmake-pytest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-demo-nodes-cpp-native";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/demo_nodes_cpp_native/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "a141463954e5adf653c35d14161bc28ac2cb71a34d32300053ac01d87c652adb";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rclcpp rmw-fastrtps-cpp ];
  checkInputs = [ launch-testing-ros launch launch-testing ament-lint-common launch-testing-ament-cmake ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs rclcpp rmw-fastrtps-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which access the native handles of the rmw implemenation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
