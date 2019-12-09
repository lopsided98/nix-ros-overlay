
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-gazebo-plugins, gazebo-ros, catkin }:
buildRosPackage {
  pname = "ros-kinetic-hector-gazebo-worlds";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/kinetic/hector_gazebo_worlds/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "ab16ea6950e1e37b08650a46b9347fdd8b62882b78a8ad044c9eef56347520e6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_worlds provides gazebo scenarios used by Team Hector Darmstadt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
