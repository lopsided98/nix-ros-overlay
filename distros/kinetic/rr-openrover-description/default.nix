
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-description";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_description/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "ebc8e2f9c4e01fcfa4a306539b2ecce5259f23c7f0d7f76f94723c05e01a5878";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_description package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
