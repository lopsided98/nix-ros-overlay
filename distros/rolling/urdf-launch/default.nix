
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-urdf-launch";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_launch-release/archive/release/rolling/urdf_launch/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "97d072744df1393760c95d61ca347f1822afad2a6c1d545fbd528c6465661022";
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
