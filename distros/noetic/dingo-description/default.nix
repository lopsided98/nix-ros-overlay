
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fath-pivot-mount-description, flir-camera-description, lms1xx, realsense2-description, robot-state-publisher, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-dingo-description";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/noetic/dingo_description/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "5eb3f06f70c0c36101989d3a7d82a5993a636231b7f1bf67a245e31a1915921b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fath-pivot-mount-description flir-camera-description lms1xx realsense2-description robot-state-publisher urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dingo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
