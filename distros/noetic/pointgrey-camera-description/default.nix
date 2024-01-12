
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-pointgrey-camera-description";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/noetic/pointgrey_camera_description/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "021f4da2c001e95309e83fa90edad0200b51fd80df3d886ca573760e8e9c5111";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF descriptions for Point Grey cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
