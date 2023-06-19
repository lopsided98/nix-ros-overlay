
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-cpr-onav-description";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_onav_description-release/archive/release/noetic/cpr_onav_description/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "6ae1262faa317d0f8dce5ed0ea757d856f9b1b8db57876f88e04a8c9fdf077f6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lms1xx realsense2-description urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath OutdoorNav URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
