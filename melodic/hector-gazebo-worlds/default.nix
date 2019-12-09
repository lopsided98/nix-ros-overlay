
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-gazebo-plugins, gazebo-ros, catkin }:
buildRosPackage {
  pname = "ros-melodic-hector-gazebo-worlds";
  version = "0.5.1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/melodic/hector_gazebo_worlds/0.5.1-0.tar.gz";
    name = "0.5.1-0.tar.gz";
    sha256 = "71ada41731ad64e3a1815c57a0f4ef98f526afaf0decf58eb26745721a39ce5b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_worlds provides gazebo scenarios used by Team Hector Darmstadt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
