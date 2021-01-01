
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial-vex-cortex";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_vex_cortex/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "3468b34c8339af45c03b05a8393b49bf81b3b1e5f4e19ae87f31ab434dbc1ebe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rosserial-client rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Cortex/AVR platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
