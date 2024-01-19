
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-urdf-launch";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_launch-release/archive/release/humble/urdf_launch/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "88a118b64b633747b082f0c56120e21c0e38eb40e24548514dd04e7471d0cc71";
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
