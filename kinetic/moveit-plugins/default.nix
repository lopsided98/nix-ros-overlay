
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-simple-controller-manager, moveit-fake-controller-manager, catkin, moveit-ros-control-interface }:
buildRosPackage {
  pname = "ros-kinetic-moveit-plugins";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_plugins/0.9.15-0.tar.gz;
    sha256 = "49c7f8b3c7eca01101edcb376b7dc69ba0a02852fe464310b565895a246dddfe";
  };

  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-simple-controller-manager moveit-ros-control-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for moveit plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
