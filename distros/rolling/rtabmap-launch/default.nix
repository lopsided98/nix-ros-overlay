
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-rolling-rtabmap-launch";
  version = "0.23.13-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap_ros-release/archive/release/rolling/rtabmap_launch/0.23.13-2.tar.gz";
    name = "0.23.13-2.tar.gz";
    sha256 = "c6b9a08b163ef69537fc7c3126e006172f9294b5c142bb85eb56fabe1ed67e5c";
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
