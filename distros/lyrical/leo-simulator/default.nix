
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, leo-gz-bringup, leo-gz-plugins, leo-gz-worlds }:
buildRosPackage {
  pname = "ros-lyrical-leo-simulator";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/lyrical/leo_simulator/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "87ae97d55d93ef9c299d4228004c004456603399b771f0178e3b30740ab3549e";
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
