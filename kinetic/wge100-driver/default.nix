
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, wge100-camera-firmware, catkin, wge100-camera }:
buildRosPackage {
  pname = "ros-kinetic-wge100-driver";
  version = "1.8.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/kinetic/wge100_driver/1.8.2-0.tar.gz;
    sha256 = "f56a0ec0d8bf956d5e10f3350da115566e3811b53249af632367f4918e1ba740";
  };

  propagatedBuildInputs = [ wge100-camera-firmware wge100-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains the ROS driver and firmware for the WGE100 camera used on the PR2 robot.'';
    #license = lib.licenses.BSD,GPL because of list.h; other files released under BSD,GPL;
  };
}
