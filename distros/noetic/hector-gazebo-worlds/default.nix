
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, hector-gazebo-plugins }:
buildRosPackage {
  pname = "ros-noetic-hector-gazebo-worlds";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/hector_gazebo_worlds/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "93cc02726ca22b5c9b5f90f4620996c75998c3598b86e3f2b4463dc9f1dfb583";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros hector-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_worlds provides gazebo scenarios used by Team Hector Darmstadt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
