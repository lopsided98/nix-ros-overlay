
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, demo-nodes-cpp, diagnostic-msgs, example-interfaces, gazebo-msgs, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, nav-msgs, pkg-config, python3Packages, rclcpp, rcutils, rmw-implementation-cmake, ros2run, rosidl-cmake, rosidl-parser, sensor-msgs, shape-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-ros1-bridge";
  version = "0.10.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros1_bridge-release/archive/release/galactic/ros1_bridge/0.10.1-2.tar.gz";
    name = "0.10.1-2.tar.gz";
    sha256 = "1191be2650432b5b514a3e6a0c85cfc940c7758303bbab43db592824e0d1b7a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-python python3Packages.catkin-pkg rmw-implementation-cmake rosidl-cmake rosidl-parser ];
  checkInputs = [ ament-lint-auto ament-lint-common demo-nodes-cpp diagnostic-msgs launch launch-testing launch-testing-ament-cmake launch-testing-ros ros2run ];
  propagatedBuildInputs = [ actionlib-msgs builtin-interfaces diagnostic-msgs example-interfaces gazebo-msgs geometry-msgs nav-msgs pkg-config python3Packages.pyyaml rclcpp rcutils sensor-msgs shape-msgs std-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-index-python pkg-config python3Packages.catkin-pkg rosidl-cmake rosidl-parser ];

  meta = {
    description = ''A simple bridge between ROS 1 and ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
