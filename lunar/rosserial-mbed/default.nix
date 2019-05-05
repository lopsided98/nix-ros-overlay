
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-msgs, message-generation, message-runtime, rospy, rosserial-client }:
buildRosPackage {
  pname = "ros-lunar-rosserial-mbed";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/lunar/rosserial_mbed/0.7.7-0.tar.gz;
    sha256 = "d5e4ae821240df48c0a4c5ad8169c7ff7084ac5612022ae6ad5f1bdd61aea3c2";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ rospy rosserial-msgs message-runtime rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for mbed platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
