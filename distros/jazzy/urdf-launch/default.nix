
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-urdf-launch";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_launch-release/archive/release/jazzy/urdf_launch/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "3e9c6b4131a231d5c377dd425948c285f830692bfab6dd602bfc662010f2f248";
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
