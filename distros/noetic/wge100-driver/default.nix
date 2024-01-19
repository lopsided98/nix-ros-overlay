
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, wge100-camera, wge100-camera-firmware }:
buildRosPackage {
  pname = "ros-noetic-wge100-driver";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/noetic/wge100_driver/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "d0cbcb4b363ae9f65e3ab5b088d1aad0258046ebd1ec3f910999fc36dc4327ee";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ wge100-camera wge100-camera-firmware ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains the ROS driver and firmware for the WGE100 camera used on the PR2 robot.'';
    license = with lib.licenses; [ "BSD-&-GPL-because-of-list.h-&-other-files-released-under-BSD-&-GPL" ];
  };
}
