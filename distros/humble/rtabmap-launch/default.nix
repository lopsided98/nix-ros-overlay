
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-humble-rtabmap-launch";
  version = "0.21.4-r2";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_launch/0.21.4-2.tar.gz";
    name = "0.21.4-2.tar.gz";
    sha256 = "e61e36cc903483ddec4cec3b957f51f9143def0890d4aa4c6cf40f8c8737b4af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rtabmap-msgs rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's main launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
