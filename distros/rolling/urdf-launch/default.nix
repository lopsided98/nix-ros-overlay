
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-urdf-launch";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_launch-release/archive/release/rolling/urdf_launch/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "d5cd40695a25c66105f300004e307d38e95b868057dfddfb0393a602849dcd85";
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
