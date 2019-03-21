
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2eus, jsk-pcl-ros, roseus-tutorials, catkin, jsk-interactive-marker }:
buildRosPackage {
  pname = "ros-kinetic-pr2eus-tutorials";
  version = "0.3.14";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus_tutorials/0.3.14-0.tar.gz;
    sha256 = "867b35b55ec034aff412e7bcdc213d318f21cd27682ccda3ddbb282579c41de0";
  };

  propagatedBuildInputs = [ pr2eus jsk-pcl-ros jsk-interactive-marker roseus-tutorials ];
  nativeBuildInputs = [ pr2eus catkin jsk-pcl-ros ];

  meta = {
    description = ''pr2eus_tutorials'';
    #license = lib.licenses.BSD;
  };
}
