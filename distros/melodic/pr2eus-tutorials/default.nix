
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive-marker, jsk-pcl-ros, pr2eus, roseus-tutorials }:
buildRosPackage {
  pname = "ros-melodic-pr2eus-tutorials";
  version = "0.3.14-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/melodic/pr2eus_tutorials/0.3.14-3.tar.gz";
    name = "0.3.14-3.tar.gz";
    sha256 = "0c93d0988fc81f1157defca391eb97fa1df1b0534fa85bd524053964f06b30ef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ jsk-interactive-marker jsk-pcl-ros pr2eus roseus-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus_tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
