
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, ament-cmake, rmw-implementation-cmake, actionlib-msgs, python3Packages, action-msgs, diagnostic-msgs, demo-nodes-cpp, geometry-msgs, gazebo-msgs, stereo-msgs, launch, pkg-config, example-interfaces, rclcpp, ament-index-python, ros2run, launch-testing-ros, builtin-interfaces, std-srvs, trajectory-msgs, launch-testing-ament-cmake, nav-msgs, rosidl-cmake, rosidl-parser, std-msgs, visualization-msgs, rcutils, shape-msgs, ament-lint-common, launch-testing, sensor-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ros1-bridge";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros1_bridge-release/archive/release/dashing/ros1_bridge/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "0f2cf605f6695a426ebc3e53d8b5b2d3eef1132a55bb5860da6154eb0c6ba8a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2-msgs rmw-implementation-cmake actionlib-msgs action-msgs diagnostic-msgs gazebo-msgs stereo-msgs geometry-msgs pkg-config example-interfaces rclcpp builtin-interfaces std-srvs trajectory-msgs python3Packages.pyyaml nav-msgs std-msgs visualization-msgs rcutils shape-msgs sensor-msgs ];
  checkInputs = [ demo-nodes-cpp ament-lint-common launch-testing launch launch-testing-ament-cmake launch-testing-ros diagnostic-msgs ament-lint-auto ros2run ];
  propagatedBuildInputs = [ tf2-msgs actionlib-msgs action-msgs diagnostic-msgs geometry-msgs gazebo-msgs stereo-msgs pkg-config example-interfaces rclcpp builtin-interfaces std-srvs trajectory-msgs python3Packages.pyyaml nav-msgs std-msgs visualization-msgs rcutils shape-msgs sensor-msgs ];
  nativeBuildInputs = [ python3Packages.catkin-pkg ament-cmake rosidl-cmake rosidl-parser ament-index-python ];

  meta = {
    description = ''A simple bridge between ROS 1 and ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
