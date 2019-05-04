
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roch-rapps, roch-teleop, catkin, roch-follower, roch-navigation }:
buildRosPackage {
  pname = "ros-kinetic-roch";
  version = "2.0.12";

  src = fetchurl {
    url = https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch/2.0.12-0.tar.gz;
    sha256 = "27b0efbd9bc4f8accc384f653974f4a5b9b401be1fc3b087967c0079023b15de";
  };

  propagatedBuildInputs = [ roch-rapps roch-teleop roch-navigation roch-follower ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roch Project'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
