
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arduino, catkin, message-generation, message-runtime, rospy, rosserial-client, rosserial-msgs, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial-arduino";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_arduino/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "8bb910a45bda782ba13c9badb2652bdf91bbc51cc5d599bc7d1ba92166153d97";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ arduino message-runtime rospy rosserial-client rosserial-msgs rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Arduino/AVR platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
