
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, image-transport, nodelet, rtabmap-conversions, rtabmap-demos, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-legacy";
  version = "0.21.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_legacy/0.21.13-1.tar.gz";
    name = "0.21.13-1.tar.gz";
    sha256 = "b5fb1c01228a87aad709c8254182c4a7beabd01ca23b9e6b1cddd915f8064b80";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure image-transport nodelet rtabmap-conversions rtabmap-demos rtabmap-launch rtabmap-msgs rtabmap-odom rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's legacy launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
