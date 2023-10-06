
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-cpr-onav-description";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_onav_description-release/archive/release/noetic/cpr_onav_description/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "2a52b9d2e752b30b9c3045faa2f60b1998e2c728b03d24ca7945f0d9d9b80384";
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
