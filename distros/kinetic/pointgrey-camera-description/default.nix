
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-pointgrey-camera-description";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/pointgrey_camera_description/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "c155f6b71d1645fd7f01b4fd8c30ee10125b0e59045c9f0a7acb9d8b4cba77f9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF descriptions for Point Grey cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
