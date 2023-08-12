
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-cpr-onav-description";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_onav_description-release/archive/release/noetic/cpr_onav_description/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "21d8ab41c544cc5aa44b3b55541665570a02685ab554530f930d324bc16c86fe";
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
