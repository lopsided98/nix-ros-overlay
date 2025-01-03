
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, leo-gz-bringup, leo-gz-plugins, leo-gz-worlds }:
buildRosPackage {
  pname = "ros-jazzy-leo-simulator";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/jazzy/leo_simulator/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "82c0ebcab09e7f310d408f99cb4fa005548ad06d798f6191b441e8d07b030f61";
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
