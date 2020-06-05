
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-moveit-experimental";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_experimental/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "3d0a02fde649793e89cff21d629c0ebcb74f864714084bab6bc49895aa39e712";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Experimental packages for MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
