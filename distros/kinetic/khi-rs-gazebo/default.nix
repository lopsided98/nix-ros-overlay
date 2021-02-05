
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-gazebo";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_gazebo/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "ef000ad5cbe4b620a5ba833b0d1755b83561a028ff1bfa35b74909ddcc806f85";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
