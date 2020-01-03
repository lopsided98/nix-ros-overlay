
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-pointgrey-camera-description";
  version = "0.13.4";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/pointgrey_camera_description/0.13.4-0.tar.gz";
    name = "0.13.4-0.tar.gz";
    sha256 = "2ff3a538c01ad77963c50eec9f566ed2079501d5150fad367a9f6f629e338a7e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF descriptions for Point Grey cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
