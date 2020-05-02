
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-moveit-experimental";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_experimental/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "e190eb9b55f5c626a308d5666f0fb668fa4db91ca965eb81f71f71f0b0f257e0";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Experimental packages for MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
