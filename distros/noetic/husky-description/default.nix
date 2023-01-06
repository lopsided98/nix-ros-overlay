
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fath-pivot-mount-description, flir-camera-description, lms1xx, realsense2-description, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-husky-description";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_description/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "733c1173dea098f71749c6619798e6d41479e030431f31953a90a0007f100244";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ fath-pivot-mount-description flir-camera-description lms1xx realsense2-description urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
