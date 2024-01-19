
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-conversions, rtabmap-demos, rtabmap-examples, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-python, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-sync, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-humble-rtabmap-ros";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_ros/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "5620a200f48a19b9281f5237d8ed2acf366f9c26314de006359a8284f21682d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rtabmap-conversions rtabmap-demos rtabmap-examples rtabmap-launch rtabmap-msgs rtabmap-odom rtabmap-python rtabmap-rviz-plugins rtabmap-slam rtabmap-sync rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map Stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
