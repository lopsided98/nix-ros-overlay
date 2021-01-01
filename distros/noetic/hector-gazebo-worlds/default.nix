
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, hector-gazebo-plugins }:
buildRosPackage {
  pname = "ros-noetic-hector-gazebo-worlds";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/hector_gazebo_worlds/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "c29dfa36b7741dd9313f96b3d2f34b85721bb9a19c40e536f5f81cd796d30368";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros hector-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_worlds provides gazebo scenarios used by Team Hector Darmstadt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
