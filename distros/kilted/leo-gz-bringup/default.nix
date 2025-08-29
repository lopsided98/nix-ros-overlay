
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-mypy, ament-cmake-xmllint, ament-index-python, ament-lint-auto, launch, launch-ros, leo-description, leo-gz-plugins, leo-gz-worlds, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-kilted-leo-gz-bringup";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/kilted/leo_gz_bringup/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "e32f8c943ec44d523210c3fa03841be03b74ef15f1b1b0ce7e8a9f91a60ea2a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-black ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-mypy ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros leo-description leo-gz-plugins leo-gz-worlds robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bringup package for Leo Rover Gazebo simulation in ROS 2";
    license = with lib.licenses; [ mit ];
  };
}
