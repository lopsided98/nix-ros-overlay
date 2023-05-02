
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz, turtlebot3 }:
buildRosPackage {
  pname = "ros-humble-rtabmap-demos";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_demos/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "5a2e99a6a63fb2c3c33d28426668efcd6695853bc938a8b2501c11091f7443ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-bringup rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz turtlebot3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's demo launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
