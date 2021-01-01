
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-gazebo-ros-control }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-plugins";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/noetic/cob_gazebo_plugins/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "84ef489330cd7d586a506e789852683a67d20215c5417d86eb91f3a8d6441463";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_gazebo_plugins meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
