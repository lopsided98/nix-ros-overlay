
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, actionlib-msgs, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, demo-nodes-cpp, diagnostic-msgs, example-interfaces, gazebo-msgs, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, nav-msgs, pkg-config, python3Packages, rclcpp, rcutils, rmw-implementation-cmake, ros2run, rosidl-cmake, rosidl-parser, sensor-msgs, shape-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-dashing-ros1-bridge";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros1_bridge-release/archive/release/dashing/ros1_bridge/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "2bb2553f2768828f60be5522decd744fbcff17f9abd25b9578c8ea991e2d087f";
  };

  buildType = "ament_cmake";
  buildInputs = [ rmw-implementation-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common demo-nodes-cpp diagnostic-msgs launch launch-testing launch-testing-ament-cmake launch-testing-ros ros2run ];
  propagatedBuildInputs = [ action-msgs actionlib-msgs builtin-interfaces diagnostic-msgs example-interfaces gazebo-msgs geometry-msgs nav-msgs pkg-config python3Packages.pyyaml rclcpp rcutils sensor-msgs shape-msgs std-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-index-python python3Packages.catkin-pkg rosidl-cmake rosidl-parser ];

  meta = {
    description = ''A simple bridge between ROS 1 and ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
