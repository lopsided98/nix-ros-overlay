
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-fake-controller-manager, moveit-ros-control-interface, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-melodic-moveit-plugins";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_plugins/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "2334af9820618973c3d20bfbe0b38bcb59114733c094b2288c11a21b46ac9a9b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-control-interface moveit-simple-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for MoveIt! plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
