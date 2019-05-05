
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-python, catkin, arduino, rosserial-msgs, message-generation, message-runtime, rosserial-client, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosserial-arduino";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_arduino/0.8.0-0.tar.gz;
    sha256 = "dd4574a7017d7e81ffdf3d68f443017a16946a2788c02daa2ba21cf9ca351da6";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ rosserial-python arduino rosserial-msgs message-runtime rospy rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Arduino/AVR platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
