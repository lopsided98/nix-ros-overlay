
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-blender-gazebo";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/david0429-gbp/blender_gazebo_gbp/archive/release/kinetic/blender_gazebo/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "8108a1e3473ab3955868df7186eb670e389c417409d396ffeaf24c68bffef31d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The blender_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
