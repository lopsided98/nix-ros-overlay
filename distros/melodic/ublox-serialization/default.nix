
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-serialization";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_serialization/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "d2a4284c8f6d7839a3ea99253e1792d035f086265009620e9d4d24f2b4e264e1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
