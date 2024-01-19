
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-embeddedlinux";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_embeddedlinux/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "9284acfda80db76bf60c1726c9d6b0508b32d227c12ab0d9826eeb5873827072";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosserial-client ];
  propagatedBuildInputs = [ rospy rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for embedded Linux enviroments'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
