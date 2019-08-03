
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, joy, roscpp, nav-msgs, message-generation, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-basic";
  version = "0.7.1-r2";

  src = fetchurl {
    url = https://github.com/RoverRobotics-release/rr_openrover_basic-release/archive/release/kinetic/rr_openrover_basic/0.7.1-2.tar.gz;
    sha256 = "7e0b27673143416a37c325a16482a5435f44608ea94947c0191460a91a2a50af";
  };

  buildInputs = [ tf sensor-msgs nav-msgs message-generation rospy std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ tf sensor-msgs joy nav-msgs message-runtime rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_basic package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
