
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, rosserial-client, rosserial-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-mbed";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_mbed/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "95617f93588caeb0f2858cbb1363cbe6970510040368ecf27ed8e65e25e0a40a";
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
