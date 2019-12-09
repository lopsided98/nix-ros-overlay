
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, demo-nodes-cpp, actionlib-msgs, tf2-msgs, nav-msgs, ament-lint-auto, action-msgs, sensor-msgs, diagnostic-msgs, rcutils, rmw-implementation-cmake, launch-testing, shape-msgs, ament-lint-common, rclcpp, builtin-interfaces, launch-testing-ros, rosidl-cmake, std-msgs, std-srvs, launch-testing-ament-cmake, pkg-config, example-interfaces, trajectory-msgs, ros2run, python3Packages, launch, gazebo-msgs, stereo-msgs, visualization-msgs, ament-index-python, rosidl-parser }:
buildRosPackage {
  pname = "ros-dashing-ros1-bridge";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros1_bridge-release/archive/release/dashing/ros1_bridge/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "50da1aae9709becf1fd1a2db4fe646b9351320dd731fdaae96d103ceb4de6b63";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs actionlib-msgs tf2-msgs nav-msgs action-msgs sensor-msgs diagnostic-msgs rcutils rmw-implementation-cmake shape-msgs builtin-interfaces rclcpp python3Packages.pyyaml std-msgs std-srvs pkg-config example-interfaces trajectory-msgs gazebo-msgs stereo-msgs visualization-msgs ];
  checkInputs = [ launch-testing-ros ros2run diagnostic-msgs launch launch-testing ament-lint-common demo-nodes-cpp launch-testing-ament-cmake ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs actionlib-msgs tf2-msgs nav-msgs action-msgs sensor-msgs diagnostic-msgs rcutils shape-msgs rclcpp builtin-interfaces python3Packages.pyyaml std-msgs std-srvs pkg-config example-interfaces trajectory-msgs gazebo-msgs stereo-msgs visualization-msgs ];
  nativeBuildInputs = [ rosidl-cmake ament-cmake python3Packages.catkin-pkg ament-index-python rosidl-parser ];

  meta = {
    description = ''A simple bridge between ROS 1 and ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
