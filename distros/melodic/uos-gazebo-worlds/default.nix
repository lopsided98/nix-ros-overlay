
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-uos-gazebo-worlds";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_gazebo_worlds/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "944340682e6216565bf271134cbcdad800f6689f86818a50a92e29f717008833";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo world and model files for UOS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
