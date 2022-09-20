
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-blender-gazebo";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/david0429-gbp/blender_gazebo_gbp/archive/release/melodic/blender_gazebo/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "ca41a7b8fbb299e647314ea3aefbca8b162617487784140646726df92a8909f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The blender_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
