
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-cpr-onav-description";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_onav_description-release/archive/release/noetic/cpr_onav_description/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "20a9fa74fde7304c2b8a28a94e02f8e7b9ef5fc908b4864901e9a8e5e4f5a0d6";
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
