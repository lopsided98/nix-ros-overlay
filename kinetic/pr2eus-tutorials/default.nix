
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2eus, jsk-pcl-ros, catkin, roseus-tutorials, jsk-interactive-marker }:
buildRosPackage {
  pname = "ros-kinetic-pr2eus-tutorials";
  version = "0.3.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus_tutorials/0.3.14-0.tar.gz";
    name = "0.3.14-0.tar.gz";
    sha256 = "867b35b55ec034aff412e7bcdc213d318f21cd27682ccda3ddbb282579c41de0";
  };

  buildType = "catkin";
  buildInputs = [ jsk-pcl-ros pr2eus ];
  propagatedBuildInputs = [ jsk-pcl-ros pr2eus roseus-tutorials jsk-interactive-marker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus_tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
