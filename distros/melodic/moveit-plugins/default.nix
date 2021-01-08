
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-fake-controller-manager, moveit-ros-control-interface, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-melodic-moveit-plugins";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_plugins/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "fde06ea0baf685a3c6e380c01ecd0ee924c36239f7a002c2c642ef1a84b0117f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-control-interface moveit-simple-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for MoveIt! plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
