
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-launch";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_launch/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "e86e0a198a062dfa47ef8a5ac13490f82ee0425faed9c0feb8b3d8dd525b7fe5";
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
