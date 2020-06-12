
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-py";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_py/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "085338e6ebd735d223880ae9f0dd33f5cd034ff45e56ef59ba1625064d5e1adb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tf2_py package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
