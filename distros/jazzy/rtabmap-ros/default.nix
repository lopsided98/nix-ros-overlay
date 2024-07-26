
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-conversions, rtabmap-demos, rtabmap-examples, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-python, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-sync, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-ros";
  version = "0.21.5-r3";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_ros/0.21.5-3.tar.gz";
    name = "0.21.5-3.tar.gz";
    sha256 = "109c843fbc3422a581130d5c5116d4b442ba19bb8e2bd22ef183f1e47cd0e8ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rtabmap-conversions rtabmap-demos rtabmap-examples rtabmap-launch rtabmap-msgs rtabmap-odom rtabmap-python rtabmap-rviz-plugins rtabmap-slam rtabmap-sync rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map Stack";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
