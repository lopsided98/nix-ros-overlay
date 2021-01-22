
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, rosserial-client, rosserial-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-mbed";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_mbed/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "2a66e27104b82ac52289b841cb4fade83190a88235643811638a8bdff4456214";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rospy rosserial-client rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for mbed platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
