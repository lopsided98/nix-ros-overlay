
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-msgs, message-generation, message-runtime, rospy, rosserial-client }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-mbed";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_mbed/0.7.7-0.tar.gz;
    sha256 = "db94568438120f6953f926941b3a8d8d12da8202bc1a19bcfcbd7fdce4d1686b";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ rospy rosserial-msgs message-runtime rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for mbed platforms.'';
    #license = lib.licenses.BSD;
  };
}
