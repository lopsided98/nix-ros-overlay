
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-msgs, message-generation, message-runtime, rosserial-client, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosserial-mbed";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_mbed/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "b77ce76f551bf7df86c3c333738d6d0778b12de2e7bc656069de475e04345999";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ rosserial-msgs message-runtime rospy rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for mbed platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
