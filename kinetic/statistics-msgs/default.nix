
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-statistics-msgs";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/statistics_msgs/0.13.4-0.tar.gz;
    sha256 = "0593822189fe6b7bae956bac76fad51b843825bee0a0d6a5a6f6b1689db7fa82";
  };

  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin message-generation ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    #license = lib.licenses.BSD;
  };
}
