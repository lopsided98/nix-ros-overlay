
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arduino, catkin, message-generation, message-runtime, rospy, rosserial-client, rosserial-msgs, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial-arduino";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_arduino/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "27dcf7c8c4c20fe3c6a78d1b77292af9a414a33979ae2a07e2a661b6c61bd8f8";
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
