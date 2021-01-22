
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-kinetic-dsr-launcher";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/dsr_launcher/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "7c5ec3bcdcc54ba0ef8d37e08118bcf6f07d16b82aa7adcba98218782ceed19c";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''dsr_launcher examples'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
