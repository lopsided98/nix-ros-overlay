
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpr-onav-description, fath-pivot-mount-description, flir-camera-description, lms1xx, realsense2-description, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-husky-description";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_description/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "000859677ab9bde8fa5574408acc5114fde3dbc21060bc2b342505182217d865";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ cpr-onav-description fath-pivot-mount-description flir-camera-description lms1xx realsense2-description urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Clearpath Husky URDF description";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
