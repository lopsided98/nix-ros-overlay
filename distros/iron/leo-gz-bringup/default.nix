
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-mypy, ament-cmake-xmllint, ament-index-python, ament-lint-auto, leo-description, leo-gz-plugins, leo-gz-worlds, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-iron-leo-gz-bringup";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/iron/leo_gz_bringup/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "b859dc947e37abb2f63c00274da6532c3d48b8d7fee1143b4cdd9c8d75aaf9e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-black ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-mypy ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python leo-description leo-gz-plugins leo-gz-worlds robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bringup package for Leo Rover Gazebo simulation in ROS 2";
    license = with lib.licenses; [ mit ];
  };
}
