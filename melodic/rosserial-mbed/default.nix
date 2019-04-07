
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-msgs, message-generation, message-runtime, rospy, rosserial-client }:
buildRosPackage {
  pname = "ros-melodic-rosserial-mbed";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_mbed/0.8.0-0.tar.gz;
    sha256 = "b77ce76f551bf7df86c3c333738d6d0778b12de2e7bc656069de475e04345999";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ rospy rosserial-msgs message-runtime rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for mbed platforms.'';
    #license = lib.licenses.BSD;
  };
}
