
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, xacro }:
buildRosPackage {
  pname = "ros-kilted-urdf-launch";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_launch-release/archive/release/kilted/urdf_launch/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "f3eb0cae82b29c4e62019fa80fbda6887a96c336123dae791130a2071bce32dc";
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
