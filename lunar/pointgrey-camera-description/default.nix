
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro, robot-state-publisher }:
buildRosPackage {
  pname = "ros-lunar-pointgrey-camera-description";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/lunar/pointgrey_camera_description/0.13.3-0.tar.gz;
    sha256 = "96396731852eb60ff0b33468e69fafc7069cd31a2f0bf5ccb8c7f648429eef32";
  };

  propagatedBuildInputs = [ urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF descriptions for Point Grey cameras'';
    #license = lib.licenses.BSD;
  };
}
