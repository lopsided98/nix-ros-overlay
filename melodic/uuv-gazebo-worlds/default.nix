
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin }:
buildRosPackage {
  pname = "ros-melodic-uuv-gazebo-worlds";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_gazebo_worlds/0.6.10-0.tar.gz;
    sha256 = "10b68d74ce5c2ceb1abc57e18c55bd18d1558467b45007cd9709f08b85b15ad3";
  };

  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ gazebo-ros catkin ];

  meta = {
    description = ''The uuv_gazebo_worlds package'';
    #license = lib.licenses.Apache-2.0;
  };
}
