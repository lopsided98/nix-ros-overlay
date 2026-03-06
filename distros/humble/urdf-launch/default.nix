
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-urdf-launch";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_launch-release/archive/release/humble/urdf_launch/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "1322b9258acb15ffc37e4bbbc0df369e8b75d6353ddc5440f43f8939181aa5c1";
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
