
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-cpr-onav-description";
  version = "0.1.5-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_onav_description-release/archive/release/noetic/cpr_onav_description/0.1.5-2.tar.gz";
    name = "0.1.5-2.tar.gz";
    sha256 = "366a5322a28d66f3218bbf3ce47b4fe91c71534081171264d98783c906a257d3";
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
