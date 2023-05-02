
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-humble-rtabmap-launch";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_launch/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "44e0f8387111f20bf9be096ecffa96cd40d651f210b9c79248e89005556fd635";
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
