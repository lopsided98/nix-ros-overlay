
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arduino, catkin, message-generation, message-runtime, rospy, rosserial-client, rosserial-msgs, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial-arduino";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_arduino/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "46d416adced28af57c50359dc91b2115b3facfea382bd5ec4da291685c565739";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ arduino message-runtime rospy rosserial-client rosserial-msgs rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Arduino/AVR platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
