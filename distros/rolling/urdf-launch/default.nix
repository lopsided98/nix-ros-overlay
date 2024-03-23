
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-urdf-launch";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_launch-release/archive/release/rolling/urdf_launch/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "3b34ba96008af71348b25a4d94365b0d58e997a44b8374dd50f3a8e7fdb30fc0";
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
