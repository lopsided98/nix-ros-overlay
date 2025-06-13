
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-demos";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_demos/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "4be7d70a9a2f8ae593b097b794723c438a676ba06aad8511a2f6c87f46743244";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's demo launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
