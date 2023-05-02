
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fath-pivot-mount-description, flir-camera-description, lms1xx, realsense2-description, robot-state-publisher, sick-tim, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-dingo-description";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/noetic/dingo_description/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "6c136d4c8ce8b13fa1f31f07b3b9a9f1bd088229c606b1a19712544bea2b166f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fath-pivot-mount-description flir-camera-description lms1xx realsense2-description robot-state-publisher sick-tim urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dingo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
