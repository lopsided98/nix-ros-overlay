
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-urdf-launch";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_launch-release/archive/release/rolling/urdf_launch/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "6f494a3789f4077850ee2ff1b360384985d022edf30390bb0cd000ca65b08ab3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui launch-ros robot-state-publisher rviz-common rviz-default-plugins rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Launch files for common URDF operations";
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
