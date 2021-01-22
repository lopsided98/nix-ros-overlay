
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive-marker, jsk-pcl-ros, pr2eus, roseus-tutorials }:
buildRosPackage {
  pname = "ros-kinetic-pr2eus-tutorials";
  version = "0.3.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus_tutorials/0.3.14-0.tar.gz";
    name = "0.3.14-0.tar.gz";
    sha256 = "867b35b55ec034aff412e7bcdc213d318f21cd27682ccda3ddbb282579c41de0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jsk-interactive-marker jsk-pcl-ros pr2eus roseus-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus_tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
