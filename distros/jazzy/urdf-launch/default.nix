
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-urdf-launch";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_launch-release/archive/release/jazzy/urdf_launch/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "fb50803ff7476b91f188e1c95858131f54e624fa3719fc6aad521d8e81f525ac";
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
