
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, pointgrey-camera-description, robot-state-publisher, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-jackal-description";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_description/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "250b3be524f51ce0b12dce6cfb4df7c6260f321a2be4bc8f87b47ce84bf53f56";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx pointgrey-camera-description robot-state-publisher urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
