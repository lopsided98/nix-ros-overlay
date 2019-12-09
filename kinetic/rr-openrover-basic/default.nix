
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, message-generation, sensor-msgs, geometry-msgs, std-msgs, tf, catkin, rospy, roscpp, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-basic";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_basic-release/archive/release/kinetic/rr_openrover_basic/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "7e0b27673143416a37c325a16482a5435f44608ea94947c0191460a91a2a50af";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs tf rospy roscpp message-generation nav-msgs ];
  propagatedBuildInputs = [ joy sensor-msgs geometry-msgs std-msgs tf rospy roscpp message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_basic package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
