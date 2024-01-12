
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosdoc-lite }:
buildRosPackage {
  pname = "ros-noetic-jackal-tutorials";
  version = "0.8.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_tutorials/0.8.8-1.tar.gz";
    name = "0.8.8-1.tar.gz";
    sha256 = "d0f92cd2a56f8303d97a5737c462c1590b0ca3ab463e12c72d7b15e1ec1aa523";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Jackal's tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
