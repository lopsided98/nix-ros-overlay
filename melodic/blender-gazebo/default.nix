
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-blender-gazebo";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/david0429-gbp/blender_gazebo_gbp/archive/release/melodic/blender_gazebo/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "0dda68ea5dfd6579742c047ffedbeff449bd31f319aa1e47ae263cbac7ac3e1e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The blender_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
