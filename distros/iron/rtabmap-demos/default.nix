
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-iron-rtabmap-demos";
  version = "0.21.4-r2";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/iron/rtabmap_demos/0.21.4-2.tar.gz";
    name = "0.21.4-2.tar.gz";
    sha256 = "7f5fcdcdc9948a54170dff59af10c485caf6a9571480699e84f270d75106c5f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-bringup rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's demo launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
