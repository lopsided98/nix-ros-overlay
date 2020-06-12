
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rr-openrover-description";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/rr_openrover_description/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "6cc2c409ac518fb0de7888468111770d0f44017e2b52682f25c4f969f504dd03";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_description package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
