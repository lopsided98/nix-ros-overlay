
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pytest, builtin-interfaces, cli11, example-interfaces, python3Packages, rcl-action, rcl-interfaces, rclcpp, rclpy, rmw, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-implementation-cmake, rmw-zenoh-cpp, ros-environment, rosgraph-msgs, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nodl-observe";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/lyrical/nodl_observe/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "5dbc6b49642882284aa6b08c7103b1f2c28a75a8a54e42cb0ff6e036e4e9b600";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest example-interfaces python3Packages.pytest rclpy rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-implementation-cmake rmw-zenoh-cpp rosidl-runtime-py std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces cli11 rcl-action rcl-interfaces rclcpp rmw rosgraph-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ros-environment ];

  meta = {
    description = "Observe a running ROS node and produce its runtime description as a rosgraph_msgs/Node message.";
    license = with lib.licenses; [ asl20 ];
  };
}
