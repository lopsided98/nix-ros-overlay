
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-gazebo-ros-control, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-gazebo-plugins";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/melodic/cob_gazebo_plugins/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "3a73bcd2de6ec60706da22c0f39ade36c2cc02c1cd51f6771b38be9ca7fd3770";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_gazebo_plugins meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
