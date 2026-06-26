
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-lyrical-rtabmap-demos";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/lyrical/rtabmap_demos/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "e746d08da8f0f534d095a58a2f86ee7f9d1737994cfe149605d792faaee893bc";
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
