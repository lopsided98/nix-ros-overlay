
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-msgs, message-generation, message-runtime, arduino, rosserial-client, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-arduino";
  version = "0.7.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_arduino/0.7.7-0.tar.gz";
    name = "0.7.7-0.tar.gz";
    sha256 = "d395dc434acca8547bd966ca8428a28bd147333be5f7f3e02b251c5eb1ba1af8";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ rosserial-msgs arduino rosserial-client rospy message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Arduino/AVR platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
