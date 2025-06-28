
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-humble-rtabmap-launch";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_launch/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "3aea88eeeaffab158cb387f23f77ead96d255c478f3b9a10e2d9870ea176a9ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rtabmap-msgs rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's main launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
