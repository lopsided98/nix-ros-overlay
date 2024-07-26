
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-launch";
  version = "0.21.5-r3";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_launch/0.21.5-3.tar.gz";
    name = "0.21.5-3.tar.gz";
    sha256 = "6b6ddec6ce18090c3104141a1959a1cb2c2d2b34be9416865beb274763658374";
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
