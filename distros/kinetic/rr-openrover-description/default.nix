
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-description";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_description/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "70237118a29c25548d7f5427ed5d3ef15521b8088e88397c568fe352c5126f07";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_description package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
