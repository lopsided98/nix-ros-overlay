
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-blender-gazebo";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/david0429-gbp/blender_gazebo_gbp/archive/release/kinetic/blender_gazebo/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "a110946d0b213c28bf10c246623a0722da3280892f1e2fe7f3907af7bf11e8ad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The blender_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
