
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-iiwa-control";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/iiwa_control/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "632cb06251bac8416d3d7b4ceb3047dbca1eeb26790dc9c9784b83be69ff999e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package containing controllers used by MoveIt! and Gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
