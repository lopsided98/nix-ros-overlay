
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, message-generation, message-runtime, nav-msgs, roscpp, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-basic";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_basic-release/archive/release/kinetic/rr_openrover_basic/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "7e0b27673143416a37c325a16482a5435f44608ea94947c0191460a91a2a50af";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs joy message-runtime nav-msgs roscpp rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_basic package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
