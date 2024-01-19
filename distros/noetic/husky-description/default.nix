
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpr-onav-description, fath-pivot-mount-description, flir-camera-description, lms1xx, realsense2-description, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-husky-description";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_description/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "a11156cd54fd44a5b2e74b20a0ac5f4dcd0db19b5dd1d57230a9a3684e2a66b1";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ cpr-onav-description fath-pivot-mount-description flir-camera-description lms1xx realsense2-description urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
