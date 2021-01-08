
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-pointgrey-camera-description";
  version = "0.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/melodic/pointgrey_camera_description/0.14.1-1.tar.gz";
    name = "0.14.1-1.tar.gz";
    sha256 = "2598eda647491180bf86ca9c4ad06da2c600237482b5c817ea0375710377f2a9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF descriptions for Point Grey cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
