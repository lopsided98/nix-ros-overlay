
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-mypy, ament-cmake-xmllint, ament-index-python, ament-lint-auto, leo-description, leo-gz-plugins, leo-gz-worlds, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-jazzy-leo-gz-bringup";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/jazzy/leo_gz_bringup/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "2945beeeea0021bec0b210482a2ab31a22801e973572bb9f16937acc45b6a90e";
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
