
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-fetch-description";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/fetch_description/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "e9b0b5bac52c230f416305f0cb8ff4cdb5a5567a3df8143795e6fda8e57f78d7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF for Fetch Robot.'';
    license = with lib.licenses; [ cc-by-nc-sa-40 ];
  };
}
