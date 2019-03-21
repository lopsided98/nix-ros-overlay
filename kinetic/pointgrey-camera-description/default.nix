
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-pointgrey-camera-description";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/pointgrey_camera_description/0.13.4-0.tar.gz;
    sha256 = "2ff3a538c01ad77963c50eec9f566ed2079501d5150fad367a9f6f629e338a7e";
  };

  propagatedBuildInputs = [ urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF descriptions for Point Grey cameras'';
    #license = lib.licenses.BSD;
  };
}
