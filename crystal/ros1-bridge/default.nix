
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, rmw-implementation-cmake, actionlib-msgs, ament-cmake, python3Packages, diagnostic-msgs, demo-nodes-cpp, gazebo-msgs, geometry-msgs, stereo-msgs, ament-cmake-pytest, launch, pkg-config, example-interfaces, rclcpp, ament-index-python, ros2run, builtin-interfaces, std-srvs, trajectory-msgs, nav-msgs, rosidl-cmake, rosidl-parser, std-msgs, visualization-msgs, rcutils, shape-msgs, ament-lint-common, sensor-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ros1-bridge";
  version = "0.6.2-r2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros1_bridge-release/archive/release/crystal/ros1_bridge/0.6.2-2.tar.gz;
    sha256 = "8dd00267aeb79b2c88892c8b6806f55684450b04fd412f3874309f069f23e9e3";
  };

  buildInputs = [ tf2-msgs rmw-implementation-cmake actionlib-msgs diagnostic-msgs geometry-msgs gazebo-msgs stereo-msgs pkg-config example-interfaces rclcpp builtin-interfaces std-srvs trajectory-msgs python3Packages.pyyaml nav-msgs std-msgs visualization-msgs rcutils shape-msgs sensor-msgs ];
  checkInputs = [ ament-cmake-pytest demo-nodes-cpp ament-lint-common launch diagnostic-msgs ament-lint-auto ros2run ];
  propagatedBuildInputs = [ builtin-interfaces shape-msgs std-srvs tf2-msgs actionlib-msgs geometry-msgs trajectory-msgs sensor-msgs python3Packages.pyyaml nav-msgs example-interfaces rclcpp std-msgs diagnostic-msgs visualization-msgs rcutils gazebo-msgs stereo-msgs ];
  nativeBuildInputs = [ python3Packages.catkin-pkg ament-cmake rosidl-cmake rosidl-parser ament-index-python ];

  meta = {
    description = ''A simple bridge between ROS 1 and ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
