
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, image-transport, nodelet, rtabmap-conversions, rtabmap-demos, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-legacy";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_legacy/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "dc5b75e9f4dccdfe3f198efd3c2a02b2ec788966bf770ad5a2b6b521285f6750";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure image-transport nodelet rtabmap-conversions rtabmap-demos rtabmap-launch rtabmap-msgs rtabmap-odom rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's legacy launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
