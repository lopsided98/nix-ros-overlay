
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-moveit-experimental";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_experimental/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "ef4bbc171b72dcaf152c7695ee588e443636c85cd2ab2b67bbd2faa05d96a285";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Experimental packages for MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
