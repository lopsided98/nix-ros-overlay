
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-msgs, rosserial-client, rospy }:
buildRosPackage {
  pname = "ros-lunar-rosserial-embeddedlinux";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/lunar/rosserial_embeddedlinux/0.7.7-0.tar.gz;
    sha256 = "6afb12dae95c5be2cbbfd7156694dd92f9b22bb778288063278a9262c2148584";
  };

  buildInputs = [ rosserial-client ];
  propagatedBuildInputs = [ rosserial-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for embedded Linux enviroments'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
