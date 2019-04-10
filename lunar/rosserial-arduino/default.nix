
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, arduino, rosserial-msgs, message-generation, message-runtime, rospy, rosserial-client }:
buildRosPackage {
  pname = "ros-lunar-rosserial-arduino";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/lunar/rosserial_arduino/0.7.7-0.tar.gz;
    sha256 = "835f665bbf49915c51a74fae81a649941afaed46ef7b8465a81caf84ed309e51";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ rosserial-client message-runtime rospy arduino rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Arduino/AVR platforms.'';
    #license = lib.licenses.BSD;
  };
}
