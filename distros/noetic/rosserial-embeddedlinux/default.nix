
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-embeddedlinux";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_embeddedlinux/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "8fab7fd62aa5730d3e266c5125be5a09db98716ec3be6204c363088c3ed7be8c";
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
