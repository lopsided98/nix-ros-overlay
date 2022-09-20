
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, rosserial-client, rosserial-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosserial-mbed";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_mbed/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "b77ce76f551bf7df86c3c333738d6d0778b12de2e7bc656069de475e04345999";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rospy rosserial-client rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for mbed platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
