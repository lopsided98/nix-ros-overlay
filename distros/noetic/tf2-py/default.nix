
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-py";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_py/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "5b1b517a996d7b7a993f6c992802ca4a1a3ea178b6e7129df59ebcc490f7fc10";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tf2_py package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
