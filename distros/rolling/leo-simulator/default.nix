
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, leo-gz-bringup, leo-gz-plugins, leo-gz-worlds }:
buildRosPackage {
  pname = "ros-rolling-leo-simulator";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/rolling/leo_simulator/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "eef8eeaa6051c7f6f679e0e7c8ff58bc05c0ac255df218d8cd55ee0b2368ccb3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ leo-gz-bringup leo-gz-plugins leo-gz-worlds ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for Leo Rover Gazebo simulation in ROS2";
    license = with lib.licenses; [ mit ];
  };
}
