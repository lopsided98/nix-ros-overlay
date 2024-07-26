
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-iron-rtabmap-launch";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/iron/rtabmap_launch/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "0b90640f781b910953f76e578bd1a74768ec6b22f82937cec835f8ef09face8a";
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
