
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-simple-controller-manager, moveit-fake-controller-manager, catkin, moveit-ros-control-interface }:
buildRosPackage {
  pname = "ros-melodic-moveit-plugins";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_plugins/1.0.1-0.tar.gz;
    sha256 = "9d5026b7d7a2b55bb3e5d959d8722eb75fa260fd5a6689e33e2f550fec3c8b99";
  };

  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-simple-controller-manager moveit-ros-control-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for MoveIt! plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
