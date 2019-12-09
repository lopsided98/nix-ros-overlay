
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, demo-nodes-cpp, actionlib-msgs, tf2-msgs, nav-msgs, ament-lint-auto, sensor-msgs, diagnostic-msgs, rcutils, rmw-implementation-cmake, shape-msgs, ament-lint-common, builtin-interfaces, rclcpp, rosidl-cmake, std-msgs, std-srvs, pkg-config, example-interfaces, trajectory-msgs, ros2run, python3Packages, launch, gazebo-msgs, stereo-msgs, visualization-msgs, ament-cmake-pytest, ament-index-python, rosidl-parser }:
buildRosPackage {
  pname = "ros-crystal-ros1-bridge";
  version = "0.6.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros1_bridge-release/archive/release/crystal/ros1_bridge/0.6.2-2.tar.gz";
    name = "0.6.2-2.tar.gz";
    sha256 = "8dd00267aeb79b2c88892c8b6806f55684450b04fd412f3874309f069f23e9e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs actionlib-msgs tf2-msgs nav-msgs sensor-msgs diagnostic-msgs rcutils rmw-implementation-cmake shape-msgs builtin-interfaces rclcpp python3Packages.pyyaml std-msgs std-srvs pkg-config example-interfaces trajectory-msgs gazebo-msgs stereo-msgs visualization-msgs ];
  checkInputs = [ ros2run diagnostic-msgs launch ament-lint-common demo-nodes-cpp ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs actionlib-msgs tf2-msgs nav-msgs sensor-msgs diagnostic-msgs rcutils shape-msgs rclcpp builtin-interfaces python3Packages.pyyaml std-msgs std-srvs pkg-config example-interfaces trajectory-msgs gazebo-msgs stereo-msgs visualization-msgs ];
  nativeBuildInputs = [ rosidl-cmake ament-cmake python3Packages.catkin-pkg ament-index-python rosidl-parser ];

  meta = {
    description = ''A simple bridge between ROS 1 and ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
