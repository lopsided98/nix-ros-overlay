
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-vesc-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/kinetic/vesc_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "69e3b5d1d4128ffcc3fde482ae1c0e17a1b74e2a19b6533905e580fcaf06c3c6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for the Vedder VESC open source motor controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
