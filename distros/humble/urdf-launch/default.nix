
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-urdf-launch";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_launch-release/archive/release/humble/urdf_launch/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "22eb4cb5ca1b0c57aa8490b9d0ab88afefab281aa0b9aa22be5d42a13f296a41";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui launch-ros robot-state-publisher rviz-common rviz-default-plugins rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files for common URDF operations'';
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
