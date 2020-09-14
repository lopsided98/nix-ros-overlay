
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-embeddedlinux";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_embeddedlinux/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "1f01c66a70cbdf17f0ff916c33aaf4cb086198ca9ce11d6ef3ed972e0b7086bc";
  };

  buildType = "catkin";
  buildInputs = [ rosserial-client ];
  propagatedBuildInputs = [ rospy rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for embedded Linux enviroments'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
