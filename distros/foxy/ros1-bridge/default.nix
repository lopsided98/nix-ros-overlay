
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, demo-nodes-cpp, diagnostic-msgs, example-interfaces, gazebo-msgs, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, nav-msgs, pkg-config, python3Packages, rclcpp, rcutils, rmw-implementation-cmake, ros2run, rosidl-cmake, rosidl-parser, sensor-msgs, shape-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-ros1-bridge";
  version = "0.9.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "ros1_bridge-release";
        rev = "release/foxy/ros1_bridge/0.9.6-1";
        sha256 = "sha256-c/C49cUXHPC+bHxPx03pTDcyZ8NDPnc3GdSulDUdA9U=";
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
