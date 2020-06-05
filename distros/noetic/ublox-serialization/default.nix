
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization }:
buildRosPackage {
  pname = "ros-noetic-ublox-serialization";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/noetic/ublox_serialization/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "a133c6b45e255e0ea78a960329bc0dc65874121e2fecd08eddc1e927f21d8a67";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
