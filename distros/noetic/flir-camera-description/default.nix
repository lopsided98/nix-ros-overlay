
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-flir-camera-description";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/noetic/flir_camera_description/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "43776586e031b4be647bbd1231762d465d1e3643dc722b762f7c16ad1fced2ef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF descriptions for Flir cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
