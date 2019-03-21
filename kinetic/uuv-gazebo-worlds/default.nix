
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin }:
buildRosPackage {
  pname = "ros-kinetic-uuv-gazebo-worlds";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_gazebo_worlds/0.6.10-0.tar.gz;
    sha256 = "d573f25e573d5aab341f95c9a3b4e1b476cd8771bc3d4c4d18c9c045e3430a08";
  };

  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ gazebo-ros catkin ];

  meta = {
    description = ''The uuv_gazebo_worlds package'';
    #license = lib.licenses.Apache-2.0;
  };
}
